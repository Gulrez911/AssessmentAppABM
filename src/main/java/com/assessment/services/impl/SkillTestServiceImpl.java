package com.assessment.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.assessment.data.SkillTest;
import com.assessment.repositories.SkillTestRepository;
import com.assessment.services.SkillTestService;

@Service
@Transactional
public class SkillTestServiceImpl implements SkillTestService {

	@Autowired
	SkillTestRepository skillTestRepository;

	@Override
	public void createSkillTest(SkillTest skillTest) {
		skillTestRepository.save(skillTest);

	}
	
	@Override
	public List<SkillTest> getskillTest() {
		// TODO Auto-generated method stub
		return skillTestRepository.findAll();
	}

	@Override
	public void updateSkill(SkillTest skillTest) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<String> findAllRecord(String skillname) {
		// TODO Auto-generated method stub
		return skillTestRepository.findAllRecord(skillname);
	}

	@Override
	public int deleteSkillName(String skillname) {
		// TODO Auto-generated method stub
		return skillTestRepository.deleteSkillName(skillname);
	}

	@Override
	public SkillTest getByskillsubskill(String skill, String compId, String subskill) {
		// TODO Auto-generated method stub
		
		return skillTestRepository.getByskillsubskill(skill, compId, subskill);
	}

	@Override
	public List<SkillTest> findUniqueParentSkill(String companyId) {
		// TODO Auto-generated method stub
		return skillTestRepository.findUniqueParentSkill(companyId);
	}
	 
	@Override
	public List<SkillTest> findAllByCompanyId(String companyId) {
		return skillTestRepository.findAllByCompanyId(companyId);
	}

	@Override
	public SkillTest getByskillsubskill(String skill, String subskill) {
		// TODO Auto-generated method stub
		return skillTestRepository.getByskillsubskill(skill, subskill);
	}


//	@Override
//	public List<SkillTest> getUnique() {
//		// TODO Auto-generated method stub
//		return skillTestRepository.uniqueSkill();
//	}


	/*
	 * @Override public String findAllRecord(String skillname) { // TODO
	 * Auto-generated method stub return
	 * skillTestRepository.findAllRecord(skillname); }
	 */

}
