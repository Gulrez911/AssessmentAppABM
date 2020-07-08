package com.assessment.web.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.Application;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.SkillTest;
import com.assessment.data.SkillTestLabel;
import com.assessment.data.Test;
import com.assessment.data.User;
import com.assessment.data.UserTestSession;
import com.assessment.repositories.SkillTestLabelRepository;
import com.assessment.repositories.SkillTestRepository;
import com.assessment.repositories.TestRepository;
import com.assessment.services.SkillTestLabelService;

@Controller
public class SkillTestLabelController {
	
	@Autowired
	SkillTestLabelService skillTestLabelService;
	
	@Autowired
	SkillTestLabelRepository skillTestLabelRepository;
	
	@Autowired
	SkillTestRepository skillTestRepository;
	
	@Autowired
	TestRepository testRepository;

	@RequestMapping(value = "/skillTestLabel", method = RequestMethod.GET)
	public ModelAndView skillTestLabel(HttpServletRequest request,HttpServletResponse response) {
		User user = (User) request.getSession().getAttribute("user");
		ModelAndView mav = new ModelAndView("skillTestLabel");
		List<SkillTestLabel> list = skillTestLabelService.findAll();
		List<SkillTest> listPSkill = skillTestRepository.findUniqueParentSkill(user.getCompanyId());
		List<SkillTest> listCSkill = skillTestRepository.findChildSkill(user.getCompanyId());
		List<Test> listTest =  testRepository.findTest(user.getCompanyId());
		SkillTestLabel skillTestLabel = new SkillTestLabel();
		while(listCSkill.remove(null)) {
		}
		mav.addObject("pSkill", listPSkill);
		mav.addObject("cSkill", listCSkill);
		mav.addObject("tName", listTest);
		mav.addObject("skillTestLabel", skillTestLabel);
		mav.addObject("allList", list);
		return mav;
		
		
		
	}
	
	@PostMapping("/saveSkillTestLabel")
	public ModelAndView saveSkillTestLabel(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("skillTestLabel")
	  SkillTestLabel skillTestLabel) {
		ModelAndView mav = new ModelAndView();
		User user = (User) request.getSession().getAttribute("user");
		String tName = skillTestLabel.getTestName();
		Test lTest =  testRepository.findAllByTestName(tName);
		skillTestLabel.setCompanyId(user.getCompanyId());
		skillTestLabel.setCompanyName(user.getCompanyName());
		skillTestLabel.setTest(lTest);
		skillTestLabelRepository.save(skillTestLabel);
		mav.setViewName("redirect:/skillTestLabel");
		return mav;
		
	}
	
	@GetMapping("/fetchSubSkill")
	public @ResponseBody Map<String, Object> fetchSubSkill(final HttpServletRequest request,
			@RequestParam("skill") String skill) {
		Map<String, Object> map = new HashMap<>();
		User user = (User) request.getSession().getAttribute("user");
		System.out.println("  User: " + user.getCompanyId());
		List<SkillTest> listSubSkill = skillTestRepository.findSubSkill(skill);
		List<Test> listTest =  testRepository.findTestName(skill);
		System.out.println(" SubSkill Size: " + listSubSkill.size());
		System.out.println(" Test Size >>>>>>> " + listTest.size());
		map.put("listSubSkill", listSubSkill);
		map.put("listTest", listTest);
		return map;
	}
	
	
}
