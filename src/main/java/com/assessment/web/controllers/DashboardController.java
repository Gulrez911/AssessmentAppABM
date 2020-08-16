package com.assessment.web.controllers;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.CandidateProfileParams;
import com.assessment.data.LearnersProfileParam;
import com.assessment.data.PieChart1;
import com.assessment.data.PieChart2;
import com.assessment.data.QuestionMapperInstance;
import com.assessment.data.User;
import com.assessment.data.UserTestSession;
import com.assessment.data.UserType;
import com.assessment.reports.manager.UserTrait;
import com.assessment.repositories.LearnersProfileParamRepository;
import com.assessment.repositories.PieChart1Repository;
import com.assessment.repositories.PieChart2Repository;
import com.assessment.repositories.SkillTestLabelRepository;
import com.assessment.repositories.UserRepository;
import com.assessment.services.CandidateProfileParamsService;
import com.assessment.services.LearnersProfileService;
import com.assessment.services.Piechart1Service;
import com.assessment.services.Piechart2Service;
import com.assessment.services.QuestionMapperInstanceService;
import com.assessment.services.StepTestService;
import com.assessment.services.UserTestSessionService;
import com.google.gson.Gson;
import com.ibm.icu.text.DecimalFormat;

@Controller
@SessionAttributes
	
public class DashboardController{
	Logger logger = LoggerFactory.getLogger(DashboardController.class);
	
	@Autowired
	UserRepository userRepository;
	@Autowired
	PieChart1Repository pieChart1Repository;
	@Autowired
	PieChart2Repository pieChart2Repository;
	@Autowired
	LearnersProfileParamRepository profileParamRepository;
	@Autowired
	Piechart1Service piechart1Service;
	@Autowired
	Piechart2Service piechart2Service;
	@Autowired
	LearnersProfileService profileService;
	@Autowired
	UserTestSessionService userTestSessionService;
	@Autowired 
	CandidateProfileParamsService candidateProfileParamsService;
	@Autowired
	QuestionMapperInstanceService questionMapperInstanceService;
	@Autowired
	StepTestService steptestservice;
	@Autowired
	SkillTestLabelRepository skillTestLabelRepo;
	
