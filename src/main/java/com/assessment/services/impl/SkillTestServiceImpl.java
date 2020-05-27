package com.assessment.services.impl;

import java.util.List;

import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;
import org.jvnet.hk2.annotations.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.assessment.Exceptions.AssessmentGenericException;
import com.assessment.data.Skill;
import com.assessment.data.SkillTest;
import com.assessment.repositories.SkillTestRepository;
import com.assessment.services.SkillTestService;

@Service
@Transactional
public class SkillTestServiceImpl implements SkillTestService{

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
		if(skillTest.getId() == null){
			throw new AssessmentGenericException("Skill_Id_Null");
		}
		
		SkillTest skill2 = skillTestRepository.findById(skillTest.getId()).get();
		Mapper mapper = new DozerBeanMapper();
		mapper.map(skillTest, skill2);
		skillTestRepository.save(skill2);
		
	}

}
