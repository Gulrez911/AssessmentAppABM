package com.assessment.data;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

@Entity
public class SkillTestLabel extends Base {

	private String parentSkill;
	private String childSkill;
	private String testName;
	private String label;
	private String level;
	
	
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	@ManyToOne
    Test test;
	public Test getTest() {
		return test;
	}
	public void setTest(Test test) {
		this.test = test;
	}
	public String getParentSkill() {
		return parentSkill;
	}
	public void setParentSkill(String parentSkill) {
		this.parentSkill = parentSkill;
	}
	public String getChildSkill() {
		return childSkill;
	}
	public void setChildSkill(String childSkill) {
		this.childSkill = childSkill;
	}
	public String getTestName() {
		return testName;
	}
	public void setTestName(String testName) {
		this.testName = testName;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	
	
	@Override
	public String toString() {
		return "SkillTestLabel [parentSkill=" + parentSkill + ", childSkill=" + childSkill + ", testName=" + testName
				+ ", label=" + label + ", level=" + level + ", test=" + test + "]";
	}
	
	
}
