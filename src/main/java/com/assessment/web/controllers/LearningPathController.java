package com.assessment.web.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.assessment.data.SkillLevel;
import com.assessment.data.SkillStep;
import com.assessment.data.SkillTest;
import com.assessment.data.StepTest;
import com.assessment.data.Test;
import com.assessment.data.User;
import com.assessment.repositories.SkillStepRepository;
import com.assessment.repositories.SkillTestRepository;
import com.assessment.repositories.StepTestRepository;
import com.assessment.repositories.TestRepository;
import com.assessment.services.StepTestService;
import com.assessment.services.impl.StepTestServiceImpl;

@Controller
@SessionAttributes
public class LearningPathController {
	Logger logger = LoggerFactory.getLogger(LearningPathController.class);
	
	@Autowired
	SkillTestRepository skilltestrepository;
	
	@Autowired
	TestRepository testRepository;
	
	@Autowired
	SkillStepRepository skillsteprepository;
	
	@Autowired
	StepTestService steptestservice;
	
	@Autowired
	StepTestRepository steptestrepository;
	
	@RequestMapping(value = "/learningpath", method = RequestMethod.GET)
		public ModelAndView learningpath(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = null;
		User user = (User)request.getSession().getAttribute("user");
		
		mav = new ModelAndView("learn_path");
		List<String> skills = skilltestrepository.getSkills(user.getCompanyId());
		for(int i = 0 ; i<skills.size(); i++) {
			System.out.println(skills.get(i));
		}
		
		List<Test> testobj_list = testRepository.findTestsByCompanyId(user.getCompanyId());
		List<String> testnm_list = new ArrayList<String>();
		for(int i = 0 ; i<testobj_list.size(); i++) {
			System.out.println(testobj_list.get(i).getTestName());
			testnm_list.add(testobj_list.get(i).getTestName());
		}
		mav.addObject("testslist",testnm_list);
		mav.addObject("skills",skills);
		mav.addObject("levels", SkillLevel.values());
		return mav;
	}
	
	//fetching subskills on selecting skill
	@ResponseBody
	@RequestMapping(value = "/fetchsubskills", method = RequestMethod.POST)
	public List<String> fetchsubskills(HttpServletRequest request, HttpServletResponse response,@RequestParam String selSkill){
		User user = (User)request.getSession().getAttribute("user");
		
		List<String> subskills = skilltestrepository.getSubskills(selSkill, user.getCompanyId());
		
		for(int i = 0 ; i<subskills.size(); i++) {
			System.out.println(subskills.get(i));
		}
		return subskills;
	}
	
	
	//add new step in param skill and subskill	
	@ResponseBody
	@RequestMapping(value = "/addskillstep",method=RequestMethod.POST)
	public String addskillstep(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(name = "stepName",   required = false) String stepName,
			@RequestParam(name = "skillName",  required = false) String skillName,
			@RequestParam(name = "subSkill",   required = false) String subSkill, 
			@RequestParam(name = "skillstepid",required = false)Long skillstepid) {
		
		String status="";
		User user = (User)request.getSession().getAttribute("user");
		SkillStep skillStep = null;
		
		if( skillstepid == null ) {
			skillStep = new SkillStep();
			status = "New Step Added Successfully";
		}
		else {
			skillStep = skillsteprepository.findById( skillstepid ).get();
			status = "Step Updated Successfully";
		}
		
		skillStep.setCompanyId(user.getCompanyId());
		skillStep.setCompanyName(user.getCompanyName());
		skillStep.setStepName(stepName);
		skillStep.setStep_order(0);
		skillStep.setSkilltest(skilltestrepository.getByskillsubskill(skillName, user.getCompanyId(), subSkill));
		
		skillsteprepository.save(skillStep);

		return status;
		
	}
	
	//get list of stepnames all [[id,ps,cs,stpnm1],[id,ps,cs,stpnm2],[],[],[],[]...] = main table
	@ResponseBody
	@RequestMapping(value = "/getSkillStep",method=RequestMethod.POST)
	public String[][] getSkillStep(HttpServletRequest request, HttpServletResponse response){
		User user = (User)request.getSession().getAttribute("user");
		String[][] list_skill_step = skillsteprepository.getSkillStepList(user.getCompanyId());
		
		return list_skill_step;
	}
	
