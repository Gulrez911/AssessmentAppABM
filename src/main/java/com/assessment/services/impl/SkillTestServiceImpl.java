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
	public List<SkillTest> findUniqueParentSkill(String companyId) {
		// TODO Auto-generated method stub
		return skillTestRepository.findUniqueParentSkill(companyId);
	}

	 

	@Override
	public void updateSkill(SkillTest skillTest) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<SkillTest> findAllByCompanyId(String companyId) {
		return skillTestRepository.findAllByCompanyId(companyId);
	}

}
