package com.assessment.data;

import javax.persistence.Entity;

@Entity
public class SkillTest extends Base {

	private String parentSkill;
	private String childSkill;
	private String testName;
	private Boolean isCheckedFlag=false;

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

	public Boolean getIsCheckedFlag() {
		return isCheckedFlag;
	}

	public void setIsCheckedFlag(Boolean isCheckedFlag) {
		this.isCheckedFlag = isCheckedFlag;
	}

	@Override
	public String toString() {
		return "SkillTest [parentSkill=" + parentSkill + ", childSkill=" + childSkill + ", testName="
				+ testName + ", isCheckedFlag=" + isCheckedFlag + "]";
	}
}
