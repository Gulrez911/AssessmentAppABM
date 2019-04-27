package com.assessment.services;

import java.util.List;

import com.assessment.data.OnetString;

public interface OnetstringService {
	
	public void saveString(OnetString onetstring);
	public List<OnetString> getData(String email,String page);
	public List<OnetString> getall(double rand);
	public OnetString gellbypage(double rand,int page);

}
