package com.assessment.web.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.SkillTest;
import com.assessment.data.Test;
import com.assessment.data.User;
import com.assessment.repositories.SkillTestRepository;
import com.assessment.repositories.TestRepository;
import com.assessment.services.SkillTestService;

@Controller
public class SkillTestController {

	@Autowired
    SkillTestService skillTestService;
	
	@Autowired
    SkillTestRepository skillTestRepository;
	
	@Autowired
	TestRepository testRepository;
	
	
	@RequestMapping(value = "/skillTest", method = RequestMethod.GET)
	public ModelAndView getSkillTest(HttpServletRequest request, HttpServletResponse response) {
		User user = (User) request.getSession().getAttribute("user");
		List<SkillTest> skillTests = skillTestService.getskillTest();
		//set.addAll(skillTests);
		ModelAndView mav = new ModelAndView("skillTest");
	//	mav.addObject("sklTest", new SkillTest());
		System.out.println("SkillTestController.getSkillTest()");
		mav.addObject("skillTests", skillTests);
		return mav;
	}

	@RequestMapping(value = "/addSkillTest", method = RequestMethod.GET)
	public ModelAndView addSkill(HttpServletRequest request, HttpServletResponse response) {
		User user = (User) request.getSession().getAttribute("user");
		SkillTest skillTest = new SkillTest();
		List<Test> test = testRepository.findAll();
		List<SkillTest> skillTests = skillTestService.getskillTest();
		List<String> newList = new ArrayList<String>();
		for(SkillTest s : skillTests) {
			String skill = s.getSkillName();
			if(!newList.contains(skill)) {
				newList.add(skill);
			}
		}
		ModelAndView mav = new ModelAndView("addSkillTest");
		mav.addObject("skillTest", skillTest);
		mav.addObject("skillTests", newList);
		//mav.addObject("sklTest", new SkillTest());
		System.out.println("SkillTestController.addSkill()");
		mav.addObject("test", test);
		return mav;
	}

	@RequestMapping(value = "/saveSkillTest", method = RequestMethod.POST)
	public ModelAndView saveSkill(HttpServletRequest request,ModelMap model, HttpServletResponse response,
			@ModelAttribute("skillTest") SkillTest skillTest) {
		User user = (User) request.getSession().getAttribute("user");
		List<SkillTest> skillTests = skillTestService.getskillTest();
		skillTest.setCompanyId(user.getCompanyId());
		skillTest.setCompanyName(user.getCompanyName());
		skillTest.setCreateDate(new Date());
		System.out.println(skillTest);
		if(!skillTest.getIsCheckedFlag()) {
			skillTest.setSkillName(skillTest.getSubSkill());
			skillTest.setSubSkill(null);
			for(SkillTest sk:skillTests) {
				String Skillname=sk.getSkillName();
				String subSKillName=sk.getSubSkill();
				if(Skillname.equalsIgnoreCase(skillTest.getSkillName())) {
					
					model.addAttribute("msg","this Skill already exists");
					ModelAndView mav = new ModelAndView("addSkillTest");
					List<String> newList = new ArrayList<String>();
					for(SkillTest s : skillTests) {
						String skill = s.getSkillName();
						if(!newList.contains(skill)) {
							newList.add(skill);
						}
					}
					mav.addObject("skillTests", newList);
					return mav;
					
				}
				
				
			}
			
			
				skillTestService.createSkillTest(skillTest);
				List<SkillTest> skillTests2 = skillTestService.getskillTest();
				ModelAndView mav = new ModelAndView("skillTest");
				mav.addObject("skillTests", skillTests2);
				return mav;
			
			
			
		}else if(skillTest.getSkillName()!=null && skillTest.getSubSkill()!=null) {
			//select Query
			List<String> skTest=skillTestService.findAllRecord(skillTest.getSkillName());
//			if(skTest==null) {
//				int deletId=skillTestService.deleteSkillName(skillTest.getSkillName());
//				System.out.println(deletId);
//			}
			
		}
		
		for(SkillTest sk:skillTests) {
			String Skillname=sk.getSkillName();
			String subSKill=sk.getSubSkill();
			if(subSKill!=null) {
          if(Skillname.equalsIgnoreCase(skillTest.getSkillName()) && subSKill.equalsIgnoreCase(skillTest.getSubSkill())) {
				
				model.addAttribute("msg","this Skill-SubSkill relationship already exists");
				ModelAndView mav = new ModelAndView("addSkillTest");
				List<String> newList = new ArrayList<String>();
				for(SkillTest s : skillTests) {
					String skill = s.getSkillName();
					if(!newList.contains(skill)) {
						newList.add(skill);
					}
				}
				mav.addObject("skillTests", newList);
				return mav;
				
			}
		}
		}
		
		skillTestService.createSkillTest(skillTest);
		List<SkillTest> skillTests2 = skillTestService.getskillTest();
		ModelAndView mav = new ModelAndView("skillTest");
		mav.addObject("skillTests", skillTests2);
		return mav;

	}
}