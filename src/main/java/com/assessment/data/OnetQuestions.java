package com.assessment.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Transient;

@Entity
public class OnetQuestions extends Base{
	
	@Column(length=2000)
	String questionText;

	//	@ExcelCell(1)   
	@Lob
	String choice1;
	
//	@ExcelCell(2)   
	@Lob
	String choice2;
	
//	@ExcelCell(3)   
	@Lob
	String choice3;
	
//	@ExcelCell(4)   
	@Lob
	String choice4;
	
//	@ExcelCell(5)   
	@Lob
	String choice5;
	
	@Transient
	Boolean one = false;
	@Transient
	Boolean two = false;
	@Transient
	Boolean three = false;
	@Transient
	Boolean four = false;
	@Transient
	Boolean five = false;
	
	
	
	@Column(length=200)
	String rightChoices = "";
	
//	@ExcelCell(8)   
	private String qualifier1;
	
	//@ExcelCell(9)   
	private String qualifier2;
	
//@ExcelCell(10)   
	private String qualifier3;
	
	//@ExcelCell(11)   
	private String qualifier4;
	
	//@ExcelCell(12)   
	private String qualifier5;

	public String getQualifier1() {
		return qualifier1;
	}

	public void setQualifier1(String qualifier1) {
		this.qualifier1 = qualifier1;
	}

	public String getQualifier2() {
		return qualifier2;
	}

	public void setQualifier2(String qualifier2) {
		this.qualifier2 = qualifier2;
	}

	public String getQualifier3() {
		return qualifier3;
	}

	public void setQualifier3(String qualifier3) {
		this.qualifier3 = qualifier3;
	}

	public String getQualifier4() {
		return qualifier4;
	}

	public void setQualifier4(String qualifier4) {
		this.qualifier4 = qualifier4;
	}

	public String getQualifier5() {
		return qualifier5;
	}

	public void setQualifier5(String qualifier5) {
		this.qualifier5 = qualifier5;
	}

	public String getChoice1() {
		return choice1;
	}

	public void setChoice1(String choice1) {
		this.choice1 = choice1;
	}

	public String getChoice2() {
		return choice2;
	}

	public void setChoice2(String choice2) {
		this.choice2 = choice2;
	}

	public String getChoice3() {
		return choice3;
	}

	public void setChoice3(String choice3) {
		this.choice3 = choice3;
	}

	public String getChoice4() {
		return choice4;
	}

	public void setChoice4(String choice4) {
		this.choice4 = choice4;
	}

	public String getChoice5() {
		return choice5;
	}

	public void setChoice5(String choice5) {
		this.choice5 = choice5;
	}

	public Boolean getOne() {
		return one;
	}

	public void setOne(Boolean one) {
		this.one = one;
	}

	public Boolean getTwo() {
		return two;
	}

	public void setTwo(Boolean two) {
		this.two = two;
	}

	public Boolean getThree() {
		return three;
	}

	public void setThree(Boolean three) {
		this.three = three;
	}

	public Boolean getFour() {
		return four;
	}

	public void setFour(Boolean four) {
		this.four = four;
	}

	public Boolean getFive() {
		return five;
	}

	public void setFive(Boolean five) {
		this.five = five;
	}

	public String getRightChoices() {
		return rightChoices;
	}

	public void setRightChoices(String rightChoices) {
		this.rightChoices = rightChoices;
	}
	
	public String getQuestionText() {
		return questionText;
	}

	public void setQuestionText(String questionText) {
		this.questionText = questionText;
	}
	

}
