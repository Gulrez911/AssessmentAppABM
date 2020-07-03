package com.assessment.services;

import java.util.List;
import com.assessment.data.SkillTest;

public interface SkillTestService {
    
	//List<SkillTest> getUnique();

	public void createSkillTest(SkillTest skillTest);
	
	public List<SkillTest> getskillTest();

	public void updateSkill(SkillTest skillTest);
	
	public List<String> findAllRecord(String skillname);
	/* public SkillTest deleteSkillName(String skillname);*/

	public int deleteSkillName(String skillName);
	
	 SkillTest getByskillsubskill(String skill , String compId, String subskill);
	
    
	
	/* public String findAllRecord(String skillname); */

}