	//get testid , name list for all tests.
	@ResponseBody
	@RequestMapping(value = "/fetchtestnames",method=RequestMethod.POST)
	public List<List<String>> fetchtestnames(HttpServletRequest request, HttpServletResponse response){
		User user = (User)request.getSession().getAttribute("user");
		String compid = user.getCompanyId();
		List<Test> tests_list = testRepository.findTestsByCompanyId(user.getCompanyId());
		List<List<String>> test_id_nm = new ArrayList<List<String>>();
		/*
		 * test_id_nm = [[testid1,testname1],[testid2,testname2],.....]
		 */
		for(Test t : tests_list) {
			List<String> test_nm_id_for_one = new ArrayList<String>();
			test_nm_id_for_one.add(String.valueOf( t.getId() ));
			test_nm_id_for_one.add(t.getTestName());
			test_id_nm.add(test_nm_id_for_one);
		}
		return test_id_nm;
	}
	
	//test details: [[testname, skillLevel, required, id] [] [] []...... ]  Test table
	@ResponseBody
	@RequestMapping(value = "/getStepTestDetails",method=RequestMethod.POST)
	public String[][] getStepTestDetails(HttpServletRequest request, HttpServletResponse response,
					@RequestParam String stepname, @RequestParam String skill, @RequestParam String subskill) {
		
		User user = (User)request.getSession().getAttribute("user");
		String[][] list_step_test_details = steptestservice.getTestNameAndSkillLevelForStep(stepname, skill, subskill, user.getCompanyId());
		return list_step_test_details;
	}
	
	//change step name (edit)
	@ResponseBody
	@RequestMapping(value = "/editStepn",method=RequestMethod.POST)
	public String editStepn(HttpServletRequest request, HttpServletResponse response,
			@RequestParam String par_skill,
			@RequestParam String child_skill,
			@RequestParam String oldstepn,
			@RequestParam String newstepn	){
		User user = (User)request.getSession().getAttribute("user");
		SkillTest st = skilltestrepository.getByskillsubskill(par_skill, user.getCompanyId(), child_skill);
		SkillStep stp = skillsteprepository.getStepByParChildId(user.getCompanyId(), st, oldstepn);
		stp.setStepName(newstepn);
		skillsteprepository.save(stp);
		return "edited";
	}
	
	
	//delete test, steps for given par and childskill.
	@ResponseBody
	@RequestMapping(value = "/delLearnPath",method=RequestMethod.POST)
	public String delLearnPath(HttpServletRequest request, HttpServletResponse response,
			@RequestParam String skill,
			@RequestParam String subs){
		User user = (User)request.getSession().getAttribute("user");
		SkillTest skt = skilltestrepository.getByskillsubskill(skill, user.getCompanyId(), subs);
		List<SkillStep> lststp = skillsteprepository.findAll();
		for(SkillStep stp: lststp) {
			SkillTest skt_inner = stp.getSkilltest();
			String compId = skt_inner.getCompanyId();
			String skn = skt_inner.getParentSkill();
			String subsnm = skt_inner.getChildSkill();
			if(compId.equals(skt.getCompanyId()) && skn.equals(skt.getParentSkill()) && subsnm.equals(skt.getChildSkill())) {
				List<StepTest> stptstlst = steptestrepository.getBySkillStep(stp);
				for(StepTest test : stptstlst) {
					steptestrepository.delete(test);
				}
				skillsteprepository.delete(stp);
			}
		}
		return "All dlt";
	}
	
	//get step names for user selected parent and child skill [[stp_id,step_nm],[][]...]
	@ResponseBody
	@RequestMapping(value = "/fetchstepname",method=RequestMethod.POST)
	public String[][] fetchstepnames(HttpServletRequest request, HttpServletResponse response,
			@RequestParam String par_skill, @RequestParam String child_skill){
		User user = (User)request.getSession().getAttribute("user");
		String[][] list_step_names = skillsteprepository.getStepNamesByParentChild(user.getCompanyId(), par_skill, child_skill);
		return list_step_names;
	}
	
	//to work with sortable UI user will send hyphen separated list of step names in specified order
	@ResponseBody
	@RequestMapping(value = "/saveorder",method=RequestMethod.POST)
	public String saveorder(HttpServletRequest request, HttpServletResponse response,
			@RequestParam String stepn_ord){
		User user = (User)request.getSession().getAttribute("user");
		String[] stepord = stepn_ord.split("-");//orderwise list of stepnames
		
		SkillStep step = null;
		List<SkillStep> skillStep_list = skillsteprepository.findAll();//all steps
		for(int i = 0; i<stepord.length; i++) {
			for(int j=0;j<skillStep_list.size();j++) {
				step = skillStep_list.get(j);
				if(stepord[i].equalsIgnoreCase(step.getStepName())) {
					step.setStep_order(i+1);
					skillsteprepository.save(step);					
				}
			}
		}
		
		
		return "success";
	}
	
