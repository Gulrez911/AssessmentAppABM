package com.assessment.services;

import java.util.List;

import com.assessment.data.Compete;


public interface CompeteService {

	public List<Compete> findAllByCompanyId(String companyId);
	
	public List<Compete> findBySkillNameAndChallengeAndCompanyId(String skillName, String challenge, String companyId);
	
	public List<Compete> findBySkillNameAndChallenge(String skillName, String challenge);
	
	public Compete findByIdAndCompanyId(Long id,String companyId); 
	
	public List<Object> competeListCount();
	
}
