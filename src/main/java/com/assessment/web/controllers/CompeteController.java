package com.assessment.web.controllers;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.Compete;
import com.assessment.data.SkillTest;
import com.assessment.data.Test;
import com.assessment.data.User;
import com.assessment.data.UserTestSession;
import com.assessment.repositories.CompeteRepository;
import com.assessment.repositories.SkillTestLabelRepository;
import com.assessment.repositories.TestRepository;
import com.assessment.repositories.UserTestSessionRepository;
import com.assessment.services.CompeteService;
import com.assessment.services.SkillTestService;
import com.assessment.services.StepTestService;
import com.assessment.services.TestService;
import com.assessment.services.UserService;
import com.assessment.web.dto.CompeteDto;

@Controller
public class CompeteController {
	
	@Autowired
	UserService userService;

	@Autowired
	CompeteRepository competeRepo;

	@Autowired
	CompeteService competeService;

	@Autowired
	SkillTestService skillTestService;

	@Autowired
	TestService testService;

	@Autowired
	TestRepository testRepo;
	
	@Autowired
	UserTestSessionRepository userTestRepo;

	@Autowired
	StepTestService steptestservice;
	
	@Autowired
	SkillTestLabelRepository skillTestLabelRepo;
	
	@RequestMapping(value = "/compete", method = RequestMethod.GET)
	public ModelAndView compete(HttpServletRequest request, HttpServletResponse response) {
		User user = (User) request.getSession().getAttribute("user");
		ModelAndView mav = new ModelAndView("compete");
		if(user!=null) {
		List<Object> countList=competeService.competeListCount();
		List<CompeteDto> listCompeteDtos = new ArrayList<CompeteDto>();
		for(Object obj:countList) {
			Object arr[] = (Object[])obj;
			CompeteDto competeDto = new CompeteDto();
			competeDto.setSkillName((String)arr[0]);
			competeDto.setChallenge((String)arr[1]);
			competeDto.setTotalTestCount((Long)arr[2]);
			listCompeteDtos.add(competeDto);
		}
		System.out.println("CountList"+listCompeteDtos);
		 
		List<SkillTest> listSkill = skillTestService.findUniqueParentSkill(user.getCompanyId());
		Compete compete = new Compete();
		System.out.println("list unique skill:::: " + listSkill);

		List<String> challengeType = new ArrayList<String>();
		challengeType.add("Skill");
		challengeType.add("Coding");

		List<Test> testList = testRepo.testList(user.getCompanyId());
		System.out.println("TestList" + testList);
		
		mav.addObject("countList", listCompeteDtos);
		mav.addObject("testList", testList);
		mav.addObject("challengeType", challengeType);
		mav.addObject("listSkill", listSkill);
		mav.addObject("compete", compete);
		}else {
			System.out.println("Session Expired");
			mav = new ModelAndView("redirect:/login");
		}
		return mav;
	}

	@ResponseBody
	@RequestMapping(value = "/addLevel", method = RequestMethod.GET)
	public Map<String, Object> addLevel(HttpServletRequest request,@RequestParam("skillName") String skillName, @RequestParam("challenge") String challenge, @RequestParam("testName") String testName) {
		Map<String, Object> map = new HashMap<>();
		System.out.println("compete called");
		User user = (User) request.getSession().getAttribute("user");
		
		Test lTest =  (Test) testRepo.findAllByTestName(testName);
		System.out.println("testDeatils:"+lTest.getId());
		
		int flag=0;
		List<Compete> compete1= competeService.findBySkillNameAndChallenge(skillName, challenge);
		for(Compete com:compete1) {
			if(com.getTestName().equals(testName)) {
				flag=1;
				System.out.println("Duplicate Test could not be Inserted");
				map.put("msg", "Test already exists");
			}
		}
		
		if(flag!=1) {
			Compete compete = new Compete();
			  compete.setCompanyId(user.getCompanyId());
			  compete.setCompanyName(user.getCompanyName());
			  compete.setSkillName(skillName); 
			  compete.setChallenge(challenge);
			  compete.setTestName(testName); 
//			  compete.setTestId(Long.toString(lTest.getId()));
			  compete.setTestId(lTest.getId());
			  competeRepo.save(compete);
			  System.out.println("Saved" + compete); 
			  map.put("msg","Level Added Successfully!"); 
		}
		return map;
	}
	


