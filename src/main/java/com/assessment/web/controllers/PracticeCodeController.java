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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.SkillStep;
import com.assessment.data.SkillTest;
import com.assessment.data.SkillTestLabel;
import com.assessment.data.StepTest;
import com.assessment.data.Test;
import com.assessment.data.User;
import com.assessment.repositories.SkillStepRepository;
import com.assessment.repositories.SkillTestLabelRepository;
import com.assessment.repositories.SkillTestRepository;
import com.assessment.repositories.StepTestRepository;
import com.assessment.services.StepTestService;

@Controller
public class PracticeCodeController {

	@Autowired
	SkillTestRepository skillTestRepository;

	@Autowired
	SkillTestLabelRepository skillTestLabelRepo;
	
	@Autowired
	SkillStepRepository skillStepRepository;

	@Autowired
	StepTestRepository steptestrepo;
	
	@Autowired
	StepTestService steptestservice;

	@RequestMapping(value = "/practiceCode", method = RequestMethod.GET)
	public ModelAndView addQ(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("practiceCode");
		User user = (User)request.getSession().getAttribute("user");
		//Objects required for header
		List<String> skillList = skillTestLabelRepo.findUniqueParentSkill();
		mav.addObject("skillList", skillList);
		String[] skills =  steptestservice.getParentSkillNames();
		for(int i = 0 ; i<skills.length; i++) {
			System.out.println(skills[i]);
		}		
		mav.addObject("skills",skills);
		mav.addObject("user",user);
		//Objects required for header end
 		return mav;
	}
	

	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/getSubSkill", method = RequestMethod.GET)
	public ModelAndView getSubSkill(HttpServletRequest request, @RequestParam(required = false) String skill,
			@RequestParam(required = false) String subSkill) throws Exception {
		ModelAndView mav = new ModelAndView("subSkill");
		List<String> skillList = skillTestLabelRepo.findUniqueParentSkill();
		User user = (User) request.getSession().getAttribute("user");
		mav.addObject("skillList", skillList);
		String[] skills =  steptestservice.getParentSkillNames();
		for(int i = 0 ; i<skills.length; i++) {
			System.out.println(skills[i]);
		}		
		mav.addObject("skills",skills);
		if (skill != null) {
			String parentSkill = skill;
			int current_idx = 0;
			List<String> listSubSkill = skillTestLabelRepo.findChildSkills(parentSkill);
			String childskill = listSubSkill.get(0);
			List<SkillTestLabel> listAll = skillTestLabelRepo.findTestAndLabel(childskill, parentSkill);
			mav.addObject("listSubSkill", listSubSkill);
            mav.addObject("subSkill", childskill);
			mav.addObject("listAll", listAll);
			mav.addObject("skill", parentSkill);
			mav.addObject("current",current_idx);
			mav.addObject("userId", URLEncoder.encode(Base64.getEncoder().encodeToString(user.getEmail().getBytes())));
		}
		if (subSkill != null) {
			int currentidx = 0;
 			String test = URLEncoder.encode(Base64.getEncoder().encodeToString(user.getEmail().getBytes()));
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>      " + test);
			String[] words=subSkill.split("-");
			String childskill = words[0];
			String parentSkill = words[1];
			System.out.println(childskill+">>>>>>>>>>>>>>>>>>"+parentSkill+">>>>>>>>>>>>>>>>>");
			List<SkillTestLabel> listAll = skillTestLabelRepo.findTestAndLabel(childskill,parentSkill);
			List<String> listSubSkill = skillTestLabelRepo.findChildSkills(parentSkill);
			for(int i=0;i<listSubSkill.size();i++) {
				if(childskill.equals(listSubSkill.get(i))) {
					currentidx = i;
				}
			}
			mav.addObject("listSubSkill", listSubSkill);
            mav.addObject("subSkill", childskill);
			mav.addObject("listAll", listAll);
			mav.addObject("skill", parentSkill);
			mav.addObject("current",currentidx);
			mav.addObject("userId", URLEncoder.encode(Base64.getEncoder().encodeToString(user.getEmail().getBytes())));
		}

		    return mav;

	}


}
