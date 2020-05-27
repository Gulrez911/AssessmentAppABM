package com.assessment.services;

import java.util.List;

import com.assessment.data.SkillTest;

public interface SkillTestService {
    
	public void createSkillTest(SkillTest skillTest);
	
	public List<SkillTest> getskillTest();

	public void updateSkill(SkillTest skillTest);
}
