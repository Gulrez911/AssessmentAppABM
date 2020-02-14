package com.assessment.web.controllers;

import java.io.File;
import java.io.FileInputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.common.PropertyConfig;
import com.assessment.common.Qualifiers;
import com.assessment.data.QuestionMapperInstance;
import com.assessment.data.Test;
import com.assessment.data.User;
import com.assessment.data.UserTestSession;
import com.assessment.reports.manager.AssessmentReportDataManager;
import com.assessment.reports.manager.AssessmentReportsManager;
import com.assessment.reports.manager.AssessmentTestPerspectiveData;
import com.assessment.reports.manager.AssessmentUserPerspectiveData;
import com.assessment.repositories.QuestionMapperInstanceRepository;
import com.assessment.repositories.QuestionRepository;
import com.assessment.repositories.TestRepository;
import com.assessment.repositories.UserNonComplianceRepository;
import com.assessment.repositories.UserTestSessionRepository;
import com.assessment.services.QuestionMapperInstanceService;
import com.assessment.services.SectionService;
import com.assessment.services.UserService;
import com.assessment.services.impl.ReportsService;
import com.assessment.web.dto.TestAnswerData;
import com.assessment.web.dto.UserBySkillDTO;

@Controller
public class ReportsController {
	Logger logger = LoggerFactory.getLogger(ReportsController.class);

	@Autowired
	UserTestSessionRepository userTestSessionRepository;

	@Autowired
	UserService userService;

	@Autowired
	SectionService sectionService;

	@Autowired
	AssessmentReportsManager reportManager;
	@Autowired
	QuestionMapperInstanceRepository rep;
	@Autowired
	PropertyConfig propertyConfig;
	@Autowired
	QuestionMapperInstanceService questionMapperInstanceService;
	@Autowired
	QuestionRepository questionRepository;
	@Autowired
	UserNonComplianceRepository userNonComplianceRepo;
	@Autowired
	TestRepository testrepo;
	@Autowired
	ReportsService reportsService;
	@Autowired
	UserTestSessionRepository userTestRepo;

	public ReportsController() {
	}

	@GetMapping("/fetchEmail")
	public @ResponseBody Map<String, Object> fetchEmail(final HttpServletRequest request,
			@RequestParam("testN") String testName) {
		Map<String, Object> map = new HashMap<>();
		User user = (User) request.getSession().getAttribute("user");
		System.out.println("TestName: " + testName + " User: " + user.getCompanyId());
		List<UserTestSession> listRepo = userTestRepo.findUserSessionsForTest(testName,
				user.getCompanyId());
		System.out.println("size: " + listRepo.size());
		List<String> list = new ArrayList<>();
		for (UserTestSession test : listRepo) {
			list.add(test.getUser());
		}
		map.put("listEmail", list);
		map.put("data", "Login and Password Send to email address");
		return map;
	}

	@RequestMapping(value = { "/downloadUserReportPdf" }, method = RequestMethod.GET)
	public ResponseEntity<byte[]> downloadUserReportPdf(final HttpServletRequest request,
			@RequestParam("testName") String testName, @RequestParam("userEmail") String userEmail)
			throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		User usr = userService.findByPrimaryKey(userEmail, user.getCompanyId());
		String file = this.reportsService.generatedetailedReportForCompositeTest(user.getCompanyId(),
				testName, userEmail);

		byte data[] = FileUtils.readFileToByteArray(new File(file));

