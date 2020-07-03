package com.assessment.data;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity
public class StepTest extends Base{
	String testName;
	
	@Transient
	String level;
	
	@ManyToOne
	SkillStep skillStep;
		
	@Enumerated(EnumType.STRING)
	private SkillLevel skillLevel;
	
	Boolean required;
	
	public Boolean getRequired() {
		return required;
	}
	public void setRequired(Boolean required) {
		this.required = required;
	}
	public String getLevel() {
		return getSklvl().getLevel();
	}
	public void setLevel(String level) {
		this.level = level;
		setSklvl(SkillLevel.valueOf(level)); 
	}
	
	public SkillLevel getSklvl() {
		return skillLevel;
	}
	public void setSklvl(SkillLevel sklvl) {
		this.skillLevel = sklvl;
	}

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	public SkillStep getSkillStep() {
		return skillStep;
	}

	public void setSkillStep(SkillStep skillStep) {
		this.skillStep = skillStep;
	}

}
