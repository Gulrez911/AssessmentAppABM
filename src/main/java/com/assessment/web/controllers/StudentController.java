
package com.assessment.web.controllers;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.io.File;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.DatatypeConverter;

import org.apache.commons.collections.map.HashedMap;
import org.apache.commons.io.FileUtils;
import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.assessment.common.CompileData;
import com.assessment.common.CompileOutput;
import com.assessment.common.LanguageCodes;
import com.assessment.common.PropertyConfig;
import com.assessment.common.QuestionSequence;
import com.assessment.common.SectionSequence;
import com.assessment.common.util.EmailGenericMessageThread;
import com.assessment.data.FullStackOptions;
import com.assessment.data.Question;
import com.assessment.data.QuestionMapper;
import com.assessment.data.QuestionMapperInstance;
import com.assessment.data.QuestionType;
import com.assessment.data.Section;
import com.assessment.data.SectionInstance;
import com.assessment.data.Test;
import com.assessment.data.UniqueUrl;
import com.assessment.data.User;
import com.assessment.data.UserNonCompliance;
import com.assessment.data.UserTestSession;
import com.assessment.eclipseche.config.response.WorkspaceResponse;
import com.assessment.eclipseche.services.EclipseCheService;
import com.assessment.reports.manager.AssessmentUserPerspectiveData;
import com.assessment.repositories.QuestionMapperInstanceRepository;
import com.assessment.repositories.SectionRepository;
import com.assessment.repositories.UniqueUrlRepository;
import com.assessment.services.CompanyService;
import com.assessment.services.QuestionMapperInstanceService;
import com.assessment.services.QuestionMapperService;
import com.assessment.services.SectionInstanceService;
import com.assessment.services.SectionService;
import com.assessment.services.StudentService;
import com.assessment.services.TestService;
import com.assessment.services.UserNonComplianceService;
import com.assessment.services.UserService;
import com.assessment.services.UserTestSessionService;
import com.assessment.services.impl.CompilerService;
import com.assessment.services.impl.ReportsService;
import com.assessment.web.dto.QuestionInstanceDto;
import com.assessment.web.dto.SectionInstanceDto;
import com.assessment.web.forms.StudentTestForm;

@Controller
public class StudentController {
	@Autowired
	SectionRepository sectionRepository;
	@Autowired
	StudentService studentService;
	@Autowired
	UserService userService;
	@Autowired
	TestService testService;
	@Autowired
	SectionService sectionService;
	@Autowired
	CompanyService companyService;
	@Autowired
	QuestionMapperService questionMapperService;
	@Autowired
	SectionInstanceService sectionInstanceService;
	@Autowired
	QuestionMapperInstanceService questionMapperInstaceService;
	@Autowired
	UserTestSessionService userTestSessionService;
	@Autowired
	PropertyConfig propertyConfig;
	@Autowired
	UserNonComplianceService userNonComplianceService;
	@Autowired
	CompilerService compiler;
	@Autowired
	ReportsService reportsService;
	@Autowired
	UniqueUrlRepository repo;
	@Autowired
	QuestionMapperInstanceRepository questionMapperInstanceRep;

	@RequestMapping(value = { "/startTestSession" }, method = { RequestMethod.GET })
	public ModelAndView studentHome(@RequestParam(required = false) final String sharedDirect,
			@RequestParam(required = false) final String inviteSent, @RequestParam String userId,
			@RequestParam String companyId, @RequestParam String testId, final HttpServletRequest request,
			final HttpServletResponse response, @RequestParam(required = false) final String urlid,
			final HttpSession session2) throws ParseException {
		final StudentTestForm studentTest = new StudentTestForm();
		ModelAndView model = new ModelAndView("intro2");
		UniqueUrl uniqueUrl = new UniqueUrl();
		session2.setAttribute("testId", testId);
		try {
			uniqueUrl = this.repo.findurl(testId, urlid);
			session2.setAttribute("uemail", (Object) uniqueUrl.getEmail());
			session2.setAttribute("utname", (Object) uniqueUrl.getTestName());
			System.out.println("current date:  " + uniqueUrl.getUrlDate());
			System.out.println("testing......" + uniqueUrl);
		} catch (Exception ex) {
		}
		Date currD = new Date();
		final SimpleDateFormat sdfo = new SimpleDateFormat("yyyy-MM-dd");
		final Date d1 = currD = sdfo.parse(sdfo.format(currD));
		System.out.println("current date:  " + currD);
		try {
			if (uniqueUrl.getUrlDate().compareTo(currD) < 0) {
				model.setViewName("expire");
				return model;
			}
		} catch (Exception ex2) {
		}
		userId = this.decodeUserId(request.getParameter("userId"));
		companyId = request.getParameter("companyId");
		final SimpleDateFormat localDateFormat = new SimpleDateFormat("HH:mm:ss");
		final String time = localDateFormat.format(new Date());
		studentTest.setCurrentTime(time);
		final User userDetails = this.userService.findByPrimaryKey(userId, companyId);
		request.getSession().setAttribute("user", (Object) userDetails);
		if (inviteSent != null) {
			final Long timeInvite = Long.valueOf(inviteSent);
			final Date date = new Date(timeInvite);
			studentTest.setTestInviteSent(date);
		}
		if (sharedDirect != null && sharedDirect.equalsIgnoreCase("yes")) {
			studentTest.setSharedDirect(Boolean.valueOf(true));
		}
		if (userDetails != null) {
			studentTest.setUserName(String.valueOf(userDetails.getFirstName()) + " " + userDetails.getLastName());
			studentTest.setEmailId(userDetails.getEmail());
			testId = request.getParameter("testId");
			final Test testDetails = this.testService.findTestById(Long.valueOf(Long.parseLong(testId)), companyId);
			if (testDetails.getTestType() == null) {
				studentTest.setTechLogo("https://yaksha.online/images/Java.png");
			}
			if (testDetails.getTestType().equals("Java")) {
				studentTest.setTechLogo("https://yaksha.online/images/Java.png");
			} else if (testDetails.getTestType().equals("Microsoft technologies")) {
				studentTest.setTechLogo("https://yaksha.online/images/Microsoft.png");
			} else if (testDetails.getTestType().equals("C/C++")) {
				studentTest.setTechLogo("https://yaksha.online/images/C.png");
			} else if (testDetails.getTestType().equals("Python")) {
				studentTest.setTechLogo("https://yaksha.online/images/Python.png");
			} else if (testDetails.getTestType().equals("Python")) {
				studentTest.setTechLogo("https://yaksha.online/images/C.png");
			} else if (testDetails.getTestType().equals("General Knowledge")) {
				studentTest.setTechLogo("https://yaksha.online/images/GK.png");
			} else if (testDetails.getTestType().equals("Composite Test")) {
				studentTest.setTechLogo("https://yaksha.online/images/All_In_1.png");
			} else {
				studentTest.setTechLogo("https://yaksha.online/images/All_In_1.png");
			}
			final User createTestUser = this.userService.findByPrimaryKey(testDetails.getCreatedBy(), companyId);
			studentTest.setTestCreatorName(
					String.valueOf(createTestUser.getFirstName()) + " " + createTestUser.getLastName());
			request.getSession().setAttribute("test", (Object) testDetails);
			studentTest.setTestCreatedBy(testDetails.getCreatedBy());
			if (testDetails.getTotalMarks() == null) {
				model = new ModelAndView("studentMessageTest_WithNoQs");
				model.addObject("studentTestForm", (Object) studentTest);
				return model;
			}
			final int questionsCountInAllSections = testDetails.getTotalMarks();
			int allQuestionsTimeInMin = 0;
			if (testDetails.getTestTimeInMinutes() == null || testDetails.getTestTimeInMinutes() == 0) {
				allQuestionsTimeInMin = 45;
			} else {
				allQuestionsTimeInMin = testDetails.getTestTimeInMinutes();
			}
			studentTest.setCompanyId(companyId);
			studentTest.setEmailId(userDetails.getEmail());
			studentTest.setTestName(testDetails.getTestName());
			studentTest.setTotalQuestions(questionsCountInAllSections);
			studentTest.setDuration(allQuestionsTimeInMin);
			studentTest.setPublishedDate(testDetails.getCreateDate());
			studentTest.setFirstName(userDetails.getFirstName());
			studentTest.setLastName(userDetails.getLastName());
			studentTest.setTestCreatedBy(testDetails.getCreatedBy());
			final String pattern = "dd-MM-yyyy HH:mm:ss";
			final SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
			studentTest.setTestCreationDate(simpleDateFormat.format(testDetails.getCreateDate()));
			final UserTestSession session3 = this.userTestSessionService.findUserTestSession(userDetails.getEmail(),
					testDetails.getTestName(), userDetails.getCompanyId());
			if (session3 != null && session3.getComplete()) {
				studentTest.setLastUpdated(simpleDateFormat
						.format((session3.getUpdateDate() == null) ? session3.getCreateDate()
								: session3.getUpdateDate()));
				studentTest.setNoOfAttempts(session3.getNoOfAttempts());
				model = new ModelAndView("studentNoTest");
				model.addObject("studentTestForm", (Object) studentTest);
				return model;
			}
			if (session3 != null && !session3.getComplete()) {
				studentTest.setNoOfAttempts(session3.getNoOfAttempts());
			}
		}
		model.addObject("studentTestForm", (Object) studentTest);
		request.getSession().setAttribute("studentTestForm", (Object) studentTest);
		model.addObject("userName",
				(Object) (String.valueOf(userDetails.getFirstName()) + " " + userDetails.getLastName()));
		this.putMiscellaneousInfoInModel(model, request);
		return model;
	}

