package com.assessment.services;

import java.util.List;

import com.assessment.data.OnetQsAllResult;
import com.assessment.data.OnetResults;
import com.assessment.data.Result;

public interface OnetQsResultService {
	
	public void saveorupdate(OnetQsAllResult onetQsAllResult);
	
	public void saveResult(Result result);
	
	public void saveOnetResult(OnetResults onetresults);
	
	public List<OnetQsAllResult> displayallresult(String email);

}
