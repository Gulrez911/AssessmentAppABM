package com.assessment.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.assessment.data.Compete;
import com.assessment.repositories.CompeteRepository;
import com.assessment.services.CompeteService;

@Service
@Transactional
public class CompeteServiceImpl implements CompeteService {
	
	@Autowired
	CompeteRepository competeRepo;

	@Override
	public List<Compete> findAllByCompanyId(String companyId) {
		return competeRepo.findAllByCompanyId(companyId);
	}

	@Override
	public List<Compete> findBySkillNameAndChallengeAndCompanyId(String skillName, String challenge, String companyId) {
		return competeRepo.findBySkillNameAndChallengeAndCompanyId(skillName, challenge, companyId);
	}

	@Override
	public List<Compete> findBySkillNameAndChallenge(String skillName, String challenge) {
		return  competeRepo.findBySkillNameAndChallenge(skillName, challenge);
		 
	}

	@Override
	public Compete findByIdAndCompanyId(Long id, String companyId) {
		return competeRepo.findByIdAndCompanyId(id, companyId);
	}

	@Override
	public List<Object> competeListCount() {
		return competeRepo.competeListCount();
	}

	@Override
	public List<Compete> findDistinctSkillName(String challenge) {
		return competeRepo.findDistinctSkillName(challenge);
	}

}