	private void setTimeInCounter(final HttpServletRequest request, final Long timeElapsed) {
		final StudentTestForm studentTest = (StudentTestForm) request.getSession().getAttribute("studentTestForm");
		studentTest.setTotalTestTimeElapsedInSeconds(
				Long.valueOf(studentTest.getTotalTestTimeElapsedInSeconds() + timeElapsed));
	}

	private void putMiscellaneousInfoInModel(final ModelAndView model, final HttpServletRequest request) {
		final StudentTestForm studentTest = (StudentTestForm) request.getSession().getAttribute("studentTestForm");
		model.addObject("studentTestForm", (Object) studentTest);
	}

	@RequestMapping(value = { "/studentJourney" }, method = { RequestMethod.POST })
	public ModelAndView studentStartExam(final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("studentTestForm") final StudentTestForm studentForm) {
		final ModelAndView model = new ModelAndView("test2");
		final User user = (User) request.getSession().getAttribute("user");
		final Test test = (Test) request.getSession().getAttribute("test");
		request.getSession().setAttribute("testStartDate", (Object) new Date());
		final List<Section> sections = (List<Section>) this.sectionService.getSectionsForTest(test.getTestName(),
				test.getCompanyId());
		
		int count = 0;
		final List<SectionInstanceDto> sectionInstanceDtos = new ArrayList<SectionInstanceDto>();
		final int totalQuestions = test.getTotalMarks();
		for (final Section section : sections) {
			final SectionInstanceDto sectionInstanceDto = new SectionInstanceDto();
			sectionInstanceDtos.add(sectionInstanceDto);
			if (count == 0) {
				sectionInstanceDto.setCurrent(Boolean.valueOf(true));
				final List<QuestionMapper> questionMappers = (List<QuestionMapper>) this.questionMapperService
						.getQuestionsForSection(test.getTestName(), section.getSectionName(),
								user.getCompanyId());
				Collections.shuffle(questionMappers);
				final List<QuestionMapper> questionMappersActual = questionMappers.subList(0,
						section.getNoOfQuestionsToBeAsked());
				final List<QuestionInstanceDto> questionMapperInstances = new ArrayList<QuestionInstanceDto>();
				int pos = 0;
				for (QuestionMapper questionMapper : questionMappersActual) {
					// creating the instances of question mapper instance entity
					QuestionInstanceDto questionInstanceDto = new QuestionInstanceDto();
					pos++;
					questionInstanceDto.setPosition(pos);
					QuestionMapperInstance questionMapperInstance = null;
					if (section.getPercentQuestionsAsked() == 100) {
						questionMapperInstance = questionMapperInstanceRep
								.findUniqueQuestionMapperInstanceForUser(
										questionMapper.getQuestion().getQuestionText(),
										test.getTestName(),
										section.getSectionName(),
										user.getEmail(), user.getCompanyId());
					}

					if (questionMapperInstance == null) {
						questionMapperInstance = new QuestionMapperInstance();
					}
					System.out.println("inst:        "+questionMapperInstance.toString());
					questionInstanceDto.setQuestionMapperInstance(questionMapperInstance);

					questionMapperInstance.setQuestionMapper(questionMapper);
					questionMapperInstances.add(questionInstanceDto);
					if (questionMapper.getQuestion().getQuestionType() != null
							&& questionMapper.getQuestion().getQuestionType().getType()
									.equals(QuestionType.CODING.getType())) {
						questionInstanceDto
								.setCode(questionMapper.getQuestion().getInputCode());
					}
				}
				System.out.println("inst2:        "+questionMapperInstances.toString());
				sectionInstanceDto.setFirst(Boolean.valueOf(true));
				sectionInstanceDto.setQuestionInstanceDtos(questionMapperInstances);
				if (sections.size() == 1 && questionMappersActual.size() == 1) {
					sectionInstanceDto.setLast(Boolean.valueOf(true));
				}
				model.addObject("currentSection",  sectionInstanceDto);
				model.addObject("currentQuestion", questionMapperInstances.get(0));
				request.getSession().setAttribute("currentSection",sectionInstanceDto);
			}
			sectionInstanceDto.setNoOfQuestions(section.getNoOfQuestionsToBeAsked());
			sectionInstanceDto.setSection(section);
			++count;
		}
		
		request.getSession().setAttribute("sectionInstanceDtos", (Object) sectionInstanceDtos);
		this.putMiscellaneousInfoInModel(model, request);
		model.addObject("sectionInstanceDtos", (Object) sectionInstanceDtos);
		model.addObject("percentage", (Object) "0");
		model.addObject("totalQuestions", (Object) new StringBuilder().append(totalQuestions).toString());
		model.addObject("noAnswered", (Object) "0");
		return model;
	}

		 
	private ModelAndView processPercentages(final ModelAndView model, final List<SectionInstanceDto> sectionInstanceDtos,
			final int noOfQs) {
		int noOfQuestionsNotAnswered = 0;
		final int noOfQuestions = noOfQs;
		for (final SectionInstanceDto dto : sectionInstanceDtos) {
			if (dto.getQuestionInstanceDtos().size() == 0) {
				noOfQuestionsNotAnswered += dto.getNoOfQuestions();
			}
			for (final QuestionInstanceDto questionInstanceDto : dto.getQuestionInstanceDtos()) {
				if (!questionInstanceDto.getOne() && !questionInstanceDto.getTwo()
						&& !questionInstanceDto.getThree() && !questionInstanceDto.getFour()
						&& !questionInstanceDto.getFive() && !questionInstanceDto.getSix()) {
					++noOfQuestionsNotAnswered;
				}
			}
		}
		final float per = (float) (100 * (noOfQuestions - noOfQuestionsNotAnswered) / noOfQuestions);
		final DecimalFormat df = new DecimalFormat();
		df.setMaximumFractionDigits(2);
		final String percentage = df.format(per);
		model.addObject("percentage", (Object) percentage);
		model.addObject("totalQuestions", (Object) new StringBuilder().append(noOfQuestions).toString());
		model.addObject("noAnswered",
				(Object) new StringBuilder().append(noOfQuestions - noOfQuestionsNotAnswered).toString());
		return model;
	}

	@RequestMapping(value = { "/changeSection" }, method = { RequestMethod.GET })
	public ModelAndView changeSection(@RequestParam final String sectionName, @RequestParam final String timeCounter,
			final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("studentTestForm") final StudentTestForm studentForm) {
		final ModelAndView model = new ModelAndView("test2");
		final User user = (User) request.getSession().getAttribute("user");
		final Test test = (Test) request.getSession().getAttribute("test");
		final List<SectionInstanceDto> sectionInstanceDtos = (List<SectionInstanceDto>) request.getSession()
				.getAttribute("sectionInstanceDtos");
		int count = 0;
		for (SectionInstanceDto sectionInstanceDto : sectionInstanceDtos) {
			++count;
			sectionInstanceDto.setCurrent(Boolean.valueOf(false));
			if (sectionInstanceDto.getSection().getSectionName().equals(sectionName)) {
				if (count == 1) {
					sectionInstanceDto.setFirst(Boolean.valueOf(true));
					sectionInstanceDto.setLast(Boolean.valueOf(false));
				}
				if (count == sectionInstanceDtos.size()) {
					sectionInstanceDto.setFirst(Boolean.valueOf(false));
					sectionInstanceDto.setLast(Boolean.valueOf(false));
				}
				if (count == 1 && sectionInstanceDtos.size() == 1) {
					sectionInstanceDto.setFirst(Boolean.valueOf(true));
					sectionInstanceDto.setLast(Boolean.valueOf(true));
				}
				sectionInstanceDto.setCurrent(Boolean.valueOf(true));
				sectionInstanceDto = this.populateWithQuestions(sectionInstanceDto, test.getTestName(),
						sectionInstanceDto.getSection().getSectionName(), user.getCompanyId());
				model.addObject("currentSection", (Object) sectionInstanceDto);
				final QuestionInstanceDto currentQuestion = sectionInstanceDto.getQuestionInstanceDtos().get(0);
				if (sectionInstanceDto.getQuestionInstanceDtos().size() == 1
						&& count == sectionInstanceDtos.size()) {
					sectionInstanceDto.setLast(Boolean.valueOf(true));
				}
				else {
					sectionInstanceDto.setLast(Boolean.valueOf(false));
				}
				if (currentQuestion.getQuestionMapperInstance().getQuestionMapper().getQuestion()
						.getQuestionType() != null
						&& currentQuestion.getQuestionMapperInstance().getQuestionMapper().getQuestion()
								.getQuestionType().getType().equals(QuestionType.CODING.getType())
						&& (currentQuestion.getCode() == null
								|| currentQuestion.getCode().trim().length() == 0)) {
					currentQuestion.setCode(currentQuestion.getQuestionMapperInstance().getQuestionMapper()
							.getQuestion().getInputCode());
				}
				model.addObject("currentQuestion", sectionInstanceDto.getQuestionInstanceDtos().get(0));
				request.getSession().setAttribute("currentSection", (Object) sectionInstanceDto);
			}
		}
		request.getSession().setAttribute("sectionInstanceDtos", (Object) sectionInstanceDtos);
		model.addObject("sectionInstanceDtos", (Object) sectionInstanceDtos);
		this.putMiscellaneousInfoInModel(model, request);
		this.setTimeInCounter(request, Long.valueOf(timeCounter));
		this.processPercentages(model, sectionInstanceDtos, test.getTotalMarks());
		return model;
	}