	@GetMapping("/profileParam")
	@ResponseBody
	public Map<String, Object> calculateProfileParam() {
		Map<String, Object> map1 = new HashMap<>();
		List<User> listusers = userRepository.findByUserType(UserType.STUDENT);
		List<User> listusers2 = new ArrayList<>();

		Set<String> emails = new HashSet<>();
		for (User user : listusers) {
			emails.add(user.getEmail().replaceAll("\\[.*", ""));
		}
		for (String ee : emails) {
			for (User userr : listusers) {
				if (ee.equals(userr.getEmail())) {
					listusers2.add(userr);
					break;
				}
			}
		}
		List<LearnersProfileParam> listParam = new ArrayList<LearnersProfileParam>();
		List<PieChart1> chart1s = new ArrayList<>();
		List<PieChart2> chart2s = new ArrayList<>();
		for (User user : listusers2) {
			List<UserTestSession> userTestSessions = userTestSessionService.findTestListForUser("e-assess", user.getEmail().replaceAll("\\[.*", ""));
			List<UserTestSession> listUserTestSession = new ArrayList<UserTestSession>();
			for (UserTestSession session : userTestSessions) {
				listUserTestSession.add(session);
			}
			System.out.println("size of user TestSession:    " + userTestSessions.size());

			System.out.println("size of All user TestSession:    " + listUserTestSession.size());
			System.out.println("user Email:     " + user.getEmail());
			List<CandidateProfileParams> candidateProfileParams = candidateProfileParamsService.findCandidateProfileParamsByCompanyId("e-assess");
			Map<CandidateProfileParams, List<QuestionMapperInstance>> map = new HashMap<>();
			List<QuestionMapperInstance> answers = new ArrayList<QuestionMapperInstance>();
			for (UserTestSession testSession : listUserTestSession) {
				List<QuestionMapperInstance> answers2 = questionMapperInstanceService.findQuestionMapperInstancesForUserForTest(testSession.getTestName(), testSession.getUser().replaceAll("\\[.*", "").replaceAll("\\[.*", ""), testSession.getCompanyId());
				for (QuestionMapperInstance instance : answers2) {
					answers.add(instance);
				}
			}
			Map<String, Integer> qualifier2 = new HashMap<String, Integer>();
			Map<String, Integer> qualifier3 = new HashMap<String, Integer>();
			Map<String, Integer> correct = new HashMap<String, Integer>();
			Map<String, Integer> correct2 = new HashMap<String, Integer>();
			for (QuestionMapperInstance instance : answers) {
				if (instance.getQuestionMapper().getQuestion().getQualifier2() != null && !instance.getQuestionMapper().getQuestion().getQualifier2().isEmpty()) {
					String qq2 = instance.getQuestionMapper().getQuestion().getQualifier1()+"-"+instance.getQuestionMapper().getQuestion().getQualifier2();
					Integer j = qualifier2.get(qq2);
					qualifier2.put(qq2, (j == null) ? 1 : j + 1);
					if (instance.getCorrect()) {
						Integer k = correct.get(qq2);
						correct.put(qq2, (k == null) ? 1 : k + 1);
					}
				}

				if (instance.getQuestionMapper().getQuestion().getQualifier3() != null && !instance.getQuestionMapper().getQuestion().getQualifier3().equalsIgnoreCase("")) {
					String qq3 = instance.getQuestionMapper().getQuestion().getQualifier2() + "-" + instance.getQuestionMapper().getQuestion().getQualifier3();
					Integer j = qualifier3.get(qq3);
					qualifier3.put(qq3, (j == null) ? 1 : j + 1);
					if (instance.getCorrect()) {
						Integer k = correct2.get(qq3);
						correct2.put(qq3, (k == null) ? 1 : k + 1);
					}
				}

			}

			for (Map.Entry<String, Integer> val : qualifier2.entrySet()) {
				PieChart1 chart1 = new PieChart1();
				for (Map.Entry<String, Integer> val2 : correct.entrySet()) {
					if (val.getKey().equalsIgnoreCase(val2.getKey())) {
//						Float ff = (float) (val2.getValue()*100/val.getValue());
						Long result = Math.round(val2.getValue() * 100.0 / val.getValue());
						chart1.setCompanyId(user.getCompanyId());
						chart1.setCompanyName(user.getCompanyName());
						chart1.setPercent(result);
						String qq[] = val.getKey().split("-");
						chart1.setQualifer1(qq[0]);
						chart1.setQualifier2(qq[1]);
						chart1.setUserEmail(user.getEmail());
						chart1s.add(chart1);
					}
				}

			}
			System.out.println("charts::::::::::::    "+chart1s);
			for (Map.Entry<String, Integer> val : qualifier3.entrySet()) {
				PieChart2 chart2 = new PieChart2();
				for (Map.Entry<String, Integer> val2 : correct2.entrySet()) {
					if (val.getKey().equalsIgnoreCase(val2.getKey())) {
//						Float ff = (float) (val2.getValue()*100/val.getValue());
						Long result = Math.round(val2.getValue() * 100.0 / val.getValue());
						chart2.setCompanyId(user.getCompanyId());
						chart2.setCompanyName(user.getCompanyName());
						chart2.setPercent(result);
						String qq[] = val.getKey().split("-");
						chart2.setQualifier2(qq[0]);
						chart2.setQualifier3(qq[1]);
						chart2.setUserEmail(user.getEmail());
						chart2s.add(chart2);
					}
				}

			}

			System.out.println("Charts::::::::                " + chart1s);
			System.out.println("Charts2::::::::                " + chart2s);

			for (QuestionMapperInstance ans : answers) {
				CandidateProfileParams param = new CandidateProfileParams(ans.getQuestionMapper().getQuestion().getQualifier1(), ans.getQuestionMapper().getQuestion().getQualifier2(),
						ans.getQuestionMapper().getQuestion().getQualifier3(), ans.getQuestionMapper().getQuestion().getQualifier4(), ans.getQuestionMapper().getQuestion().getQualifier5());
				if (map.get(param) == null) {
					List<QuestionMapperInstance> ins = new ArrayList<>();
					ins.add(ans);
					map.put(param, ins);
				} else {
					map.get(param).add(ans);
				}
			}
			DecimalFormat df = new DecimalFormat("#.##");
			Map<CandidateProfileParams, Float> mapPer = new HashMap<>();
			Map<CandidateProfileParams, String> mapTrait = new HashMap<>();
			for (CandidateProfileParams param : map.keySet()) {
				List<QuestionMapperInstance> answersForQualifier = map.get(param);
				int noOfCorrect = 0;
				for (QuestionMapperInstance ans : answersForQualifier) {
					if (ans.getCorrect()) {
						noOfCorrect++;
					}
				}

				Float percent = Float.parseFloat(df.format(noOfCorrect * 100 / answersForQualifier.size()));
				mapPer.put(param, percent);
				int index = candidateProfileParams.indexOf(param);
				if (index != -1) {
					CandidateProfileParams paramWithData = candidateProfileParams.get(index);
					String trait = "";
					if (percent < 20) {
						trait = paramWithData.getLESS_THAN_TWENTY_PERCENT();
					} else if (percent >= 20 && percent < 50) {
						trait = paramWithData.getBETWEEN_TWENTY_AND_FIFTY();
					} else if (percent >= 50 && percent < 75) {
						trait = paramWithData.getBETWEEN_FIFTY_AND_SEVENTYFIVE();
					} else if (percent >= 75 && percent < 90) {
						trait = paramWithData.getBETWEEN_SEVENTYFIVE_AND_NINETY();
					} else if (percent > 90) {
						trait = paramWithData.getMORE_THAN_NINETY();
					}
					mapTrait.put(param, trait);
				}

			}
			List<UserTrait> traits = new ArrayList<>();
			for (CandidateProfileParams param : mapTrait.keySet()) {
				UserTrait trait = new UserTrait();
				String qual = param.getQualifier1();
				if (param.getQualifier2() != null && !param.getQualifier2().equals("NA")) {
					qual += "-" + param.getQualifier2();
				}
				if (param.getQualifier3() != null && !param.getQualifier3().equals("NA")) {
					qual += "-" + param.getQualifier3();
				}
				if (param.getQualifier4() != null && !param.getQualifier4().equals("NA")) {
					qual += "-" + param.getQualifier4();
				}
				if (param.getQualifier5() != null && !param.getQualifier5().equals("NA")) {
					qual += "-" + param.getQualifier5();
				}

				trait.setTrait(qual);
				trait.setDescription(mapTrait.get(param));
				traits.add(trait);
			}

			for (UserTrait trait : traits) {
				System.out.println("trait::: " + trait.getTrait() + "   ::::   " + trait.getDescription());
			}
			for (UserTrait trait : traits) {

				LearnersProfileParam lp = new LearnersProfileParam();
				String[] traitss = trait.getTrait().split("-");
				for (int i = 0; i < traitss.length; i++) {
					if (i == 0) {
						lp.setQualifier1(traitss[i].toUpperCase());
					}
					if (i == 1) {
						lp.setQualifier2(traitss[i].toUpperCase());
					}
					if (i == 2) {
						lp.setQualifier3(traitss[i].toUpperCase());
					}
					if (i == 3) {
						lp.setQualifier4(traitss[i].toUpperCase());
					}
					if (i == 4) {
						lp.setQualifier5(traitss[i].toUpperCase());
					}
				}
				lp.setQparamValue(trait.getDescription());
				lp.setCompanyId(user.getCompanyId());
				lp.setCompanyName(user.getCompanyName());
				lp.setUserEmail(user.getEmail());
				listParam.add(lp);

			}
		}
		profileService.saveOrUpdate(listParam);
		piechart1Service.saveOrUpdate(chart1s);
		piechart2Service.saveOrUpdate(chart2s);
		map1.put("msg", "Done");
//		User usr = userService.findByPrimaryKey(user, companyId);

		return map1;
	}

