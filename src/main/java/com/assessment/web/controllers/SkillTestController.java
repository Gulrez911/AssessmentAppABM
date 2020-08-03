package com.assessment.web.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
		List<SkillTest> skillTests = skillTestService.findAllByCompanyId(user.getCompanyId());
		ModelAndView mav = new ModelAndView("skill_List");
		System.out.println("SkillTestController.getSkillTest()" + skillTests);
		mav.addObject("skillTests", skillTests);
		return mav;
	}
	@GetMapping("/addSkillTest1")
	public ModelAndView addSkillTest(HttpServletRequest request,@RequestParam(name="id",required = false) Long id) {
		User user = (User) request.getSession().getAttribute("user");
		ModelAndView mav = new ModelAndView("addSkillTest");
		List<SkillTest> listSkill = skillTestService.findUniqueParentSkill(user.getCompanyId());
		if(id==null) {
			SkillTest skillTest = new SkillTest();
			mav.addObject("skillTest", skillTest);
		}else {
			SkillTest skillTest= skillTestRepository.findById(id).get();
			 if(!skillTest.getIsCheckedFlag()) {
				 System.out.println("parent only");
			 }else {
				 String pskill=skillTest.getParentSkill();
				 skillTest.setParentSkill(skillTest.getChildSkill());
				 skillTest.setChildSkill(pskill);
			 }
			mav.addObject("skillTest", skillTest);
		}
		System.out.println("list unique skill::::                  " + listSkill);
		mav.addObject("listSkill", listSkill);
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
		return mav;
	}



	@PostMapping("/saveSkillTest")
	public ModelAndView saveSkillTest(@ModelAttribute("skillTest") SkillTest skillTest,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		User user = (User) request.getSession().getAttribute("user");
		List<SkillTest> listSkill = skillTestService.findUniqueParentSkill(user.getCompanyId());
		mav.addObject("listSkill", listSkill);
		List<SkillTest> skillTest2;
		mav.addObject("skillTest", new SkillTest());
		if (skillTest.getIsCheckedFlag()) {
			skillTest2 = skillTestRepository.findByParentSkillAndChildSkill(skillTest.getParentSkill(), skillTest.getChildSkill());
			System.out.println("true");
			if (skillTest2.size()>0) {
				mav.addObject("message", "Parent and Child Skill already exist");
				mav.addObject("msgtype", "failure");
				mav.setViewName("addSkillTest");
				return mav;
			}
		} else {
			 skillTest2 = skillTestRepository.findByparentSkill(skillTest.getParentSkill());
			System.out.println("false");
			if (skillTest2.size()>0) {
				mav.addObject("message", "Parent Skill already exist");
				mav.addObject("msgtype", "failure");
				mav.setViewName("addSkillTest");
				return mav;
			}
		}
		skillTest.setCompanyId(user.getCompanyId());
		skillTest.setCompanyName(user.getCompanyName());
		skillTestRepository.save(skillTest);
		mav.setViewName("redirect:/skillTest");
		System.out.println("object:     " + skillTest);
		return mav;
	}
}
