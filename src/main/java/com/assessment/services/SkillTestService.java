package com.assessment.services;

import java.util.List;

import javax.ws.rs.QueryParam;

import com.assessment.data.SkillTest;

public interface SkillTestService {
    
	public void createSkillTest(SkillTest skillTest);
	
	public List<SkillTest> getskillTest();

	public void updateSkill(SkillTest skillTest);
	
	/* public String findAllRecord(String skillname); */
}
