package com.assessment.data;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;

// created by Hussain

@Entity
public class PracticeCode extends Base {

	@Column(length = 2000)
	private int langId;

	@Column(length = 2000)
	private String lang;

	@Column(length = 2000)
	public String code;

	@Column(length = 2000)
	private String input;

	@Column(length = 2000)
	private String output;
	
	@Column(length = 2000)
	private String codeName;
	
	public String getCodeName() {
		return codeName;
	}

	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}

	@Column
	Date createDate;
	


	public String getOutput() {
		return output;
	}

	public void setOutput(String output) {
		this.output = output;
	}

	public String getInput() {
		return input;
	}

	public void setInput(String input) {
		this.input = input;
	}

	public int getLangId() {
		return langId;
	}

	public void setLangId(int langId) {
		this.langId = langId;
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}


	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Override
	public String toString() {
		return "PracticeCode [langId=" + langId + ", lang=" + lang + ", code=" + code + ", input=" + input + ", output="
				+ output + ", codeName=" + codeName + ", createDate=" + createDate + "]";
	}

	


}