	@GetMapping("/user_profile_student_profile")
	public ModelAndView userProfile(@RequestParam("email") String email, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("userProfile");
		List<LearnersProfileParam> li = profileParamRepository.findByuserEmail(email);
		List<PieChart1> listPichart = pieChart1Repository.findByuserEmail(email);
		Set<String> set = new HashSet<String>();
		User user2 = (User) request.getSession().getAttribute("user");
		User user = userRepository.findByPrimaryKey(email, "e-assess");
		for (LearnersProfileParam param : li) {
			set.add(param.getQualifier1());
		}
		String l_name=null;
		if(user2.getLastName()==null) {
			l_name = "";
		}
		else {
			l_name = user2.getLastName();
		}
		mav.addObject("lmsadmin", user2.getFirstName() + " " + l_name );
		mav.addObject("name", user.getFirstName() + " " + l_name);
		if(listPichart.size()>0) {
			String qualifier2=listPichart.get(0).getQualifier2();
			mav.addObject("qualifier2", qualifier2);
		}
		mav.addObject("list", li);
		mav.addObject("email", email);
		//For header to work needs following objects
		mav.addObject("user",user2);
		List<String> skillList = skillTestLabelRepo.findUniqueParentSkill();
		mav.addObject("skillList", skillList);
		String[] skills = steptestservice.getParentSkillNames();
		mav.addObject("skills", skills);
		//end
		return mav;
	}
	
