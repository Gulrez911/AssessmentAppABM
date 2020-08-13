package com.assessment.services;

import java.util.List;

import com.assessment.data.SkillTest;

public interface SkillTestService {

	public void createSkillTest(SkillTest skillTest);

	public List<SkillTest> getskillTest();
	
	public void updateSkill(SkillTest skillTest);
	
	public List<String> findAllRecord(String skillname);
	/* public SkillTest deleteSkillName(String skillname);*/

	public int deleteSkillName(String skillName);
	
	 SkillTest getByskillsubskill(String skill , String compId, String subskill);
<<<<<<< HEAD
	 SkillTest getByskillsubskill(String skill , String subskill);
=======
>>>>>>> branch 'master' of https://github.com/Gulrez911/AssessmentAppABM.git
	
	/* public String findAllRecord(String skillname); */

		public List<SkillTest> findUniqueParentSkill(String companyId);

		public List<SkillTest> findAllByCompanyId(String companyId);
}