	private SectionInstanceDto populateWithQuestions(final SectionInstanceDto sectionInstanceDto, final String testName,
			final String sectionName, final String companyId) {
		if (sectionInstanceDto.getQuestionInstanceDtos().size() > 0) {
			return sectionInstanceDto;
		}
		final List<QuestionMapper> questionMappers = (List<QuestionMapper>) this.questionMapperService
				.getQuestionsForSection(testName, sectionName, companyId);
		Collections.shuffle(questionMappers);
		final List<QuestionMapper> questionMappersActual = questionMappers.subList(0,
				sectionInstanceDto.getNoOfQuestions());
		int pos = 0;
		for (final QuestionMapper questionMapper : questionMappersActual) {
			final QuestionInstanceDto questionInstanceDto = new QuestionInstanceDto();
			++pos;
			questionInstanceDto.setPosition(Integer.valueOf(pos));
			final QuestionMapperInstance questionMapperInstance = new QuestionMapperInstance();
			questionInstanceDto.setQuestionMapperInstance(questionMapperInstance);
			questionMapperInstance.setQuestionMapper(questionMapper);
			sectionInstanceDto.getQuestionInstanceDtos().add(questionInstanceDto);
		}
		return sectionInstanceDto;
	}

	private void setAnswers(final HttpServletRequest request, final SectionInstanceDto currentSection,
			final QuestionInstanceDto currentQuestion, final String questionMapperId) {
		final List<SectionInstanceDto> sectionInstanceDtos = (List<SectionInstanceDto>) request.getSession()
				.getAttribute("sectionInstanceDtos");
		for (final SectionInstanceDto sectionInstanceDto : sectionInstanceDtos) {
			if (sectionInstanceDto.getSection().getSectionName()
					.equals(currentSection.getSection().getSectionName())) {
				for (final QuestionInstanceDto questionInstanceDto : currentSection.getQuestionInstanceDtos()) {
					if (questionInstanceDto.getQuestionMapperInstance().getQuestionMapper().getId()
							.equals(Long.valueOf(questionMapperId))) {
						if (questionInstanceDto.getQuestionMapperInstance().getQuestionMapper()
								.getQuestion().getQuestionType() == null) {
							questionInstanceDto.getQuestionMapperInstance().getQuestionMapper()
									.getQuestion().setQuestionType(QuestionType.MCQ);
						}
						final String type = questionInstanceDto.getQuestionMapperInstance()
								.getQuestionMapper().getQuestion().getQuestionType().getType();
						final Question q = questionInstanceDto.getQuestionMapperInstance()
								.getQuestionMapper().getQuestion();
						if (type != null && type.equals(QuestionType.CODING.getType())) {
							final String lang = LanguageCodes.getLanguageCode(questionInstanceDto
									.getQuestionMapperInstance().getQuestionMapper()
									.getQuestion().getLanguage().getLanguage());
							final CompileData compileData = new CompileData();
							compileData.setLanguage(lang);
							final String code1 = currentQuestion.getCode();
							String code = code1.replace("\\n", "\n").replace("\\t", "\t");
//							String code = code1.replaceAll("\\n", "");
							compileData.setCode(code);
							compileData.setStdin(q.getHiddenInputNegative());
							final CompileOutput op = this.compiler.compile(compileData);
							op.setOutput((op.getOutput() == null) ? op.getOutput()
									: op.getOutput().replaceAll("\n", ""));
							currentQuestion.setOutput(
									(op.getOutput() == null) ? "wrong" : op.getOutput());
							questionInstanceDto.setCode(currentQuestion.getCode());
							questionInstanceDto.setOutput(
									(op.getOutput() == null) ? "wrong" : op.getOutput());
							questionInstanceDto.getQuestionMapperInstance().setCodeByUser(
									currentQuestion.getCode().replaceAll("\r", ""));
							questionInstanceDto.getQuestionMapperInstance()
									.setCodingOuputBySystemTestCase(
											(op.getOutput() == null) ? "wrong"
													: op.getOutput());
							sectionInstanceDto.setQuestionInstanceDtos(
									currentSection.getQuestionInstanceDtos());
							break;
						}
						String userChoices = "";
						if (currentQuestion.getOne()) {
							userChoices = "Choice 1";
							questionInstanceDto.setOne(Boolean.valueOf(true));
						} else {
							questionInstanceDto.setOne(Boolean.valueOf(false));
						}
						if (currentQuestion.getTwo()) {
							if (userChoices.length() > 0) {
								userChoices = String.valueOf(userChoices) + "-Choice 2";
								questionInstanceDto.setTwo(Boolean.valueOf(true));
							} else {
								userChoices = "Choice 2";
								questionInstanceDto.setTwo(Boolean.valueOf(true));
							}
						} else {
							questionInstanceDto.setTwo(Boolean.valueOf(false));
						}
						if (currentQuestion.getThree()) {
							if (userChoices.length() > 0) {
								userChoices = String.valueOf(userChoices) + "-Choice 3";
								questionInstanceDto.setThree(Boolean.valueOf(true));
							} else {
								userChoices = "Choice 3";
								questionInstanceDto.setThree(Boolean.valueOf(true));
							}
						} else {
							questionInstanceDto.setThree(Boolean.valueOf(false));
						}
						if (currentQuestion.getFour()) {
							if (userChoices.length() > 0) {
								userChoices = String.valueOf(userChoices) + "-Choice 4";
								questionInstanceDto.setFour(Boolean.valueOf(true));
							} else {
								userChoices = "Choice 4";
								questionInstanceDto.setFour(Boolean.valueOf(true));
							}
						} else {
							questionInstanceDto.setFour(Boolean.valueOf(false));
						}
						if (currentQuestion.getFive()) {
							if (userChoices.length() > 0) {
								userChoices = String.valueOf(userChoices) + "-Choice 5";
								questionInstanceDto.setFive(Boolean.valueOf(true));
							} else {
								userChoices = "Choice 5";
								questionInstanceDto.setFive(Boolean.valueOf(true));
							}
						} else {
							questionInstanceDto.setFive(Boolean.valueOf(false));
						}
						if (currentQuestion.getSix()) {
							if (userChoices.length() > 0) {
								userChoices = String.valueOf(userChoices) + "-Choice 6";
								questionInstanceDto.setSix(Boolean.valueOf(true));
							} else {
								userChoices = "Choice 6";
								questionInstanceDto.setSix(Boolean.valueOf(true));
							}
						} else {
							questionInstanceDto.setSix(Boolean.valueOf(false));
						}
						questionInstanceDto.getQuestionMapperInstance().setUserChoices(userChoices);
						sectionInstanceDto.setQuestionInstanceDtos(
								currentSection.getQuestionInstanceDtos());
						break;
					}
				}
			}
		}
	}

