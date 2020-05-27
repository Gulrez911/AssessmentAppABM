package com.assessment.data;

import javax.persistence.Entity;

@Entity
public class SkillTest extends Base {

	private String skillName;
	private String subSkill;

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

	@Override
	public String toString() {
		return "SkillTest [skillName=" + skillName + ", subSkill=" + subSkill + "]";
	}

}