package com.assessment.web.dto;

public class CompeteDto {
	
	String skillName;
	
	String challenge;
	
	Long totalTestCount;
	
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
	
	
	@Override
	public String toString() {
		return "CompeteDto [skillName=" + skillName + ", challenge=" + challenge + ", totalTestCount=" + totalTestCount
				+ "]";
	}
	
	
	

}