	private void saveSection(final SectionInstanceDto currentSection, final HttpServletRequest request) {
		final User user = (User) request.getSession().getAttribute("user");
		final Test test = (Test) request.getSession().getAttribute("test");
		final List<SectionInstanceDto> sectionInstanceDtos = (List<SectionInstanceDto>) request.getSession()
				.getAttribute("sectionInstanceDtos");
		for (final SectionInstanceDto sectionInstanceDto : sectionInstanceDtos) {
			final int totalSectionQuestions = sectionInstanceDto.getQuestionInstanceDtos().size();
			int correctAnswersPerSection = 0;
			int noOfQuestionsNotAnswered = 0;
			if (sectionInstanceDto.getSection().getSectionName()
					.equals(currentSection.getSection().getSectionName())) {
				final SectionInstance sectionInstance = new SectionInstance();
				sectionInstance.setCompanyId(user.getCompanyId());
				sectionInstance.setCompanyName(user.getCompanyName());
				sectionInstance.setTestName(test.getTestName());
				sectionInstance.setSectionName(sectionInstanceDto.getSection().getSectionName());
				sectionInstance.setStartTime(Long.valueOf(System.currentTimeMillis()));
				sectionInstance.setEndTime(Long.valueOf(System.currentTimeMillis() + 200000L));
				sectionInstance.setUser(user.getEmail());
				final List<QuestionMapperInstance> questionMapperInstances = new ArrayList<QuestionMapperInstance>();
				for (final QuestionInstanceDto questionInstanceDto : sectionInstanceDto
						.getQuestionInstanceDtos()) {
					questionInstanceDto.getQuestionMapperInstance().getQuestionText();
					questionInstanceDto.getQuestionMapperInstance().setCompanyId(user.getCompanyId());
					questionInstanceDto.getQuestionMapperInstance().setCompanyName(user.getCompanyName());
					questionInstanceDto.getQuestionMapperInstance().setTestName(test.getTestName());
					questionInstanceDto.getQuestionMapperInstance()
							.setSectionName(sectionInstanceDto.getSection().getSectionName());
					questionInstanceDto.getQuestionMapperInstance().setUser(user.getEmail());
					questionMapperInstances.add(questionInstanceDto.getQuestionMapperInstance());
					if (questionInstanceDto.getQuestionMapperInstance().getCorrect()) {
						++correctAnswersPerSection;
					}
					if (!questionInstanceDto.getQuestionMapperInstance().getAnswered()) {
						++noOfQuestionsNotAnswered;
					}
				}
				sectionInstance.setResults(
						"total-" + totalSectionQuestions + ",correct-" + correctAnswersPerSection);
				sectionInstance.setNoOfQuestionsNotAnswered(Integer.valueOf(noOfQuestionsNotAnswered));
				this.sectionInstanceService.saveSection(sectionInstance, (List) questionMapperInstances);
				sectionInstanceDto.setNoOfQuestions(Integer.valueOf(totalSectionQuestions));
				sectionInstanceDto.setTotalCorrectAnswers(Integer.valueOf(correctAnswersPerSection));
				sectionInstanceDto.setNoOfQuestionsNotAnswered(Integer.valueOf(noOfQuestionsNotAnswered));
			}
		}
	}

	private void setValuesInSession(final SectionInstanceDto currentSection,
			final List<SectionInstanceDto> sectionInstanceDtos) {
		for (final SectionInstanceDto dto : sectionInstanceDtos) {
			if (dto.getSection().getSectionName().equals(currentSection.getSection().getSectionName())) {
				final Mapper mapper = (Mapper) new DozerBeanMapper();
				mapper.map((Object) currentSection, (Object) dto);
				break;
			}
		}
	}

	@RequestMapping(value = { "/nextQuestion" }, method = { RequestMethod.POST })
	public ModelAndView nextQuestion(@RequestParam final String questionId, @RequestParam final String timeCounter,
			final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("currentQuestion") QuestionInstanceDto currentQuestion) {
		ModelAndView model = new ModelAndView("test2");
		final User user = (User) request.getSession().getAttribute("user");
		final Test test = (Test) request.getSession().getAttribute("test");
		final List<SectionInstanceDto> sectionInstanceDtos = (List<SectionInstanceDto>) request.getSession()
				.getAttribute("sectionInstanceDtos");
		model.addObject("sectionInstanceDtos", (Object) sectionInstanceDtos);
		final SectionInstanceDto currentSection = (SectionInstanceDto) request.getSession()
				.getAttribute("currentSection");
		if (currentQuestion.getCode() != null) {
			currentQuestion.setCode(currentQuestion.getCode().replaceAll("\r", ""));
			final String rep = "\\\\n";
			final String rept = "\\\\t";
			currentQuestion.setCode(currentQuestion.getCode().replaceAll("\n", rep));
			currentQuestion.setCode(currentQuestion.getCode().replaceAll("\t", rept));
		}
		//currentQuestion.getQuestionMapperInstance().setAnswered(true);
		this.setAnswers(request, currentSection, currentQuestion, questionId);
		QuestionSequence questionSequence = new QuestionSequence(currentSection.getQuestionInstanceDtos());
		final SectionSequence sectionSequence = new SectionSequence((List) sectionInstanceDtos);
		currentQuestion = questionSequence.nextQuestion(Long.valueOf(questionId));
		if (currentQuestion != null) {
			if (this.isQuestionLast(currentQuestion, questionSequence, sectionSequence)) {
				currentSection.setLast(Boolean.valueOf(true));
			} else {
				currentSection.setLast(Boolean.valueOf(false));
			}
			if (this.isQuestionFirst(currentQuestion, questionSequence, sectionSequence)) {
				currentSection.setFirst(Boolean.valueOf(true));
			} else {
				currentSection.setFirst(Boolean.valueOf(false));
			}
			model.addObject("currentSection", (Object) currentSection);
			if (currentQuestion.getCode() == null || currentQuestion.getCode().trim().length() == 0) {
				currentQuestion.setCode(currentQuestion.getQuestionMapperInstance().getQuestionMapper()
						.getQuestion().getInputCode());
			}
			model.addObject("currentQuestion", (Object) currentQuestion);
			request.getSession().setAttribute("currentSection", (Object) currentSection);
			this.putMiscellaneousInfoInModel(model, request);
			this.setTimeInCounter(request, Long.valueOf(timeCounter));
			this.processPercentages(model, sectionInstanceDtos, test.getTotalMarks());
			return model;
		}
		this.saveSection(currentSection, request);
		SectionInstanceDto nextSection = sectionSequence.nextSection(currentSection.getSection().getSectionName());
		if (nextSection != null) {
			nextSection = this.populateWithQuestions(nextSection, test.getTestName(),
					nextSection.getSection().getSectionName(), user.getCompanyId());
			currentQuestion = nextSection.getQuestionInstanceDtos().get(0);
			if (currentQuestion.getCode() == null || currentQuestion.getCode().trim().length() == 0) {
				currentQuestion.setCode(currentQuestion.getQuestionMapperInstance().getQuestionMapper()
						.getQuestion().getInputCode());
			}
			questionSequence = new QuestionSequence(nextSection.getQuestionInstanceDtos());
			if (this.isQuestionLast(currentQuestion, questionSequence, sectionSequence)) {
				nextSection.setLast(Boolean.valueOf(true));
			} else {
				nextSection.setLast(Boolean.valueOf(false));
			}
			if (this.isQuestionFirst(currentQuestion, questionSequence, sectionSequence)) {
				nextSection.setFirst(Boolean.valueOf(true));
			} else {
				nextSection.setFirst(Boolean.valueOf(false));
			}
			model.addObject("currentSection", (Object) nextSection);
			nextSection.setCurrent(Boolean.valueOf(true));
			currentSection.setCurrent(Boolean.valueOf(false));
			model.addObject("currentQuestion", (Object) currentQuestion);
			request.getSession().setAttribute("currentSection", (Object) nextSection);
			this.putMiscellaneousInfoInModel(model, request);
			this.processPercentages(model, sectionInstanceDtos, test.getTotalMarks());
			return model;
		}
		model = new ModelAndView("report");
		this.putMiscellaneousInfoInModel(model, request);
		return model;
	}

	private Boolean isQuestionLast(final QuestionInstanceDto current, final QuestionSequence questionSequence,
			final SectionSequence sectionSequence) {
		if (sectionSequence.nextSection(current.getQuestionMapperInstance().getQuestionMapper().getSectionName()) == null
				&& questionSequence.nextQuestion(
						current.getQuestionMapperInstance().getQuestionMapper().getId()) == null) {
			return true;
		}
		return false;
	}

	private Boolean isQuestionFirst(final QuestionInstanceDto current, final QuestionSequence questionSequence,
			final SectionSequence sectionSequence) {
		if (sectionSequence.prevSection(current.getQuestionMapperInstance().getQuestionMapper().getSectionName()) == null
				&& questionSequence.previousQuestion(
						current.getQuestionMapperInstance().getQuestionMapper().getId()) == null) {
			return true;
		}
		return false;
	}
// Full Stack method