	//add new test 
	@ResponseBody
	@RequestMapping(value = "/addteststep1", method=RequestMethod.POST)
	public String addteststep1(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(name = "stepName",   required = false) String stepName,
			@RequestParam(name = "skillName",  required = false) String skillName,
			@RequestParam(name = "subSkill",   required = false) String subSkill,
			@RequestParam(name = "testId",   required = false) String testId,
			@RequestParam(name = "teststepstepid",required = false)Long steptestid,
			@RequestParam(name = "level",   required = false) String level,
			@RequestParam(name = "testName",   required = false) String testName) {
		String status="";
		User user = (User)request.getSession().getAttribute("user");
		StepTest stepTest = null;
		
		if( steptestid == null ) {
			stepTest = new StepTest();
			status = "New Test Added Successfully";
		}
		else {
			stepTest = steptestrepository.findById( steptestid ).get();
			status = "Test Updated Successfully";
		}
		
		stepTest.setCompanyId(user.getCompanyId());
		stepTest.setCompanyName(user.getCompanyName());
		stepTest.setTestName(testName);
		stepTest.setLevel(level);
		stepTest.setRequired(Boolean.valueOf(false));
		stepTest.setTestId(testId);
		SkillStep req_skstp = null;
		List<SkillStep> skillsteplist = skillsteprepository.findAll();
		SkillTest sktest = skilltestrepository.getByskillsubskill(skillName, user.getCompanyId(), subSkill);
		String skn = sktest.getParentSkill();
		String subskname = sktest.getChildSkill();
		for( SkillStep x: skillsteplist ) {
			if( x.getStepName().equalsIgnoreCase(stepName) ) {
				if( skn.equalsIgnoreCase(skillName) && subskname.equalsIgnoreCase(subSkill)) {
					req_skstp = x;
					break;
				}	
			}
		}
		
		stepTest.setSkillStep(req_skstp);
		steptestrepository.save(stepTest);
		
		return status;
	}
	
	//delete step (from sortable UI)
	@ResponseBody
	@RequestMapping(value = "/deleteStep", method = RequestMethod.POST)
	public String deleteStep(HttpServletRequest request, HttpServletResponse response,@RequestParam String id){
		User user = (User)request.getSession().getAttribute("user");
		long l_id = Long.valueOf(id);
		SkillStep stp = skillsteprepository.findById(l_id).get();
		String compId = stp.getCompanyId();
		String stepN = stp.getStepName();
		String parN = stp.getSkilltest().getParentSkill();
		String chiN = stp.getSkilltest().getChildSkill();
		List<StepTest> tests = steptestrepository.findAll();
		for(StepTest test: tests) {
			SkillStep test_stp = test.getSkillStep();
			String t_compId = test_stp.getCompanyId();
			String t_stepN = test_stp.getStepName();
			String t_parN = test_stp.getSkilltest().getParentSkill();
			String t_chiN = test_stp.getSkilltest().getChildSkill();
			if(compId.equals(t_compId) && stepN.equals(t_stepN) && parN.equals(t_parN) && chiN.equals(t_chiN)) {
				steptestrepository.delete(test);
			}
		}
		skillsteprepository.deleteById(l_id);
		return "success";
	}
	
	//required or not toggle
	@ResponseBody					
	@RequestMapping(value = "/setReqTest", method = RequestMethod.POST)
	public String setReqTest(HttpServletRequest request, HttpServletResponse response,
			@RequestParam String id,
			@RequestParam String isReq){
		long l_id = Long.valueOf(id);
		Boolean isReqToSet = Boolean.valueOf(isReq);
		StepTest st = steptestrepository.findById(l_id).get();
		st.setRequired(isReqToSet);
		steptestrepository.save(st);
		return "success";
	}
	
	//delete test
	@ResponseBody					
	@RequestMapping(value = "/delTest", method = RequestMethod.POST)
	public String delTest(HttpServletRequest request, HttpServletResponse response,
			@RequestParam String id){
		long l_id = Long.valueOf(id);
		steptestrepository.deleteById(l_id);
		return "Test Deleted";
	}
}