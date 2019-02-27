package com.assessment.data;

public enum QuestionType {
	
	// created by Suhel
	
MCQ("MCQ"), CODING("CODING");
	
	String type;
	private QuestionType(String type) {
		this.type = type;
	}
	public String getType() {
		return type;
	}
	
	
	

}