		System.out.println("Calling Download:- " + file);
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_PDF);
		// Here you have to set the actual filename of your pdf
		String filename = usr.getFirstName() + " " + testName + ".pdf";
		headers.setContentDispositionFormData(filename, filename);
		headers.setCacheControl("must-revalidate, post-check=0, pre-check=0");
		ResponseEntity<byte[]> response = new ResponseEntity<>(data, headers, HttpStatus.OK);
		return response;
	}

	@RequestMapping(value = { "/showReports" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public ModelAndView showReports(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("reports2");
		User user = (User) request.getSession().getAttribute("user");
		AssessmentReportDataManager assessmentReportDataManager = new AssessmentReportDataManager(
				userTestSessionRepository, sectionService, userService, user.getCompanyId(),
				user.getFirstName() + " " + user.getLastName());
		Collection<AssessmentTestPerspectiveData> data = assessmentReportDataManager
				.getTestPerspectiveData();
		mav.addObject("testsessions", data);
		mav.addObject("reportType", "Tests & Users Assessment Reports");
//		
		List<Test> listTest = testrepo.findByCompanyId(user.getCompanyId());
		List<Test> li = new ArrayList<>();
		for (Test test : listTest) {
			Test te = new Test();
			te.setTestName(test.getTestName());
			li.add(te);
		}
		mav.addObject("test", new Test());
		mav.addObject("listTest", li);
//
		return mav;
	}

	@RequestMapping(value = { "/showReport" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public ModelAndView showReport(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("report");

		return mav;
	}

	@RequestMapping(value = { "/downloadUserSessionReportsForTest" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public ResponseEntity<InputStreamResource> downloadUserSessionReportsForTest(@RequestParam String testName,
			@RequestParam String companyId, @RequestParam String email, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			System.out.println("test");
			User user = userService.findByPrimaryKey(email, companyId);
			System.out.println("2222222222222222222222");
			List<QuestionMapperInstance> instances = rep.findQuestionMapperInstancesForUserForTest(
					testName, email, companyId);
			System.out.println("1111111111111111");
			List<TestAnswerData> testAnswerDatas = new ArrayList();
			for (QuestionMapperInstance instance : instances) {
				TestAnswerData answerData = new TestAnswerData();
				answerData.setFirstName(user.getFirstName());
				answerData.setLastName(user.getLastName());
				answerData.setEmail(email);
				answerData.setTestName(testName);
				answerData.setProblem(instance.getQuestionMapper().getQuestion()
						.getQuestionText());
				answerData.setQuestionCategory(instance.getQuestionMapper().getQuestion()
						.getQuestionCategory());
				answerData.setChoice1(instance.getQuestionMapper().getQuestion()
						.getChoice1());
				answerData.setChoice2(instance.getQuestionMapper().getQuestion()
						.getChoice2());
				answerData.setChoice3(instance.getQuestionMapper().getQuestion()
						.getChoice3());
				answerData.setChoice4(instance.getQuestionMapper().getQuestion()
						.getChoice4());
				answerData.setChoice5(instance.getQuestionMapper().getQuestion()
						.getChoice5());
				answerData.setChoice6(instance.getQuestionMapper().getQuestion()
						.getChoice6());
				answerData.setCorrectChoice(instance.getQuestionMapper().getQuestion()
						.getRightChoices());
				answerData.setUserChoice(instance.getUserChoices());
				answerData.setCorrect(instance.getCorrect().booleanValue() ? "Yes" : "No");
				answerData.setUserProgram(instance.getCodeByUser());
				testAnswerDatas.add(answerData);
			}
			System.out.println("3333333333333333");
			String fileName = reportManager.generateUserSessionReport(testAnswerDatas,
					user.getFirstName() + " " + user.getLastName(), testName);
			System.out.println("444444444444444444444");
			File file = new File(fileName);
			HttpHeaders respHeaders = new HttpHeaders();
			MediaType mediaType = MediaType.parseMediaType("application/vnd.ms-excel");
			respHeaders.setContentType(mediaType);
			respHeaders.setContentLength(file.length());
			respHeaders.setContentDispositionFormData("attachment", file.getName());
			InputStreamResource isr = new InputStreamResource(new FileInputStream(file));
			return new ResponseEntity(isr, respHeaders, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("error in downloadUserSessionReportsForTest", e);
		}
		return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@RequestMapping(value = { "/downloadUserReportsForTestWithExtraAttrs" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public ResponseEntity<InputStreamResource> downloadUserReportsForTestWithExtraAttrs(
			@RequestParam String testName, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			String companyId = user.getCompanyId();
			String fileName = reportManager.generateUserSessionsReportForTest(testName, companyId);
			File file = new File(fileName);
			HttpHeaders respHeaders = new HttpHeaders();
			MediaType mediaType = MediaType.parseMediaType("application/vnd.ms-excel");
			respHeaders.setContentType(mediaType);
			respHeaders.setContentLength(file.length());
			respHeaders.setContentDispositionFormData("attachment", file.getName());
			InputStreamResource isr = new InputStreamResource(new FileInputStream(file));
			return new ResponseEntity(isr, respHeaders, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("error in downloadUserReportsForTestWithExtraAttrs", e);
		}
		return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@RequestMapping(value = { "/downloadUserReportsForTest" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public ResponseEntity<InputStreamResource> downloadUserReportsForTest(@RequestParam String testName,
			HttpServletRequest request, HttpServletResponse response) {
		long start = 0L;
		long end = 0L;
		start = System.currentTimeMillis();
		try {
			User user = (User) request.getSession().getAttribute("user");
			AssessmentReportDataManager assessmentReportDataManager = new AssessmentReportDataManager(
					userTestSessionRepository, sectionService, userService,
					userNonComplianceRepo, user.getCompanyId(),
					user.getFirstName() + " " + user.getLastName());
			List<AssessmentUserPerspectiveData> collection = assessmentReportDataManager
					.getUserPerspectiveData();
			List<AssessmentUserPerspectiveData> collectionForTest = new ArrayList();
			for (AssessmentUserPerspectiveData data : collection) {
				if (data.getTestName().equals(testName)) {
					data.setCompanyId(user.getCompanyId());
					data.setUrlForUserSession(propertyConfig.getBaseUrl()
							+ "downloadUserSessionReportsForTest?testName="
							+ testName + "&companyId="
							+ user.getCompanyId() + "&email="
							+ data.getEmail());
					collectionForTest.add(data);
				}
			}
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			String date = formatter.format(new Date());
			String fileName = reportManager.generateUserPerspectiveReport(collectionForTest,
					user.getFirstName() + " " + user.getLastName(), date);
			File file = new File(fileName);
			HttpHeaders respHeaders = new HttpHeaders();
			MediaType mediaType = MediaType.parseMediaType("application/pdf");
			respHeaders.setContentType(mediaType);
			respHeaders.setContentLength(file.length());
			respHeaders.setContentDispositionFormData("attachment", file.getName());
			InputStreamResource isr = new InputStreamResource(new FileInputStream(file));
			end = System.currentTimeMillis();
			System.out.println("ReportsController.downloadUserReportsForTest() has taken "
					+ (end - start) + " ms to complete the execution");
			return new ResponseEntity(isr, respHeaders, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("error in downloadUserReportsForTest", e);
		}
		return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@RequestMapping(value = { "/downloadUserReport" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public ResponseEntity<InputStreamResource> downloadUserReport(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			AssessmentReportDataManager assessmentReportDataManager = new AssessmentReportDataManager(
					userTestSessionRepository, sectionService, userService,
					userNonComplianceRepo, user.getCompanyId(),
					user.getFirstName() + " " + user.getLastName());
			List<AssessmentUserPerspectiveData> collection = assessmentReportDataManager
					.getUserPerspectiveData();
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			String date = formatter.format(new Date());
			String fileName = reportManager.generateUserPerspectiveReport(collection,
					user.getFirstName() + " " + user.getLastName(), date);
			File file = new File(fileName);
			HttpHeaders respHeaders = new HttpHeaders();
			MediaType mediaType = MediaType.parseMediaType("application/pdf");
			respHeaders.setContentType(mediaType);
			respHeaders.setContentLength(file.length());
			respHeaders.setContentDispositionFormData("attachment", file.getName());
			InputStreamResource isr = new InputStreamResource(new FileInputStream(file));
			return new ResponseEntity(isr, respHeaders, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("error in downloadUserReport", e);
		}
		return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@RequestMapping(value = { "/downloadTestReport" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public ResponseEntity<InputStreamResource> downloadTestReport(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			AssessmentReportDataManager assessmentReportDataManager = new AssessmentReportDataManager(
					userTestSessionRepository, sectionService, userService,
					userNonComplianceRepo, user.getCompanyId(),
					user.getFirstName() + " " + user.getLastName());
			Collection<AssessmentTestPerspectiveData> collection = assessmentReportDataManager
					.getTestPerspectiveData();
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			String date = formatter.format(new Date());
			String fileName = reportManager.generateTestPerspectiveReport(collection,
					user.getFirstName() + " " + user.getLastName(), date);
			File file = new File(fileName);
			HttpHeaders respHeaders = new HttpHeaders();
			MediaType mediaType = MediaType.parseMediaType("application/pdf");
			respHeaders.setContentType(mediaType);
			respHeaders.setContentLength(file.length());
			respHeaders.setContentDispositionFormData("attachment", file.getName());
			InputStreamResource isr = new InputStreamResource(new FileInputStream(file));
			return new ResponseEntity(isr, respHeaders, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("error in downloadTestReport", e);
		}
		return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@RequestMapping(value = { "/showSkillTags" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public ModelAndView showSkillTags(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		ModelAndView mav = new ModelAndView("skill_reports2");
		Set<Qualifiers> qs = questionRepository.getAllUniqueQualifiers(user.getCompanyId());
		mav.addObject("skills", qs);
		return mav;
	}

	@RequestMapping(value = { "/downloadUserReportsForSkill" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public ResponseEntity<InputStreamResource> downloadUserReportsForSkill(@RequestParam String skillName,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			List<QuestionMapperInstance> instances = questionMapperInstanceService
					.getInstancesOR(skillName, user.getCompanyId());
			Map<String, List<QuestionMapperInstance>> user_answers_map = new HashMap();

			for (QuestionMapperInstance instance : instances) {
				if (user_answers_map.get(instance.getUser()) == null) {
					List<QuestionMapperInstance> userAnswers = new ArrayList();
					userAnswers.add(instance);
					user_answers_map.put(instance.getUser(), userAnswers);
				} else {
					((List) user_answers_map.get(instance.getUser())).add(instance);
				}
			}
			List<UserBySkillDTO> dtos = new ArrayList();
			for (String email : user_answers_map.keySet()) {
				List<QuestionMapperInstance> ins = (List) user_answers_map.get(email);
				int correct = 0;
				Set<String> testNames = new java.util.HashSet();
				for (QuestionMapperInstance instance : ins) {
					testNames.add(instance.getTestName());
					if (instance.getCorrect().booleanValue()) {
						correct++;
					}
					testNames.add(instance.getTestName());
				}
				Float per = Float.valueOf(100 * correct / ins.size());
				UserBySkillDTO userBySkillDTO = new UserBySkillDTO();
				userBySkillDTO.setEmail(email);
				User usr = userService.findByPrimaryKey(email, user.getCompanyId());
				userBySkillDTO.setFirstName(usr.getFirstName());
				userBySkillDTO.setLastName(usr.getLastName());
				String percent = String.format("%.02f", new Object[] { per });
				userBySkillDTO.setScoreInPercentage(percent);
				String tests = StringUtils.join(testNames, ",");
				userBySkillDTO.setTests(tests);
				userBySkillDTO.setNoOfQuestionsAttempted(Integer.valueOf(ins.size()));
				userBySkillDTO.setCompanyId(user.getCompanyId());
				userBySkillDTO.setSkill(skillName);
				dtos.add(userBySkillDTO);
			}

			String fileName = reportManager.generateUsersBySkillReport(dtos, skillName);
			File file = new File(fileName);
			HttpHeaders respHeaders = new HttpHeaders();
			MediaType mediaType = MediaType.parseMediaType("application/pdf");
			respHeaders.setContentType(mediaType);
			respHeaders.setContentLength(file.length());
			respHeaders.setContentDispositionFormData("attachment", file.getName());
			InputStreamResource isr = new InputStreamResource(new FileInputStream(file));
			return new ResponseEntity(isr, respHeaders, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("error in downloadUserReportsForSkill", e);
		}
		return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
	}

	@GetMapping({ "/viewTestResult" })
	public ModelAndView viewTestResult(@RequestParam String testName, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("testResult");
		User user = (User) request.getSession().getAttribute("user");
		AssessmentReportDataManager assessmentReportDataManager = new AssessmentReportDataManager(
				userTestSessionRepository, sectionService, userService, user.getCompanyId(),
				user.getFirstName() + " " + user.getLastName());
		List<AssessmentUserPerspectiveData> collection = assessmentReportDataManager
				.getUserPerspectiveData();
		System.out.println(">>>>>>>>>>>" + collection);
		List<AssessmentUserPerspectiveData> collectionForTest = new ArrayList();
		for (AssessmentUserPerspectiveData data : collection) {
			if (data.getTestName().equals(testName)) {
				data.setCompanyId(user.getCompanyId());
				data.setUrlForUserSession(propertyConfig.getBaseUrl()
						+ "downloadUserSessionReportsForTest?testName="
						+ testName + "&companyId=" + user.getCompanyId()
						+ "&email=" + data.getEmail());
				System.out.println("date:::::" + data.toString());
				collectionForTest.add(data);
				System.out.println("collection:::::" + collectionForTest.toString());
			}
		}
		System.out.println("2222222222222222>>>>>>" + assessmentReportDataManager);
		return mav;
	}

	@RequestMapping(value = { "/downloadReportFilters" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public ResponseEntity<InputStreamResource> downloadReportsFilters(@RequestParam String testName,
			@RequestParam String result, @RequestParam Date startDate, @RequestParam Date endDate,@RequestParam Integer min,@RequestParam Integer max,
			@RequestParam String userName, HttpServletRequest request,
			HttpServletResponse response) {
		long start = 0L;
		long end = 0L;
		start = System.currentTimeMillis();
		try {
			User user = (User) request.getSession().getAttribute("user");
			AssessmentReportDataManager assessmentReportDataManager = new AssessmentReportDataManager(
					userTestSessionRepository, sectionService, userService,
					userNonComplianceRepo, user.getCompanyId(),
					user.getFirstName() + " " + user.getLastName());
			List<AssessmentUserPerspectiveData> collection = assessmentReportDataManager
					.getUserPerspectiveData();
			List<AssessmentUserPerspectiveData> collectionForTest = new ArrayList();
			SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss");
			Date date1 = sdf.parse("01-12-2019 00:00:00");
			Date date2 = sdf.parse("31-12-2019 00:00:00");
			Calendar c = Calendar.getInstance();
			c.setTime(date2);
			c.add(Calendar.DATE, 1);
			date2 = c.getTime();

			for (AssessmentUserPerspectiveData data : collection) {
				String testDateString2 = data.getTestStartDate();
				DateFormat df2 = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
				Date d2 = df2.parse(testDateString2);
//				String sDate1 = data.getTestStartDate();
//				Date testStartDate = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss")
//						.parse(sDate1);

				boolean b = Boolean.parseBoolean(result);
				if (startDate.compareTo(d2) <= 0 && endDate.compareTo(d2) >= 0) {

					if (testName.equals("ALL")) {
						if (userName.equals("ALL")) {
							if (result.equals("ALL")) {
								if (min < data.getOverAllScore()
										&& data.getOverAllScore() < max) {
									data.setCompanyId(user.getCompanyId());
									data.setUrlForUserSession(
											propertyConfig.getBaseUrl()
													+ "downloadUserSessionReportsForTest?testName="
													+ testName
													+ "&companyId="
													+ user.getCompanyId()
													+ "&email="
													+ data.getEmail());
									collectionForTest.add(data);
								}
							} else if (data.getPass()&&b) {
								if (min < data.getOverAllScore()
										&& data.getOverAllScore() < max) {
									data.setCompanyId(user.getCompanyId());
									data.setUrlForUserSession(
											propertyConfig.getBaseUrl()
													+ "downloadUserSessionReportsForTest?testName="
													+ testName
													+ "&companyId="
													+ user.getCompanyId()
													+ "&email="
													+ data.getEmail());
									collectionForTest.add(data);
								}
							} else {
								if (min < data.getOverAllScore()
										&& data.getOverAllScore() < max) {
									data.setCompanyId(user.getCompanyId());
									data.setUrlForUserSession(
											propertyConfig.getBaseUrl()
													+ "downloadUserSessionReportsForTest?testName="
													+ testName
													+ "&companyId="
													+ user.getCompanyId()
													+ "&email="
													+ data.getEmail());
									collectionForTest.add(data);

								}

							}
						} else if (data.getEmail().equals(userName)) {
							if (result.equals("ALL")) {
								if (min < data.getOverAllScore()
										&& data.getOverAllScore() < max) {
									data.setCompanyId(user.getCompanyId());
									data.setUrlForUserSession(
											propertyConfig.getBaseUrl()
													+ "downloadUserSessionReportsForTest?testName="
													+ testName
													+ "&companyId="
													+ user.getCompanyId()
													+ "&email="
													+ data.getEmail());
									collectionForTest.add(data);
								}
							} else if (data.getPass().equals(b)) {
								if (min < data.getOverAllScore()
										&& data.getOverAllScore() < max) {
									data.setCompanyId(user.getCompanyId());
									data.setUrlForUserSession(
											propertyConfig.getBaseUrl()
													+ "downloadUserSessionReportsForTest?testName="
													+ testName
													+ "&companyId="
													+ user.getCompanyId()
													+ "&email="
													+ data.getEmail());
									collectionForTest.add(data);
								}
							} else {
								if (min < data.getOverAllScore()
										&& data.getOverAllScore() < max) {
									data.setCompanyId(user.getCompanyId());
									data.setUrlForUserSession(
											propertyConfig.getBaseUrl()
													+ "downloadUserSessionReportsForTest?testName="
													+ testName
													+ "&companyId="
													+ user.getCompanyId()
													+ "&email="
													+ data.getEmail());
									collectionForTest.add(data);

								}

							}
						}
					} else if (data.getTestName().equals(testName)) {
						if (userName.equals("ALL")) {
							if (result.equals("ALL")) {
								if (min < data.getOverAllScore()
										&& data.getOverAllScore() < max) {
									data.setCompanyId(user.getCompanyId());
									data.setUrlForUserSession(
											propertyConfig.getBaseUrl()
													+ "downloadUserSessionReportsForTest?testName="
													+ testName
													+ "&companyId="
													+ user.getCompanyId()
													+ "&email="
													+ data.getEmail());
									collectionForTest.add(data);
								}
							} else if (data.getPass().equals(b)) {
								if (min < data.getOverAllScore()
										&& data.getOverAllScore() < max) {
									data.setCompanyId(user.getCompanyId());
									data.setUrlForUserSession(
											propertyConfig.getBaseUrl()
													+ "downloadUserSessionReportsForTest?testName="
													+ testName
													+ "&companyId="
													+ user.getCompanyId()
													+ "&email="
													+ data.getEmail());
									collectionForTest.add(data);
								}
							} else {
								if (min < data.getOverAllScore()
										&& data.getOverAllScore() < max) {
									data.setCompanyId(user.getCompanyId());
									data.setUrlForUserSession(
											propertyConfig.getBaseUrl()
													+ "downloadUserSessionReportsForTest?testName="
													+ testName
													+ "&companyId="
													+ user.getCompanyId()
													+ "&email="
													+ data.getEmail());
									collectionForTest.add(data);

								}

							}
						} else if (data.getEmail().equals(userName)) {
							if (result.equals("ALL")) {
								if (min < data.getOverAllScore()
										&& data.getOverAllScore() < max) {
									data.setCompanyId(user.getCompanyId());
									data.setUrlForUserSession(
											propertyConfig.getBaseUrl()
													+ "downloadUserSessionReportsForTest?testName="
													+ testName
													+ "&companyId="
													+ user.getCompanyId()
													+ "&email="
													+ data.getEmail());
									collectionForTest.add(data);
								}
							} else if (data.getPass().equals(b)) {
								if (min < data.getOverAllScore()
										&& data.getOverAllScore() < max) {
									data.setCompanyId(user.getCompanyId());
									data.setUrlForUserSession(
											propertyConfig.getBaseUrl()
													+ "downloadUserSessionReportsForTest?testName="
													+ testName
													+ "&companyId="
													+ user.getCompanyId()
													+ "&email="
													+ data.getEmail());
									collectionForTest.add(data);
								}
							} else {
								if (min < data.getOverAllScore()
										&& data.getOverAllScore() < max) {
									data.setCompanyId(user.getCompanyId());
									data.setUrlForUserSession(
											propertyConfig.getBaseUrl()
													+ "downloadUserSessionReportsForTest?testName="
													+ testName
													+ "&companyId="
													+ user.getCompanyId()
													+ "&email="
													+ data.getEmail());
									collectionForTest.add(data);

								}

							}
						}

					}
				}
			}
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
			String date = formatter.format(new Date());
			String fileName = reportManager.generateUserPerspectiveReport(collectionForTest,
					user.getFirstName() + " " + user.getLastName(), date);
			File file = new File(fileName);
			HttpHeaders respHeaders = new HttpHeaders();
			MediaType mediaType = MediaType.parseMediaType("application/pdf");
			respHeaders.setContentType(mediaType);
			respHeaders.setContentLength(file.length());
			respHeaders.setContentDispositionFormData("attachment", file.getName());
			InputStreamResource isr = new InputStreamResource(new FileInputStream(file));
			end = System.currentTimeMillis();
			System.out.println("ReportsController.downloadUserReportsForTest() has taken "
					+ (end - start) + " ms to complete the execution");
			return new ResponseEntity(isr, respHeaders, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("error in downloadUserReportsForTest", e);
		}
		return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	@InitBinder
	public void initConverter(WebDataBinder binder) {
		CustomDateEditor dateEditor = new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true);
		binder.registerCustomEditor(Date.class, dateEditor);
	}
}
