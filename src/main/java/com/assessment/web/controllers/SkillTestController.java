package com.assessment.web.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.SkillTest;
import com.assessment.data.User;
import com.assessment.repositories.SkillTestRepository;
import com.assessment.services.SkillTestService;

@Controller
public class SkillTestController {

	@Autowired
    SkillTestService skillTestService;
	
	@Autowired
    SkillTestRepository skillTestRepository;
	
	
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
		ModelAndView mav = new ModelAndView("addSkillTest");
		mav.addObject("skillTest", skillTest);
		return mav;
	}

	@RequestMapping(value = "/saveSkillTest", method = RequestMethod.POST)
	public ModelAndView saveSkill(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("skillTest") SkillTest skillTest) {
		User user = (User) request.getSession().getAttribute("user");
		skillTestService.createSkillTest(skillTest);
		ModelAndView mav = new ModelAndView("SkillTest");
		return mav;

	}
}