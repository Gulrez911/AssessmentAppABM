package com.assessment.web.controllers;

import java.util.ArrayList;
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
import com.assessment.repositories.CompeteRepository;
import com.assessment.repositories.TestRepository;
import com.assessment.services.CompeteService;
import com.assessment.services.SkillTestService;
import com.assessment.services.TestService;
import com.assessment.web.dto.CompeteDto;

@Controller
public class CompeteController {

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

	
	@RequestMapping(value = "/compete", method = RequestMethod.GET)
	public ModelAndView compete(HttpServletRequest request, HttpServletResponse response) {
		User user = (User) request.getSession().getAttribute("user");
		ModelAndView mav = new ModelAndView("compete");

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
		return mav;
	}

	@ResponseBody
	@RequestMapping(value = "/addLevel", method = RequestMethod.GET)
	public Map<String, Object> addLevel(HttpServletRequest request,@RequestParam("skillName") String skillName, @RequestParam("challenge") String challenge, @RequestParam("testName") String testName) {
		Map<String, Object> map = new HashMap<>();
		System.out.println("compete called");
		User user = (User) request.getSession().getAttribute("user");
		
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
				compete.setTestName(testName);
				competeRepo.save(compete);
				System.out.println("Level updated successfully"+compete.getTestName());
				map.put("msg", "Level Updated Successfully!");
			}
			
			map.put("id", id); 
		  return map; 
	}

}
