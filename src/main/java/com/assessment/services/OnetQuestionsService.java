package com.assessment.services;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;

import org.springframework.data.domain.Page;

import com.assessment.data.OnetQuestions;
import com.assessment.data.Question;
public interface OnetQuestionsService {
	
	public void showOnetQuestions(OnetQuestions question);
	
	/* public void createQuestion1(OnetQuestions question) ; */
	
	/*
	 * public List<OnetQuestions> uploadQuestionsFromExcelDoc1(FileInputStream
	 * fileInputStream,File mappingObjectFile);
	 */
	
	public List<OnetQuestions> findQuestions1(String companyId);
	

	public OnetQuestions findById1(Long id);
	
    public boolean canDeleteQuestion1(Long qid);
	
	public void updateQuestion1(Question q);
	
	public void removeQuestion1(Long id);

}
