package com.assessment.web.controllers;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		List<SkillTest> skillTest = skillTestService.getskillTest();
		ModelAndView mav = new ModelAndView("skillTest");
		mav.addObject("skillTest", skillTest);
		return mav;
	}

	@RequestMapping(value = "/addSkillTest", method = RequestMethod.GET)
	public ModelAndView addSkill(HttpServletRequest request, HttpServletResponse response) {
		User user = (User) request.getSession().getAttribute("user");
		SkillTest skillTest = new SkillTest();
		List<Test> test = testRepository.findAll();
		List<SkillTest> skillTests = skillTestService.getskillTest();
		ModelAndView mav = new ModelAndView("addSkillTest");
		mav.addObject("skillTest", skillTest);
		mav.addObject("skillTests", skillTests);
		mav.addObject("test", test);
		return mav;
	}

	@RequestMapping(value = "/saveSkillTest", method = RequestMethod.POST)
	public String saveSkill(HttpServletRequest request,ModelMap model, HttpServletResponse response,
			@ModelAttribute("skillTest") SkillTest skillTest,@RequestParam(name="skillName",required = false)String skillName,
			@RequestParam(name="subskillName",required = false)String subskillName) {
		User user = (User) request.getSession().getAttribute("user");
		List<SkillTest> skillTests = skillTestService.getskillTest();
		skillTest.setCompanyId(user.getCompanyId());
		skillTest.setCompanyName(user.getCompanyName());
		skillTest.setCreateDate(new Date());
		for(SkillTest sk:skillTests) {
			String Skillname=sk.getSkillName();
			String subSKillName=sk.getSubSkill();
			if(Skillname.equalsIgnoreCase(skillName) && subSKillName.equalsIgnoreCase(subskillName)) {
				//ModelAndView mab=new ModelAndView("");
				model.addAttribute("msg","already esists");
				return "addSkillTest";
			}
		}
		skillTestService.createSkillTest(skillTest);
//		ModelAndView mav = new ModelAndView("SkillTest");
//		SkillTest skillTest2 = new SkillTest();
//		mav.addObject("skillTest2", skillTest2);
		return "redirect:/skillTest";

	}
}