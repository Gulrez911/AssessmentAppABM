package com.assessment.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.assessment.data.OnetString;
import com.assessment.repositories.onetStringRepository;
import com.assessment.services.OnetstringService;

@Service
@Transactional
public class onetSringServiceImpl implements OnetstringService {

	@Autowired
	onetStringRepository onetstringRepository;

	@Override
	public void saveString(OnetString onetstring) {

		onetstringRepository.save(onetstring);

	}

	@Override
	public List<OnetString> getData(String email, String page) {

		return onetstringRepository.get(email, page);
	}

	@Override
	public List<OnetString> getall(double rand) {
		// String d=String.valueOf(rand);
		return onetstringRepository.getall(rand);
	}

	@Override
	public OnetString gellbypage(double rand, int page) {
		return onetstringRepository.getbypage(rand, page);
	}

}
