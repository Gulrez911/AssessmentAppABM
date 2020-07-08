package com.assessment.web.controllers;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.SkillStep;
import com.assessment.data.SkillTest;
import com.assessment.data.StepTest;
import com.assessment.data.User;
import com.assessment.repositories.SkillStepRepository;
import com.assessment.repositories.SkillTestLabelRepository;
import com.assessment.repositories.SkillTestRepository;
import com.assessment.repositories.StepTestRepository;
import com.assessment.services.SkillTestService;
import com.assessment.services.StepTestService;

@Controller
@SessionAttributes
public class UserPracticeController {
	
	@Autowired
	SkillTestRepository skilltestrepository;
	
	@Autowired
	SkillTestService skilltestservice;
	
	@Autowired
	SkillStepRepository skillStepRepository;
	
	@Autowired
	StepTestService steptestservice;
	
	@Autowired
	SkillTestLabelRepository skillTestLabelRepo;
	
	@GetMapping(value="/userpractice")
	public ModelAndView userPractice(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(name="skilln",required=false) String skilln,
			@RequestParam(name="subs",required = false)String subs,
			@RequestParam(name="stepn",required = false)String stepn,
			@RequestParam (name="testid",required= false)String testid){
		ModelAndView mav = null;
		mav = new ModelAndView("user_practice");
		List<String> skillList = skillTestLabelRepo.findUniqueParentSkill();
		mav.addObject("skillList", skillList);
		User user = (User)request.getSession().getAttribute("user");
		String userId=URLEncoder
				.encode(Base64.getEncoder().encodeToString(user.getEmail().getBytes()));
		mav.addObject("userId", userId);
		String[] skills = steptestservice.getParentSkillNames(user.getCompanyId());
				
		for(int i = 0 ; i<skills.length; i++) {
			System.out.println(skills[i]);
		}
		if(testid != null) {
			StepTest st = steptestservice.getByTestId(testid, user.getCompanyId());
			skilln = st.getSkillStep().getSkilltest().getParentSkill();
			subs = st.getSkillStep().getSkilltest().getChildSkill();
			stepn = st.getSkillStep().getStepName();
		}
		 
		
		
		List<String> subskilln = skilltestservice.findAllRecord(skilln);
		List<String> to_remsub = new ArrayList<String>();
		List<SkillStep> stp_lst = null;
		SkillTest st = null;
		for(String subskn : subskilln) {
			st = skilltestservice.getByskillsubskill(skilln, user.getCompanyId(), subskn);
			stp_lst = skillStepRepository.getAllStepsForSkillTest(user.getCompanyId(),st);
			if(stp_lst.size() == 0) {
				to_remsub.add(subskn);
			}
			else {
				boolean bool=false;
				List<StepTest> stpt=null;
				for(SkillStep sp : stp_lst) {
					stpt = steptestservice.getBySkillStep(sp);
					if(stpt.size()==0) {
						bool = true;
					}
					else {
						bool = false;
						break;
					}
				}
				if(bool == true) {
					to_remsub.add(subskn);
				}
			}
		}
		subskilln.removeAll(to_remsub);
		
		String subsnm = null;
		SkillTest skt = null;
		if( subs == null )
			subsnm = subskilln.get(0);
		else
			subsnm = subs;
		
		skt = skilltestservice.getByskillsubskill(skilln, user.getCompanyId(), subsnm);
		
		List<SkillStep> stepnms = skillStepRepository.getAllStepsForSkillTest(user.getCompanyId(),skt) ;
		List<SkillStep> to_rem = new ArrayList<SkillStep>();
		List<StepTest> s_tests = null; 
		
		for(SkillStep stp : stepnms) {
			s_tests = steptestservice.getBySkillStep(stp);
			if(s_tests.size() == 0) {
				to_rem.add(stp);
			}
		}
		stepnms.removeAll(to_rem);
		
		
		if(stepnms.size() == 0)
		{
			mav.addObject("skills", skills);
			mav.addObject("curskill", skilln);
			mav.addObject("subskills", subskilln);
			mav.addObject("subsidx",subskilln.indexOf(subsnm));
			mav.addObject("NoStepErr","No data available");
			return mav;
		}
		else {
			List<StepTest> stptst_lst = null;
			SkillStep reqstp = null;
			if( stepn == null ) {
				reqstp = stepnms.get(0);
			}
			else {
				for(SkillStep stp1 : stepnms ) {
					if( stp1.getStepName().equalsIgnoreCase(stepn) )
						reqstp = stp1;
				}
			}
			stptst_lst = steptestservice.getBySkillStep(reqstp);
			
			List<List<Integer>> countsfortests = new ArrayList<List<Integer>>();
			for(SkillStep stp : stepnms ) {
				List<StepTest> tst_lst = steptestservice.getBySkillStep(stp);
				if(tst_lst != null) {
				List<Integer> countsfor_1_step = new ArrayList<Integer>();
				countsfor_1_step.add(tst_lst.size());
				int reqcount = 0;
				for(StepTest tst: tst_lst) {
					if(tst.getRequired()) {
						reqcount++;
					}
				}
				countsfor_1_step.add(reqcount);
				countsfortests.add(countsfor_1_step);
				}
			}
			
			
			System.out.println("User Practice: "+skilln);
			mav.addObject("skills", skills);
			mav.addObject("curskill", skilln);
			mav.addObject("subskills", subskilln);
			mav.addObject("subsidx",subskilln.indexOf(subsnm));
			mav.addObject("defaultSteps", stepnms);
			mav.addObject("tests", stptst_lst);
			mav.addObject("curStep", reqstp);
			mav.addObject("counts", countsfortests);
			mav.addObject("NoStepErr","");
			return mav;
		}
		
	}
}