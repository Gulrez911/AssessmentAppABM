package com.assessment.services;

import java.util.List;

import com.assessment.data.SkillTest;

public interface SkillTestService {

	// List<SkillTest> getUnique();

	public void createSkillTest(SkillTest skillTest);

	public List<SkillTest> findUniqueParentSkill(String companyId);

	public void updateSkill(SkillTest skillTest);

	public List<SkillTest> findAllByCompanyId(String companyId);
//	public SkillTest findAllRecord(String skillname);
//	/* public SkillTest deleteSkillName(String skillname); */
//
//	public int deleteSkillName(String skillName);
}
