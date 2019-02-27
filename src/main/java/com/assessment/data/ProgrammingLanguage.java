package com.assessment.data;

public enum ProgrammingLanguage {

	
	// Created by Suhel
	
JAVA("JAVA"), C("C"), CPLUSPLUS("CPLUSPLUS"),  DotNet("DotNet"), CHASH("CHASH"), PYTHON("PYTHON");
	
	String language;
	private ProgrammingLanguage(String language) {
		this.language = language;
	}
	public String getLanguage() {
		return language;
	}
}