	@ResponseBody
	@RequestMapping(value = "/getTestLevel", method = RequestMethod.GET)
	public Map<String, Object> addLevel1(HttpServletRequest request,
			@RequestParam("skillName") String skillName, @RequestParam("challenge") String challenge) {
		Map<String, Object> map=new HashMap<>();
		User user = (User) request.getSession().getAttribute("user");

		List<Compete> levels = competeService.findBySkillNameAndChallengeAndCompanyId(skillName, challenge,user.getCompanyId());
		System.out.println("TestLevels:::" + levels);
		
		List<Test> testList = testRepo.testList(user.getCompanyId());
	
		map.put("testList", testList);
		map.put("levels", levels);
		return map;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "/getTestNames", method = RequestMethod.GET)
	public Map<String, Object> getTestNames(HttpServletRequest request, @RequestParam("id") Long id) {
		Map<String, Object> map=new HashMap<>();
		User user = (User) request.getSession().getAttribute("user");

		List<Test> testList = testRepo.testList(user.getCompanyId());
		System.out.println("Edit TestList:::"+testList);
		map.put("testList", testList);
		map.put("id", id);
		return map;
	}
	
	
	  @ResponseBody
	  @RequestMapping(value = "/updateLevel", method = RequestMethod.GET) 
	  public Map<String, Object> updateLevel(HttpServletRequest request, @RequestParam("testName") String testName, @RequestParam("id") Long id) { 
		  Map<String, Object> map=new HashMap<>(); 
		  User user = (User) request.getSession().getAttribute("user");
		  Compete compete= competeService.findByIdAndCompanyId(id, user.getCompanyId()); 
		  System.out.println("findById Details>>>"+compete);
		  
			Test lTest =  (Test) testRepo.findAllByTestName(testName);
		  String skill=compete.getSkillName();
		  String challenge=compete.getChallenge();
			int flag=0;
			List<Compete> compete1= competeRepo.findBySkillNameAndChallenge(skill, challenge);
			for(Compete com:compete1) {
				if(com.getTestName().equals(testName)) {
					flag=1;
					System.out.println("Duplicate Test could not be updated");
					map.put("msg", "Test already exists");
				}
			}
			
			if(flag!=1) {
				compete.setTestId(lTest.getId());
				compete.setTestName(testName);
				competeRepo.save(compete);
				System.out.println("Level updated successfully"+compete.getTestName());
				map.put("msg", "Level Updated Successfully!");
			}
			map.put("user", user);
			map.put("id", id); 
		  return map; 
	}
	  

//	@RequestMapping(value="/competeFront" ,method= RequestMethod.GET)
//	public ModelAndView competeF()
//	{
//		ModelAndView mav=new ModelAndView("competeFront1");
//		return mav;
//		
//	}

	@RequestMapping(value="/competeFrontSkill" ,method= RequestMethod.GET)
	public ModelAndView competeFrontSkill(HttpServletRequest request){
		ModelAndView mav=new ModelAndView("competeFrontSkill");
		User user = (User)request.getSession().getAttribute("user");
		if(user == null) {
			System.out.println("Session Expired");
			mav = new ModelAndView("redirect:/loginRegister");
		}else {
			List<Compete> skillList1 = competeService.findDistinctSkillName("Skill");
			mav.addObject("SkillList", skillList1);
		}
		mav.addObject("user", user);
		mav.addObject("challengeType", "Skill Challenge");
		//lists for header
		List<String> skillList = skillTestLabelRepo.findUniqueParentSkill();
		mav.addObject("skillList", skillList);
		String[] skills =  steptestservice.getParentSkillNames();
		mav.addObject("skills", skills);
		//end

		return mav;
		
	}
	
	@RequestMapping(value="/competeFrontCoding" ,method= RequestMethod.GET)
	public ModelAndView competeFrontCoding(HttpServletRequest request){
		ModelAndView mav=new ModelAndView("competeFrontCoding");
		User user = (User)request.getSession().getAttribute("user");
		if(user == null) {
			System.out.println("Session Expired");
			mav = new ModelAndView("redirect:/loginRegister");
		}else {
			List<Compete> skillList1 = competeService.findDistinctSkillName("Coding");
			mav.addObject("SkillList", skillList1);
			
		}
		mav.addObject("user", user);
		mav.addObject("challengeType", "Coding Challenge");
		//lists for header
		List<String> skillList = skillTestLabelRepo.findUniqueParentSkill();
		mav.addObject("skillList", skillList);
		String[] skills =  steptestservice.getParentSkillNames();
		mav.addObject("skills", skills);
		//end
		return mav;
		
	}
	
