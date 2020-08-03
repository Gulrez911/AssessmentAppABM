package com.assessment.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.assessment.data.SkillTestLabel;
import com.assessment.repositories.SkillTestLabelRepository;
import com.assessment.services.SkillTestLabelService;

@Service
@Transactional
public class SkillTestLabelServiceImpl implements SkillTestLabelService {
	
	@Autowired
	SkillTestLabelRepository skillTestLabelRepository;

	@Override
	public List<SkillTestLabel> findAll() {
		return skillTestLabelRepository.findAll();
		
	}

}
