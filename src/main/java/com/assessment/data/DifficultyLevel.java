package com.assessment.data;

public enum DifficultyLevel {
	
	EASY("EASY"), MEDIUM("MEDIUM"), DIFFICULT("DIFFICULT");
	
	// created by suhel
	String level;
	private DifficultyLevel(String level) {
		this.level = level;
	}
	public String getLevel() {
		return level;
	}
	
	
}