	@GetMapping("/myProfile")
	public ModelAndView myProfile(@RequestParam("email") String email, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("userProfile2");
		List<LearnersProfileParam> li = profileParamRepository.findByuserEmail(email);
		List<PieChart1> listPichart = pieChart1Repository.findByuserEmail(email);
		Set<String> set = new HashSet<String>();
		User user2 = (User) request.getSession().getAttribute("user");
		User user = userRepository.findByPrimaryKey(email, "e-assess");
		for (LearnersProfileParam param : li) {
			set.add(param.getQualifier1());
		}
		mav.addObject("lmsadmin", user2.getFirstName() + " " + user2.getLastName());
		mav.addObject("name", user.getFirstName() + " " + user.getLastName());
		if(listPichart.size()>0) {
			String qualifier2=listPichart.get(0).getQualifier2();
			mav.addObject("qualifier2", qualifier2);
		}
		mav.addObject("list", li);
		mav.addObject("email", email);
		return mav;
	}

	@GetMapping("/getChart1")
	@ResponseBody
	public Map<String, Object> getChart1(@RequestParam String email) {
		Map<String, Object> map = new HashMap<>();
		List<PieChart1> listPichart = pieChart1Repository.findByuserEmail(email);
		Gson gson = new Gson();
		String jsonCartList = gson.toJson(listPichart);
		System.out.println("json::::::::::::::                       " + jsonCartList);
		map.put("chart", jsonCartList);
		map.put("email", email);
		return map;
	}

	@GetMapping("/getChart2")
	@ResponseBody
	public Map<String, Object> getChart2(@RequestParam String email, @RequestParam String qualifier2) {
		Map<String, Object> map = new HashMap<>();
		List<PieChart2> listPichart = pieChart2Repository.findByUserEmailAndQualifier2(email, qualifier2);
		Gson gson = new Gson();
		String jsonCartList = gson.toJson(listPichart);
		System.out.println("json::::::::::::::                       " + jsonCartList);
		map.put("chart", jsonCartList);
		map.put("email", email);
		return map;
	}

	@GetMapping("getRecom")
	@ResponseBody
	public Map<String, String> getRecom(@RequestParam("param") String param, @RequestParam("email") String email, HttpServletRequest request) {
		Map<String, String> map = new HashMap<>();
		List<LearnersProfileParam> paramVal = profileParamRepository.getQValue(email, param);
		for (LearnersProfileParam li : paramVal) {
			if (li.getQualifier5() != null) {
				map.put(li.getQualifier5(), li.getQparamValue());
			} else if (li.getQualifier4() != null && li.getQualifier5() == null) {
				map.put(li.getQualifier4(), li.getQparamValue());
			} else if (li.getQualifier3() != null && li.getQualifier4() == null) {
				map.put(li.getQualifier3(), li.getQparamValue());
			} else if (li.getQualifier2() != null && li.getQualifier3() == null) {
				map.put(li.getQualifier2(), li.getQparamValue());
			} 
		}
		return map;
	}
	}

