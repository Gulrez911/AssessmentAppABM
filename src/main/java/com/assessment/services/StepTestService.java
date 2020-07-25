package com.assessment.services;

import java.util.List;

import com.assessment.data.SkillStep;
import com.assessment.data.StepTest;

public interface StepTestService {
	public String[][] getTestNameAndSkillLevelForStep(String stepname, String skill, String subskill, String companyId);
	
	public List<StepTest> getBySkillStep(SkillStep skstp);
	public StepTest getByTestId(String testId);
	public String[] getParentSkillNames();
}