	@SuppressWarnings({ "deprecation", "unlikely-arg-type" })
	@RequestMapping(value="/competeFront" ,method= RequestMethod.GET)
	public ModelAndView competeFront(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(name="challengeType",required=false) String challengeType,
			@RequestParam(name="skillName",required = false) String skillName ){
		
		ModelAndView mav=new ModelAndView("competeFront");
		User user = (User)request.getSession().getAttribute("user");
		if(user == null) {
			System.out.println("Session Expired");
			mav = new ModelAndView("redirect:/loginRegister");
		}else {
			List<Compete> skillList1 = competeService.findDistinctSkillName(challengeType);
			System.out.println("Distinct SkillList"+skillList1);
			
			CompeteDto dto= null;
			List<Compete> testList=competeService.findBySkillNameAndChallenge(skillName, challengeType);
			Compete compete = new Compete();
			mav.addObject("compete", compete);
			
			List<String> tests=new ArrayList<>(); 
			List<Long> testId=new ArrayList<>();
			int i=0;
			for(Compete c: testList) {
				  String testName=c.getTestName(); 
				  if(i==0) {
					  mav.addObject("testName", testName);
					  compete.setTestName(testName);
				  }
				  i++;
				  tests.add(testName); 
				  Long tId=c.getTestId();
				  testId.add(tId);
				  
			}
			compete.setListTestName(tests);
			
			System.out.println("testList>>"+testList);
			System.out.println("SkillIndex:"+skillList1.indexOf(skillName));
			
			String[] skills =  steptestservice.getParentSkillNames();//required for practice header to work *1
			List<String> skillList = skillTestLabelRepo.findUniqueParentSkill();//required for coding header to work *2
			mav.addObject("skillList", skillList);//*2
			mav.addObject("tests", tests);
			mav.addObject("testList", testList);
			mav.addObject("testIndex", testList.indexOf(tests));
			mav.addObject("skillList1", skillList1);
			mav.addObject("skillIndex",skillList1.indexOf(skillName));
			mav.addObject("skillName",skillName);
			mav.addObject("challengeType", challengeType);
			mav.addObject("companyId", user.getCompanyId());
			mav.addObject("skills",skills);//*1
			mav.addObject("testId", testId);
			mav.addObject("userId", URLEncoder.encode(Base64.getEncoder().encodeToString(user.getEmail().getBytes())));
		}
		return mav; 
	}
	
	@ResponseBody
	@RequestMapping(value = "/leaderboard", method = RequestMethod.GET)
	public Map<String, Object> leaderboard(HttpServletRequest request,
			@RequestParam("testName") String testName){
		Map<String, Object> map=new HashMap<>();
		User user = (User)request.getSession().getAttribute("user");
		
		if(user!=null) {
			List<CompeteDto> dtoList= new ArrayList<CompeteDto>();
			List<UserTestSession> testSession = userTestRepo.findTestSession(testName, user.getCompanyId());
			System.out.println("testSession"+testSession);
			int count = 1;
			for (UserTestSession userMarks : testSession) {
				User usrName=userService.findByPrimaryKey(userMarks.getUser(), user.getCompanyId());
				CompeteDto competeDto= new CompeteDto();
				competeDto.setfName(usrName.getFirstName());
				competeDto.setlName(usrName.getLastName());
				competeDto.setRank(count);
				count++;
				competeDto.setScore(userMarks.getPercentageMarksRecieved());
				
				dtoList.add(competeDto);
			}
			
			List<Float> usrScore=new ArrayList<Float>();
			for(CompeteDto score: dtoList)
			{
				usrScore.add(score.getScore());
			}
			map.put("score", usrScore);
			map.put("dtoList", dtoList);
		}
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/deleteLevel", method = RequestMethod.GET)
	public Map<String, Object> deleteLevel(HttpServletRequest request,@RequestParam("id") String id){
		Map<String, Object> map=new HashMap<>();
		User user = (User)request.getSession().getAttribute("user");
		long testId = Long.valueOf(id);
		competeRepo.deleteById(testId);
		return map;
	}
	
	
}