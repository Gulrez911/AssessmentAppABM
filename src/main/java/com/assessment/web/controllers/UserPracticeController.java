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
import com.assessment.data.Test;
import com.assessment.data.User;
import com.assessment.data.UserTestSession;
import com.assessment.repositories.SkillStepRepository;
import com.assessment.repositories.SkillTestLabelRepository;
import com.assessment.repositories.SkillTestRepository;
import com.assessment.repositories.StepTestRepository;
import com.assessment.repositories.TestRepository;
import com.assessment.services.SkillTestService;
import com.assessment.services.StepTestService;
import com.assessment.services.UserTestSessionService;

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
	
	@Autowired
	TestRepository testrepository;
	
	@Autowired
	UserTestSessionService usertestsessionservice;
	
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
		if(user != null) {
			String userId=URLEncoder
					.encode(Base64.getEncoder().encodeToString(user.getEmail().getBytes()));
			mav.addObject("userId", userId);
			mav.addObject("user",user);
		}
		else {
			user = new User();
			mav.addObject("user",user);
		}
		String[] skills = steptestservice.getParentSkillNames();//only skills that have some tests and steps in it
		
				
		for(int i = 0 ; i<skills.length; i++) {
			System.out.println(skills[i]);
		}
		if(testid != null) {
			StepTest st = steptestservice.getByTestId(testid);
			skilln = st.getSkillStep().getSkilltest().getParentSkill();
			subs = st.getSkillStep().getSkilltest().getChildSkill();
			stepn = st.getSkillStep().getStepName();
		}
		 
		
		
		List<String> subskilln = skilltestservice.findAllRecord(skilln);
		List<String> to_remsub = new ArrayList<String>();
		List<SkillStep> stp_lst = null;
		SkillTest st = null;
		for(String subskn : subskilln) {
			st = skilltestservice.getByskillsubskill(skilln, subskn);
			stp_lst = skillStepRepository.getAllStepsForSkillTest(st);
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
		
		skt = skilltestservice.getByskillsubskill(skilln, subsnm);
		
		List<SkillStep> stepnms = skillStepRepository.getAllStepsForSkillTest(skt) ;
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
			
			if(user != null) {//to load user data like total marks, obtained etc.
				String email = user.getEmail();
				stptst_lst = steptestservice.getBySkillStep(reqstp);
				List<UserTestSession> uts_list = new ArrayList<UserTestSession>();
				for(StepTest stpt : stptst_lst) {
					Test t = testrepository.findTestById(Long.valueOf(stpt.getTestId()));
					UserTestSession uts = usertestsessionservice.findByUserAndTest(email, t);
					uts_list.add(uts);					
				}
				mav.addObject("usertestsessionlist",uts_list);
			}
			
			if(user != null) {
				String email = user.getEmail();
				stptst_lst = steptestservice.getBySkillStep(reqstp);
				List<String> bool_appeared = new ArrayList<String>();
				for(StepTest stpt : stptst_lst) {
					Test t = testrepository.findTestById(Long.valueOf(stpt.getTestId()));
					UserTestSession uts = usertestsessionservice.findByUserAndTest(email, t);
					if(uts!=null){
						bool_appeared.add("Appeared");
					}
					else {
						bool_appeared.add("Not Appeared");
					}
				}
				mav.addObject("appearedlist", bool_appeared);
			}
		
			
			
			
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
			mav.addObject("curStepIdx",stepnms.indexOf(reqstp));
			mav.addObject("counts", countsfortests);
			mav.addObject("NoStepErr","");
			return mav;
		}
		
	}
}