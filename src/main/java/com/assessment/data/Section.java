package com.assessment.data;

import javax.persistence.Cacheable;
import javax.persistence.Entity;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CacheConcurrencyStrategy;
/**
 * pk - sectionName & testName & companyId
 * @author jsutaria
 *
 */
@Entity
@Cacheable
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Section extends Base{

	//types of questions in it like java,java+spring,..
	@NotNull
	String sectionName;
	
	@NotNull
	String testName;
	
	Integer sectionTimeInMinutes;
	
	Integer percentQuestionsAsked = 100;
	
	Integer noOfQuestions;
	
	Integer sectionorder;
	
	public Integer getSectionorder() {
		return sectionorder;
	}

	public void setSectionorder(Integer sectionorder) {
		this.sectionorder = sectionorder;
	}

	@Transient
	Integer noOfQuestionsToBeAsked;

	public String getSectionName() {
		return sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	public Integer getSectionTimeInMinutes() {
		return sectionTimeInMinutes;
	}

	public void setSectionTimeInMinutes(Integer sectionTimeInMinutes) {
		this.sectionTimeInMinutes = sectionTimeInMinutes;
	}

	public Integer getPercentQuestionsAsked() {
		return percentQuestionsAsked;
	}

	public void setPercentQuestionsAsked(Integer percentQuestionsAsked) {
		this.percentQuestionsAsked = percentQuestionsAsked;
	}

	public Integer getNoOfQuestions() {
		return noOfQuestions;
	}

	public void setNoOfQuestions(Integer noOfQuestions) {
		this.noOfQuestions = noOfQuestions;
	}

	public Integer getNoOfQuestionsToBeAsked() {
		return (Integer) (getNoOfQuestions() * getPercentQuestionsAsked()/100);
	}

	public void setNoOfQuestionsToBeAsked(Integer noOfQuestionsToBeAsked) {
		this.noOfQuestionsToBeAsked = noOfQuestionsToBeAsked;
	}
	
	
}