	private void setWorkspaceIDEForFullStackQ(HttpServletRequest request, QuestionInstanceDto currentQuestion)
			throws Exception {
		if (currentQuestion.getQuestionMapperInstance().getQuestionMapper().getQuestion().getFullstack().getStack()
				.equals(FullStackOptions.JAVA_FULLSTACK.getStack())) {

			User user = (User) request.getSession().getAttribute("user");
			String fullName = user.getFirstName() + user.getLastName();
			Test test = (Test) request.getSession().getAttribute("test");
			fullName = fullName.replace(" ", "");
			String secName = currentQuestion.getQuestionMapperInstance().getQuestionMapper().getSectionName();
			QuestionMapperInstance qms = questionMapperInstanceRep.findUniqueQuestionMapperInstanceForUser(
					currentQuestion.getQuestionMapperInstance().getQuestionMapper().getQuestion()
							.getQuestionText(),
					test.getTestName(), secName, user.getEmail(), user.getCompanyId());
			String workspace = "";
			if (qms == null) {
				WorkspaceResponse workspaceResponse = generateWorkspace(currentQuestion, test.getId(),
						currentQuestion.getQuestionMapperInstance().getQuestionMapper().getQuestion()
								.getId(),
						fullName);
				workspace = workspaceResponse.getLinks().getIde();
				qms = currentQuestion.getQuestionMapperInstance();
				qms.setCompanyId(test.getCompanyId());
				qms.setQuestionText(currentQuestion.getQuestionMapperInstance().getQuestionMapper().getQuestion()
						.getQuestionText());
				qms.setTestName(test.getTestName());
				qms.setSectionName(secName);
				qms.setUser(user.getEmail());
				qms.setCreateDate(new Date());
				qms.setCompanyName(test.getCompanyName());
				qms.setWorkspaceUrl(workspace);
				qms.setWorkSpaceId(workspaceResponse.getId());
				questionMapperInstanceRep.save(qms);
			} else {
				if (qms.getWorkspaceUrl() == null || qms.getWorkspaceUrl().trim().length() == 0) {
					// if(stackName.equals("Java")){
					// workspace = generateWorkspace(currentQuestion, test.getId(),
					// currentQuestion.getQuestionMapperInstance().getQuestionMapper().getQuestion().getId(),
					// fullName);
					WorkspaceResponse workspaceResponse = generateWorkspace(currentQuestion, test.getId(),
							currentQuestion.getQuestionMapperInstance().getQuestionMapper()
									.getQuestion().getId(),
							fullName);
					workspace = workspaceResponse.getLinks().getIde();
					// return workspaceResponse.getLinks().getIde();
					qms.setWorkSpaceId(workspaceResponse.getId());
					qms.setWorkspaceUrl(workspace);
					qms.setUpdateDate(new Date());
					questionMapperInstanceRep.save(qms);
					// }
				} else {
					workspace = qms.getWorkspaceUrl();
				}
			}
			currentQuestion.setQuestionMapperInstance(qms);
			currentQuestion.getQuestionMapperInstance().setWorkspaceUrl(workspace);

		}

	}

	private WorkspaceResponse generateWorkspace(QuestionInstanceDto currentQuestion, Long tid, Long qid, String fullName)
			throws Exception {
//		String json = FileUtils.readFileToString(
//		new File("assessment" + File.separator + "eclipseChe2" + File.separator + "Java_FullStack.json"));
//		File file = new File(
//				"D:\\Get Project\\07-05-2019\\AssessmentApp\\assessment\\eclipseChe2\\Java_FullStack.json");
		File file = new File("/opt/kgate/bin/assessment/eclipseChe/Java_FullStack.json");
//		String json = FileUtils.readFileToString(new File("assessment" + File.separator + "eclipseChe"
//				+ File.separator + "Java_FullStack.json"));
		String json = FileUtils.readFileToString(file);
		// String qid =
		// ""+currentQuestion.getQuestionMapperInstance().getQuestionMapper().getQuestion().getId();
		json = json.replace("${APP_USER}", fullName + "-" + tid + "-" + qid + "-" + System.currentTimeMillis());
		// json = json.replace("${APP_USER}", "a01");
		json = json.replace("${APP_DESC}", "Skeleton Code............................Project\n\n\n.........");
		EclipseCheService eclipseCheService = new EclipseCheService();
		WorkspaceResponse workspaceResponse = eclipseCheService.createWorkSpace(json);
		// return workspaceResponse.getLinks().getIde();
		return workspaceResponse;
	}

//	
	@RequestMapping(value = { "/prevQuestion" }, method = { RequestMethod.POST })
	public ModelAndView prevQuestion(@RequestParam final String questionId, @RequestParam final String timeCounter,
			final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("currentQuestion") QuestionInstanceDto currentQuestion) {
		ModelAndView model = new ModelAndView("test2");
		final User user = (User) request.getSession().getAttribute("user");
		final Test test = (Test) request.getSession().getAttribute("test");
		final List<SectionInstanceDto> sectionInstanceDtos = (List<SectionInstanceDto>) request.getSession()
				.getAttribute("sectionInstanceDtos");
		model.addObject("sectionInstanceDtos", (Object) sectionInstanceDtos);
		final SectionInstanceDto currentSection = (SectionInstanceDto) request.getSession()
				.getAttribute("currentSection");
		if (currentQuestion.getCode() != null) {
			currentQuestion.setCode(currentQuestion.getCode().replaceAll("\r", ""));
			final String rep = "\\\\n";
			final String rept = "\\\\t";
			currentQuestion.setCode(currentQuestion.getCode().replaceAll("\n", rep));
			currentQuestion.setCode(currentQuestion.getCode().replaceAll("\t", rept));
		}
		this.setAnswers(request, currentSection, currentQuestion, questionId);
		QuestionSequence questionSequence = new QuestionSequence(currentSection.getQuestionInstanceDtos());
		final SectionSequence sectionSequence = new SectionSequence((List) sectionInstanceDtos);
		currentQuestion = questionSequence.previousQuestion(Long.valueOf(questionId));
		if (currentQuestion != null) {
			model.addObject("currentSection", (Object) currentSection);
			if (currentQuestion.getCode() == null || currentQuestion.getCode().trim().length() == 0) {
				currentQuestion.setCode(currentQuestion.getQuestionMapperInstance().getQuestionMapper()
						.getQuestion().getInputCode());
			}
			model.addObject("currentQuestion", (Object) currentQuestion);
			if (this.isQuestionLast(currentQuestion, questionSequence, sectionSequence)) {
				currentSection.setLast(Boolean.valueOf(true));
			} else {
				currentSection.setLast(Boolean.valueOf(false));
			}
			if (this.isQuestionFirst(currentQuestion, questionSequence, sectionSequence)) {
				currentSection.setFirst(Boolean.valueOf(true));
			} else {
				currentSection.setFirst(Boolean.valueOf(false));
			}
			request.getSession().setAttribute("currentSection", (Object) currentSection);
			this.putMiscellaneousInfoInModel(model, request);
			this.setTimeInCounter(request, Long.valueOf(timeCounter));
			this.processPercentages(model, sectionInstanceDtos, test.getTotalMarks());
			return model;
		}
		SectionInstanceDto previousSection = sectionSequence.prevSection(currentSection.getSection().getSectionName());
		if (previousSection != null) {
			previousSection = this.populateWithQuestions(previousSection, test.getTestName(),
					previousSection.getSection().getSectionName(), user.getCompanyId());
			currentQuestion = previousSection.getQuestionInstanceDtos()
					.get(previousSection.getQuestionInstanceDtos().size() - 1);
			model.addObject("currentSection", (Object) previousSection);
			previousSection.setCurrent(Boolean.valueOf(true));
			currentSection.setCurrent(Boolean.valueOf(false));
			questionSequence = new QuestionSequence(previousSection.getQuestionInstanceDtos());
			if (this.isQuestionLast(currentQuestion, questionSequence, sectionSequence)) {
				previousSection.setLast(Boolean.valueOf(true));
			} else {
				previousSection.setLast(Boolean.valueOf(false));
			}
			if (this.isQuestionFirst(currentQuestion, questionSequence, sectionSequence)) {
				previousSection.setFirst(Boolean.valueOf(true));
			} else {
				previousSection.setFirst(Boolean.valueOf(false));
			}
			if (currentQuestion.getCode() == null || currentQuestion.getCode().trim().length() == 0) {
				currentQuestion.setCode(currentQuestion.getQuestionMapperInstance().getQuestionMapper()
						.getQuestion().getInputCode());
			}
			model.addObject("currentQuestion", (Object) currentQuestion);
			request.getSession().setAttribute("currentSection", (Object) previousSection);
			this.putMiscellaneousInfoInModel(model, request);
			this.processPercentages(model, sectionInstanceDtos, test.getTotalMarks());
			return model;
		}
		model = new ModelAndView("intro");
		this.putMiscellaneousInfoInModel(model, request);
		return model;
	}

