package com.assessment.data;

import javax.persistence.Entity;
import javax.persistence.Transient;

@Entity
public class SkillTest extends Base {

	private String skillName;
	private String subSkill;
    private String testName; 
    @Transient
    private boolean isCheckedFlag;
	
	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	public String getSkillName() {
		return skillName;
	}

	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}

	public String getSubSkill() {
		return subSkill;
	}

	public void setSubSkill(String subSkill) {
		this.subSkill = subSkill;
	}

	public boolean getIsCheckedFlag() {
		return isCheckedFlag;
	}

	public void setIsCheckedFlag(boolean isCheckedFlag) {
		this.isCheckedFlag = isCheckedFlag;
	}

	@Override
	public String toString() {
		return "SkillTest [skillName=" + skillName + ", subSkill=" + subSkill + ", testName=" + testName
				+ ", isCheckedFlag=" + isCheckedFlag + ", id=" + id + ", createDate=" + createDate + ", updateDate="
				+ updateDate + ", createdBy=" + createdBy + ", updatedBy=" + updatedBy + ", getTestName()="
				+ getTestName() + ", getSkillName()=" + getSkillName() + ", getSubSkill()=" + getSubSkill()
				+ ", getIsCheckedFlag()=" + getIsCheckedFlag() + ", getCompanyId()=" + getCompanyId()
				+ ", getCompanyName()=" + getCompanyName() + ", getCompanyDescription()=" + getCompanyDescription()
				+ ", getVersion()=" + getVersion() + ", getCreateDate()=" + getCreateDate() + ", getUpdateDate()="
				+ getUpdateDate() + ", getCreatedBy()=" + getCreatedBy() + ", getUpdatedBy()=" + getUpdatedBy()
				+ ", getId()=" + getId() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}

}


	


