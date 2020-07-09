package com.assessment.data;

import javax.persistence.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Compete extends Base {
	private String skillName;
	private String challenge;
	private String testName;
	@JsonIgnore
	private String testId;
	
	
	public String getSkillName() {
		return skillName;
	}
	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}
	public String getChallenge() {
		return challenge;
	}
	public void setChallenge(String challenge) {
		this.challenge = challenge;
	}
	public String getTestName() {
		return testName;
	}
	public void setTestName(String testName) {
		this.testName = testName;
	}
	public String getTestId() {
		return testId;
	}
	public void setTestId(String testId) {
		this.testId = testId;
	}
	
	
	@Override
	public String toString() {
		return "Challenge [skillName=" + skillName + ", challenge=" + challenge + ", testName=" + testName + ", testId="
				+ testId + "]";
	}
	
	

}