	//added by Vaishnavi
	@RequestMapping(value = { "/submDetails" }, method = { RequestMethod.GET })
	@ResponseBody
	public Map<String , Map<String,List<Integer>>> submDetails(final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("currentQuestion") QuestionInstanceDto currentQuestion ,@RequestParam String questionMapperId) {
		
		Map<String ,  Map<String,List<Integer>>> hm_allsectionDet = new LinkedHashMap<String , Map<String,List<Integer>>>();
		/* Return type:
		 * HashMap: 
		 * key: sectionname: String
		 * value: HashMap<String , List<Integer>:
		 * 			key: "answered"/"unanswered": String
		 * 			value: List<Integer>: List of question numbers answered and unanswered
		 **/
		 
		SectionInstanceDto curreSection = (SectionInstanceDto) request.getSession().getAttribute("currentSection");
		//currentQuestion.getQuestionMapperInstance().setAnswered(true);
			
		setAnswers(request, curreSection, currentQuestion, questionMapperId);
		this.saveSection(curreSection, request);
		
		final User user = (User) request.getSession().getAttribute("user");
		final Test test = (Test) request.getSession().getAttribute("test");
		List<SectionInstanceDto> sectionInstanceDtos = (List) request.getSession().getAttribute("sectionInstanceDtos");
		List<Section> ordSecList = sectionRepository.getSectionsForTest(test.getTestName(), user.getCompanyId());
		
	
		for(SectionInstanceDto sectDto : sectionInstanceDtos ) {
				
			List<QuestionInstanceDto> list_qdto = sectDto.getQuestionInstanceDtos();
			QuestionSequence qseq = new QuestionSequence(list_qdto);
			
			int seq_no=0;
			System.out.println("TestDemo");
			String currSecName = sectDto.getSection().getSectionName();
			int allSecCountQues = sectDto.getNoOfQuestions();
			
			List<Integer> answeredSeqNo = new ArrayList<Integer>();
			List<Integer> unAnsweredSeqNo = new ArrayList<Integer>();
			LinkedHashMap< String , List<Integer> > hm_ans = new LinkedHashMap<String,List<Integer>>();
			
			for(QuestionInstanceDto qdto: list_qdto ) {
				
				seq_no = qseq.getSequenceNo(qdto.getQuestionMapperInstance().getQuestionMapper().getId());
				
				if(qdto.getQuestionMapperInstance().getAnswered())
				{
//					unAnsweredSeqNo.remove(unAnsweredSeqNo.size()-1);
					answeredSeqNo.add(seq_no);
					System.out.println("Questions number answered:"+seq_no);
				}
				else
				{
					unAnsweredSeqNo.add(seq_no);
					System.out.println("Question number Unanswered:"+seq_no);
				}
				
			}
			System.out.println();
			
			if(answeredSeqNo.size()==0 && unAnsweredSeqNo.size()==0  ) {
				for(int i=1 ; i<=allSecCountQues ; i++) {
					unAnsweredSeqNo.add(i);
				}
			}
			
			hm_ans.put("answered", answeredSeqNo );
			hm_ans.put("unanswered" , unAnsweredSeqNo );
			
			hm_allsectionDet.put(currSecName , hm_ans);
		}

		return hm_allsectionDet;
	}
	//addition end
	
	@RequestMapping(value = { "redirect" }, method = { RequestMethod.POST })
	public ModelAndView redirect(@RequestParam  String sectionName, @RequestParam String question_seq,@RequestParam String timeCounter ,
			final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("currentQuestion") QuestionInstanceDto currentQuestion) {
		ModelAndView model = new ModelAndView("test2");
		
		User u = (User) request.getSession().getAttribute("user");
		Test test = (Test) request.getSession().getAttribute("test");
		List<SectionInstanceDto> sectionInstanceDtos = (List)request.getSession().getAttribute("sectionInstanceDtos");
		SectionInstanceDto cursec = (SectionInstanceDto)request.getSession().getAttribute("currentSection");
		model.addObject("sectionInstanceDtos", (Object) sectionInstanceDtos);	
		
		SectionInstanceDto requiredSecDto = null;
		for(SectionInstanceDto secDto : sectionInstanceDtos) {
			if(secDto.getSection().getSectionName().equals(sectionName)) {
				requiredSecDto = secDto;
				break;
			}
		}
		
		if(requiredSecDto != null)
		{
			requiredSecDto = this.populateWithQuestions(requiredSecDto, test.getTestName(),
				requiredSecDto.getSection().getSectionName(), u.getCompanyId());
			
		}
		
		List<QuestionInstanceDto> list_questDto = requiredSecDto.getQuestionInstanceDtos();
		
		currentQuestion = list_questDto.get(Integer.parseInt(question_seq)-1);
		if (currentQuestion.getCode() == null || currentQuestion.getCode().trim().length() == 0) {
			currentQuestion.setCode(currentQuestion.getQuestionMapperInstance().getQuestionMapper()
					.getQuestion().getInputCode());
		}
		
		final SectionSequence sectionSequence = new SectionSequence((List) sectionInstanceDtos);
		QuestionSequence questionSequence;
		questionSequence = new QuestionSequence(requiredSecDto.getQuestionInstanceDtos());
		if (this.isQuestionLast(currentQuestion, questionSequence, sectionSequence)) {
			requiredSecDto.setLast(Boolean.valueOf(true));
		} else {
			requiredSecDto.setLast(Boolean.valueOf(false));
		}
		if (this.isQuestionFirst(currentQuestion, questionSequence, sectionSequence)) {
			requiredSecDto.setFirst(Boolean.valueOf(true));
		} else {
			requiredSecDto.setFirst(Boolean.valueOf(false));
		}
		
		model.addObject("currentSection",(Object)requiredSecDto);
		model.addObject("currentQuestion",(Object)currentQuestion);
		cursec.setCurrent(Boolean.valueOf(false));
		requiredSecDto.setCurrent(Boolean.valueOf(true));
		request.getSession().setAttribute("currentSection",(Object)requiredSecDto);
		this.putMiscellaneousInfoInModel(model, request);
		this.setTimeInCounter(request, Long.valueOf(timeCounter));
		this.processPercentages(model, sectionInstanceDtos, test.getTotalMarks());
		return model;
	}

	
	
	@RequestMapping(value = { "/submitTest" }, method = { RequestMethod.POST })
	public ModelAndView submitTest(@RequestParam final String questionId, @RequestParam final String timeCounter,
			final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("currentQuestion") final QuestionInstanceDto currentQuestion) {
		ModelAndView model = new ModelAndView("test");
		final User user = (User) request.getSession().getAttribute("user");
		final Test test = (Test) request.getSession().getAttribute("test");
		final List<SectionInstanceDto> sectionInstanceDtos = (List<SectionInstanceDto>) request.getSession()
				.getAttribute("sectionInstanceDtos");
		model.addObject("sectionInstanceDtos", (Object) sectionInstanceDtos);
		final SectionInstanceDto currentSection = (SectionInstanceDto) request.getSession()
				.getAttribute("currentSection");
		this.setAnswers(request, currentSection, currentQuestion, questionId);
		for (final SectionInstanceDto sectionInstanceDto : sectionInstanceDtos) {
			this.saveSection(sectionInstanceDto, request);
		}
		UserTestSession userTestSession = new UserTestSession();
		userTestSession.setCompanyId(user.getCompanyId());
		userTestSession.setCompanyName(user.getCompanyName());
		userTestSession.setUser(user.getEmail());
		userTestSession.setTest(test);
		userTestSession.setTestName(test.getTestName());
		userTestSession.setComplete(Boolean.valueOf(true));
		final DecimalFormat df = new DecimalFormat("##.##");
		final String sectionsQuestionsNotAnswered = "";
		for (final SectionInstanceDto sectionInstanceDto2 : sectionInstanceDtos) {
			userTestSession.setSectionResults(String.valueOf(
					(userTestSession.getSectionResults() == null) ? "" : userTestSession.getSectionResults())
					+ ", " + sectionInstanceDto2.getSection().getSectionName() + "-"
					+ df.format(new Float(sectionInstanceDto2.getTotalCorrectAnswers())
							/ new Float(sectionInstanceDto2.getNoOfQuestions()) * 100.0f));
			userTestSession.setSectionsNoOfQuestionsNotAnswered(String
					.valueOf((userTestSession.getSectionsNoOfQuestionsNotAnswered() == null) ? ""
							: userTestSession.getSectionsNoOfQuestionsNotAnswered())
					+ ", " + sectionInstanceDto2.getSection().getSectionName() + "-"
					+ sectionInstanceDto2.getNoOfQuestionsNotAnswered());
		}
		if (userTestSession.getSectionResults().startsWith(",")) {
			userTestSession.setSectionResults(userTestSession.getSectionResults().replaceFirst(",", ""));
		}
		if (userTestSession.getSectionsNoOfQuestionsNotAnswered() != null
				&& userTestSession.getSectionsNoOfQuestionsNotAnswered().startsWith(",")) {
			userTestSession.setSectionsNoOfQuestionsNotAnswered(
					userTestSession.getSectionsNoOfQuestionsNotAnswered().replaceFirst(",", ""));
		}
		final StudentTestForm studentTestForm = (StudentTestForm) request.getSession().getAttribute("studentTestForm");
		userTestSession.setTestInviteSent(studentTestForm.getTestInviteSent());
		userTestSession.setSharedDirect(studentTestForm.getSharedDirect());
		final Date createDate = (Date) request.getSession().getAttribute("testStartDate");
		userTestSession.setCreateDate(createDate);
		userTestSession.setUpdateDate(new Date());
		userTestSession = this.userTestSessionService.saveOrUpdate(userTestSession);
		studentTestForm.setNoOfAttempts(userTestSession.getNoOfAttempts());
		model = new ModelAndView("redirect:/Done");
		this.putMiscellaneousInfoInModel(model, request);
		this.setTimeInCounter(request, Long.valueOf(timeCounter));
		try {
			this.sendResultsEmail(request, userTestSession);
		} catch (Exception e) {
			e.printStackTrace();
			final String message = "Results can not be sent for " + user.getEmail() + " for test "
					+ test.getTestName();
			final EmailGenericMessageThread client = new EmailGenericMessageThread(
					"jatin.sutaria@thev2technologies.com", "Can not send Test link email", message,
					this.propertyConfig);
			final Thread th = new Thread((Runnable) client);
			th.start();
		}
		return model;
	}
	
	
	@GetMapping({ "/Done" })
	public String Done(final Model model, final RedirectAttributes attributes, final HttpServletRequest request) {
		final StudentTestForm studentTestForm = (StudentTestForm) request.getSession().getAttribute("studentTestForm");
		model.addAttribute("studentTestForm", (Object) studentTestForm);
		return "studentTestCompletion";
	}

