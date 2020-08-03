package com.assessment.web.dto;

import java.util.ArrayList;
import java.util.List;

public class CompeteDto {
	
	String skillName;
	
	String challenge;
	
	Long totalTestCount;
	
	String testName;
	Long testId;
	
	List<CompeteDto> dtoList = new ArrayList<>();
	
	public List<CompeteDto> getDtoList() {
		return dtoList;
	}
	public void setDtoList(List<CompeteDto> dtoList) {
		this.dtoList = dtoList;
	}
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
	public Long getTotalTestCount() {
		return totalTestCount;
	}
	public void setTotalTestCount(Long totalTestCount) {
		this.totalTestCount = totalTestCount;
	}
	
	

	
	public String getTestName() {
		return testName;
	}
	public void setTestName(String testName) {
		this.testName = testName;
	}
	public Long getTestId() {
		return testId;
	}
	public void setTestId(Long testId) {
		this.testId = testId;
	}
	@Override
	public String toString() {
		return "CompeteDto [skillName=" + skillName + ", challenge=" + challenge + ", totalTestCount=" + totalTestCount
				+ ", testName=" + testName + ", testId=" + testId + ", dtoList=" + dtoList + "]";
	}

	
	
	

}
