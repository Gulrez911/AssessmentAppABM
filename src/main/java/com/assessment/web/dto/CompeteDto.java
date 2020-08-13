package com.assessment.web.dto;

import java.util.ArrayList;
import java.util.List;

public class CompeteDto {
	
	String skillName;
	
	String challenge;
	
	Long totalTestCount;
	
	String testName;
	Long testId;
	
	String fName;
	String lName;
	Integer rank;
	Float score;
	
	
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
	public Integer getRank() {
		return rank;
	}
	public void setRank(Integer rank) {
		this.rank = rank;
	}
	public Float getScore() {
		return score;
	}
	public void setScore(Float score) {
		this.score = score;
	}
	
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	
	@Override
	public String toString() {
		return "CompeteDto [skillName=" + skillName + ", challenge=" + challenge + ", totalTestCount=" + totalTestCount
				+ ", testName=" + testName + ", testId=" + testId + ", fName=" + fName + ", lName=" + lName + ", rank="
				+ rank + ", score=" + score + ", dtoList=" + dtoList + "]";
	}
	
	
}
