package com.assessment.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assessment.data.OnetLogin;
import com.assessment.repositories.OnetLoginRepository;
import com.assessment.services.OnetLoginService;
@Service
public class OnetLoginServiceImpl implements OnetLoginService {
	@Autowired
	private OnetLoginRepository onetLoginRepository;
	@Override
	public void save(OnetLogin onetLogin) {
		onetLoginRepository.save(onetLogin);
	}

}
