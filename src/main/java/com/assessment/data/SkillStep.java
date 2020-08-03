package com.assessment.data;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

@Entity
public class SkillStep extends Base {
	String stepName;
		
	int step_order;
	
	public int getStep_order() {
		return step_order;
	}
	public void setStep_order(int step_order) {
		this.step_order = step_order;
	}
	
	
	@ManyToOne
	SkillTest skilltest;
	
	public SkillTest getSkilltest() {
		return skilltest;
	}
	public void setSkilltest(SkillTest skilltest) {
		this.skilltest = skilltest;
	}
	
	public String getStepName() {
		return stepName;
	}
	public void setStepName(String stepName) {
		this.stepName = stepName;
	}
	
	
	
}
