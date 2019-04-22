package com.assessment.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.assessment.data.Company;
import com.assessment.data.OnetQuestions;
import com.assessment.data.Question;
import com.assessment.repositories.OnetQsRepository;
import com.assessment.repositories.QuestionRepository;
import com.assessment.services.OnetQsService;

@Service
@Transactional
public class OnetQsServiceImpl implements OnetQsService{
	
	@Autowired
	OnetQsRepository onetqsrepository;

	@Override
	public List<OnetQuestions> showOnetQuestions() {
		return onetqsrepository.displayonetqs();
	}
	

}