	private String decodeUserId(final String encodedUri) {
		final String decoded = new String(DatatypeConverter.parseBase64Binary(encodedUri));
		System.out.println("user id is " + decoded);
		return decoded;
	}

	private String sendResultsEmail(final HttpServletRequest request, final UserTestSession userTestSession)
			throws Exception {
		final String table = "<tr style=\"border-collapse:collapse;border: 1px solid black\">\r\n    <td align=\"center\" style=\"border: 1px solid black\"> {SECTION_NAME}</td>\r\n\t\t\t\t\t\t<td align=\"center\" style=\"border: 1px solid black\"> {SECTION_PERCENT}</td>\r\n\t\t\t\t\t\t<td align=\"center\" style=\"border: 1px solid black\"> {Right_Answered}</td>\r\n\t\t\t\t\t\t<td align=\"center\" style=\"border: 1px solid black\"> {Wrong_Answered}</td>\r\n\t\t\t\t\t\t<td align=\"center\" style=\"border: 1px solid black\"> {Skipped}</td>\r\n  </tr>";
		final String loction = this.propertyConfig.getResultLinkHtmlLocation();
		String html = FileUtils.readFileToString(new File(loction));
		final User user = (User) request.getSession().getAttribute("user");
		final Test test = (Test) request.getSession().getAttribute("test");
		html = html.replace("{FIRST_NAME}", user.getFirstName());
		html = html.replace("{LAST_NAME}", user.getLastName());
		html = html.replace("{TEST_NAME}", test.getTestName());
		html = html.replace("{TOTAL_QUESTIONS}", new StringBuilder().append(userTestSession.getTotalMarks()).toString());
		html = html.replace("{TOTAL_MARKS}",
				new StringBuilder().append(userTestSession.getTotalMarksRecieved()).toString());
		html = html.replace("{PASS_PERCENTAGE}", new StringBuilder().append(test.getPassPercent()).toString());
		html = html.replace("{RESULT_PERCENTAGE} ",
				new StringBuilder().append(userTestSession.getPercentageMarksRecieved()).toString());
		html = html.replace("{STATUS} ",
				(test.getPassPercent() > userTestSession.getPercentageMarksRecieved()) ? "Fail" : "Success");
		String rows = "";
		final List<SectionInstanceDto> sectionInstanceDtos = (List<SectionInstanceDto>) request.getSession()
				.getAttribute("sectionInstanceDtos");
		final DecimalFormat df = new DecimalFormat("##.##");
		for (final SectionInstanceDto sectionInstanceDto : sectionInstanceDtos) {
			String record = table;
			record = record.replace("{SECTION_NAME}", sectionInstanceDto.getSection().getSectionName());
			record = record.replace("{SECTION_PERCENT}",
					df.format(new Float(sectionInstanceDto.getTotalCorrectAnswers())
							/ new Float(sectionInstanceDto.getNoOfQuestions()) * 100.0f));
			final Integer result = sectionInstanceDto.getNoOfQuestions()
					- sectionInstanceDto.getTotalCorrectAnswers();
			final Integer result2 = result - sectionInstanceDto.getNoOfQuestionsNotAnswered();
			record = record.replace("{Right_Answered}", sectionInstanceDto.getTotalCorrectAnswers().toString());
			record = record.replace("{Wrong_Answered}", result2.toString());
			record = record.replace("{Skipped}", sectionInstanceDto.getNoOfQuestionsNotAnswered().toString());
			rows = String.valueOf(rows) + record;
		}
		html = html.replace("{ROWS}", rows);
		UserNonCompliance nonCompliance = null;
		nonCompliance = this.userNonComplianceService.findNonCompliance(userTestSession.getUser(),
				userTestSession.getTestName(), userTestSession.getCompanyId());
		html = html.replace("{NO_OF_NONCOMPLIANCES}",
				"<b>(" + ((nonCompliance == null) ? 0 : nonCompliance.getNoOfNonCompliances()) + ")</b>");
		html = html.replace("{NO_OF_NONCOMPLIANCES}",
				"<b>(" + ((nonCompliance == null) ? 0 : nonCompliance.getNoOfNonCompliances()) + ")</b>");
		String utname = null;
		String uemail = null;
		String testId = (String) request.getSession().getAttribute("testId");
		System.out.println("\ntestId: " + testId);
		try {
			uemail = (String) request.getSession().getAttribute("uemail");
			System.out.println("test email:::: " + uemail);
			utname = (String) request.getSession().getAttribute("utname");
			System.out.println("test name:::: " + utname);
		} catch (Exception ex) {
		}
//		final UserTestSession uTs = this.userTestSessionService.findTestByEmail(user.getEmail(), utname);
//		final String testName = uTs.getTestName();
		UserTestSession uTs2 = userTestSessionService.findTestByEmail(user.getEmail(), testId);
		String testName = uTs2.getTestName();
		System.out.println("\ntestName: " + testName);
		final AssessmentUserPerspectiveData assessData = new AssessmentUserPerspectiveData();
		assessData.setUrlForUserSession(String.valueOf(this.propertyConfig.getBaseUrl())
				+ "downloadUserSessionReportsForTest?testName=" + testName + "&companyId=" + user.getCompanyId()
				+ "&email=" + URLEncoder.encode(user.getEmail(), "UTF-8"));
		html = html.replace("{test_link}", assessData.getUrlForUserSession());
		System.out.println("ssssssssssssssssssender>>>>>>>>>>>>>>>111111111111111:    " + test.getSentToStudent());
		System.out.println("urlllll" + assessData.getUrlForUserSession());
		System.out.println("5555555555555555555555555555555555555 tets name " + testName);
		if (test.getTestName().equals("General_Technology_Comprehensive")
				|| test.getTestName().equals("Java_Technology_Behaviour_Experienced")
				|| test.getTestName().equals("Java_Technology_Behaviour_Freshers")) {
			System.out.println("11111111111111111111111111");
			final String file = this.reportsService.generatedetailedReportForCompositeTest(user.getCompanyId(),
					test.getTestName(), user.getEmail());
			final EmailGenericMessageThread client = new EmailGenericMessageThread(test.getCreatedBy(),
					"Test Results for " + user.getFirstName() + " " + user.getLastName() + " for test- "
							+ test.getTestName(),
					html, user.getEmail(), this.propertyConfig, file, String.valueOf(user.getFirstName())
							+ " " + user.getLastName() + "-" + test.getTestName());
			final Thread th = new Thread((Runnable) client);
			System.out.println("ssssssssssssssssssender>>>>>>>>>>>>>>>22222222222222   " + test.getSentToStudent());
			th.start();
		} else if (test.getTestName().equals(utname)) {
			if (test.getSentToStudent()) {
				String email = "";
				if (user.getEmail().lastIndexOf("[") > 0) {
					email = user.getEmail().substring(0, user.getEmail().lastIndexOf("["));
				} else {
					email = user.getEmail();
				}
				System.out.println("11111111111111111111111111111111111111111111111111111111");
				System.out.println(
						"sender email..........................................................................."
								+ uemail);
				final String[] cc = { uemail };
				final EmailGenericMessageThread client2 = new EmailGenericMessageThread(test.getCreatedBy(),
						"Test Results for " + user.getFirstName() + " " + user.getLastName()
								+ " for test- " + test.getTestName(),
						html, email, propertyConfig);
				client2.setCcArray(cc);
				final Thread th2 = new Thread((Runnable) client2);
				System.out.println("ssssssssssssssssssender>>>>>>>>>>>>>>>3333333333333333333  "
						+ test.getSentToStudent());
				th2.start();
			} else {
				System.out.println(
						"sender email................else..........................................................."
								+ uemail);
				final String[] cc = { uemail };
				EmailGenericMessageThread client = new EmailGenericMessageThread(
						test.getCreatedBy(), "Test Results for " + user.getFirstName() + " "
								+ user.getLastName() + " for test- " + test.getTestName(),
						html, propertyConfig);
				client.setCcArray(cc);
				System.out.println("ssssssssssssssssssender>>>>>>>>>>>>>>>55555555555555555555 ");
				Thread th = new Thread(client);
				th.start();
			}
		}

//		else if (test.getTestName().equals(utname)) {
//			final String file = this.reportsService.generatedetailedReportForCompositeTest(
//					user.getCompanyId(), test.getTestName(), user.getEmail());
//			String email = "";
//			if (user.getEmail().lastIndexOf("[") > 0) {
//				email = user.getEmail().substring(0, user.getEmail().lastIndexOf("["));
//			} else {
//				email = user.getEmail();
//			}
//			System.out.println("11111111111111111111111111111111111111111111111111111111");
//			System.out.println(
//					"sender email..........................................................................."
//							+ uemail);
//			final String[] cc = { uemail };
//			final EmailGenericMessageThread client2 = new EmailGenericMessageThread(test.getCreatedBy(),
//					"Test Results for " + user.getFirstName() + " " + user.getLastName()
//							+ " for test- " + test.getTestName(),
//					html, email, this.propertyConfig, file, String.valueOf(user.getFirstName())
//							+ " " + user.getLastName() + "-" + test.getTestName());
//			client2.setCcArray(cc);
//			final Thread th2 = new Thread((Runnable) client2);
//			System.out.println("ssssssssssssssssssender>>>>>>>>>>>>>>>3333333333333333333  "
//					+ test.getSentToStudent());
//			th2.start();
//		} 
		else if (test.getTestName().equalsIgnoreCase("Java Developer Infrasoft Intermediate 1.0")) {
			System.out.println("2222222222222222222222");
			final String file = this.reportsService.generatedetailedReportForCompositeTest(user.getCompanyId(),
					test.getTestName(), user.getEmail());
			String email = "";
			if (user.getEmail().lastIndexOf("[") > 0) {
				email = user.getEmail().substring(0, user.getEmail().lastIndexOf("["));
			} else {
				email = user.getEmail();
			}
			final String[] cc = { "akansha.gupta@infrasofttech.com", email };
			final EmailGenericMessageThread client2 = new EmailGenericMessageThread(test.getCreatedBy(),
					"Test Results for " + user.getFirstName() + " " + user.getLastName() + " for test- "
							+ test.getTestName(),
					html, email, this.propertyConfig, file, String.valueOf(user.getFirstName()) + " "
							+ user.getLastName() + "-" + test.getTestName());
			client2.setCcArray(cc);
			final Thread th2 = new Thread((Runnable) client2);
			th2.start();
		} else if (test.getTestName().equalsIgnoreCase("Manual Testing")) {
			final String file = this.reportsService.generatedetailedReportForCompositeTest(user.getCompanyId(),
					test.getTestName(), user.getEmail());
			String email = "";
			if (user.getEmail().lastIndexOf("[") > 0) {
				email = user.getEmail().substring(0, user.getEmail().lastIndexOf("["));
			} else {
				email = user.getEmail();
			}
			final String[] cc = { "abbas.meghani@gmail.com", email };
			final EmailGenericMessageThread client2 = new EmailGenericMessageThread(test.getCreatedBy(),
					"Test Results for " + user.getFirstName() + " " + user.getLastName() + " for test- "
							+ test.getTestName(),
					html, user.getEmail(), this.propertyConfig, file, String.valueOf(user.getFirstName())
							+ " " + user.getLastName() + "-" + test.getTestName());
			client2.setCcArray(cc);
			final Thread th2 = new Thread((Runnable) client2);
			th2.start();
		} else if (test.getTestName().equalsIgnoreCase("Java_Test_With_Recomm_Support")) {
			final String file = this.reportsService.generatedetailedReportForCompositeTest(user.getCompanyId(),
					test.getTestName(), user.getEmail());
			String email = "";
			if (user.getEmail().lastIndexOf("[") > 0) {
				email = user.getEmail().substring(0, user.getEmail().lastIndexOf("["));
			} else {
				email = user.getEmail();
			}
			final String[] cc = { "sreeram.gopal@iiht.com", email };
			final EmailGenericMessageThread client2 = new EmailGenericMessageThread(test.getCreatedBy(),
					"Test Results for " + user.getFirstName() + " " + user.getLastName() + " for test- "
							+ test.getTestName(),
					html, user.getEmail(), this.propertyConfig, file, String.valueOf(user.getFirstName())
							+ " " + user.getLastName() + "-" + test.getTestName());
			client2.setCcArray(cc);
			final Thread th2 = new Thread((Runnable) client2);
			th2.start();
		} else if (test.getTestName().equalsIgnoreCase("Chenova_Exp_MicrosoftTech_Test")
				|| test.getTestName().equalsIgnoreCase("Chenova_Exp_JavaTech_Test")) {
			final String file = this.reportsService.generatedetailedReportForCompositeTest(user.getCompanyId(),
					test.getTestName(), user.getEmail());
			String email = "";
			if (user.getEmail().lastIndexOf("[") > 0) {
				email = user.getEmail().substring(0, user.getEmail().lastIndexOf("["));
			} else {
				email = user.getEmail();
			}
			final String[] cc = { "VKotian@chenoainc.com", email };
			final EmailGenericMessageThread client2 = new EmailGenericMessageThread(test.getCreatedBy(),
					"Test Results for " + user.getFirstName() + " " + user.getLastName() + " for test- "
							+ test.getTestName(),
					html, this.propertyConfig);
			client2.setCcArray(cc);
			final Thread th2 = new Thread((Runnable) client2);
			th2.start();
		} else if (test.getSentToStudent()) {
			String email2 = "";
			if (user.getEmail().lastIndexOf("[") > 0) {
				email2 = user.getEmail().substring(0, user.getEmail().lastIndexOf("["));
			} else {
				email2 = user.getEmail();
			}
			final String[] cc2 = { email2 };
			final EmailGenericMessageThread client3 = new EmailGenericMessageThread(test.getCreatedBy(),
					"Test Results for " + user.getFirstName() + " " + user.getLastName() + " for test- "
							+ test.getTestName(),
					html, this.propertyConfig);
			client3.setCcArray(cc2);
			final Thread th3 = new Thread((Runnable) client3);
			System.out.println("ssssssssssssssssssender>>>>>>>>>>>>>>>4444444444444444444444");
			th3.start();
		}
//		else {
//			System.out.println("*************************");
//			final EmailGenericMessageThread client4 = new EmailGenericMessageThread(test.getCreatedBy(),
//					"Test Results for " + user.getFirstName() + " " + user.getLastName()
//							+ " for test- " + test.getTestName(),
//					html, this.propertyConfig);
//			final Thread th4 = new Thread((Runnable) client4);
//			System.out.println("ssssssssssssssssssender>>>>>>>>>>>>>>>55555555555555555555 "+client4.getCcArray());
//			th4.start();
//		}

		else {
			EmailGenericMessageThread client = new EmailGenericMessageThread(test.getCreatedBy(), "Test Results for "
					+ user.getFirstName() + " " + user.getLastName() + " for test- " + test.getTestName(),
					html, propertyConfig);

			Thread th = new Thread(client);
			System.out.println("ssssssssssssssssssender>>>>>>>>>>>>>>>55555555555555555555 ");
			th.start();
		}
		return rows;
	}
}