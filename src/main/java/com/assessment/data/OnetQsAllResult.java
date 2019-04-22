package com.assessment.data;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;

@Entity
public class OnetQsAllResult extends Base{
	
	@Column
	private String name;
	
	@Column
	private String email;
	
	@Column
	private String testName;
   
    @Column
    private String total;
    
    @Column
    private String answers;
    
    @Column
    private String start;
    
    @Column
    private String end;
    
    @Column
    private String area;
    
    @Column
    private String score;
    
    
    @Column
    @Lob
    private String description;


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}


	public String getTestName() {
		return testName;
	}


	public String getTotal() {
		return total;
	}


	public String getAnswers() {
		return answers;
	}


	public String getStart() {
		return start;
	}


	public String getEnd() {
		return end;
	}


	public String getArea() {
		return area;
	}


	public String getScore() {
		return score;
	}


	public String getDescription() {
		return description;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public void setTestName(String testName) {
		this.testName = testName;
	}


	public void setTotal(String total) {
		this.total = total;
	}


	public void setAnswers(String answers) {
		this.answers = answers;
	}


	public void setStart(String start) {
		this.start = start;
	}


	public void setEnd(String end) {
		this.end = end;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public void setScore(String score) {
		this.score = score;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	@Override
	public String toString() {
		return "OnetQsAllResult [name=" + name + ", email=" + email + ", testName=" + testName + ", total=" + total
				+ ", answers=" + answers + ", start=" + start + ", end=" + end + ", area=" + area + ", score=" + score
				+ ", description=" + description + "]";
	}


}
