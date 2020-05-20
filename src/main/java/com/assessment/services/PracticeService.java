package com.assessment.services;

import java.util.List;

import com.assessment.data.PracticeCode;

public interface PracticeService {

	public void save(PracticeCode practiceCode);
	
	public List<PracticeCode> findAllPracticeCode();
	
	public PracticeCode findByDate(Long id);
	
	public void updateCode(PracticeCode pr);

	

}
