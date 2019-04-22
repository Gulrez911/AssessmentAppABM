package com.assessment.services.impl;

import java.util.List;

import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.assessment.data.OnetQsAllResult;
import com.assessment.data.OnetResults;
import com.assessment.data.Result;
import com.assessment.repositories.OnetQsResultRepository;
import com.assessment.services.OnetQsResultService;

@Service
@Transactional
public class OnetQsResultServiceImpl implements OnetQsResultService{
	
	@Autowired
	OnetQsResultRepository onetqsresultrepository;

	@Transactional
	public void saveResult(Result result) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void saveOnetResult(OnetResults onetresults) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void saveorupdate(OnetQsAllResult onetQsAllResult) {
		// TODO Auto-generated method stub
		
		onetqsresultrepository.save(onetQsAllResult);
	}

	@Override
	public List<OnetQsAllResult> displayallresult(String email) {
		// TODO Auto-generated method stub
		
		return onetqsresultrepository.displayallresult(email);
		
		
	}

	

}
