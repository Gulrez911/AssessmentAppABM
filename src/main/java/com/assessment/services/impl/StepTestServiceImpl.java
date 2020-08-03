package com.assessment.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.assessment.data.SkillStep;
import com.assessment.data.StepTest;
import com.assessment.repositories.StepTestRepository;
import com.assessment.services.StepTestService;

@Service
@Transactional
public class StepTestServiceImpl implements StepTestService {

	@Autowired
	StepTestRepository steptestrepo;
	@Override
	public String[][] getTestNameAndSkillLevelForStep(String stepname, String skill, String subskill,
			String companyId) {
		// TODO Auto-generated method stub
		return steptestrepo.getTestNameAndSkillLevelForStep(stepname, skill, subskill, companyId);
	}
	@Override
	public List<StepTest> getBySkillStep(SkillStep skstp) {
		// TODO Auto-generated method stub
		return steptestrepo.getBySkillStep(skstp);
	}
	@Override
	public StepTest getByTestId(String testId, String companyId) {
		// TODO Auto-generated method stub
		return steptestrepo.getByTestId(testId, companyId);
	}
	@Override
	public String[] getParentSkillNames(String compId) {
		// TODO Auto-generated method stub
		return steptestrepo.getParentSkillNames(compId);
	}
 
}