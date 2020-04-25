package com.assessment.services;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;

import com.assessment.data.Question;

public interface QuestionService {
	public void createQuestion(Question question) ;
	
	public Page<Question> findQuestionsByQualifier1AndPage(String companyId, String qualifier1, Integer pageNumber);
	public List<Question> findQuestionsByQualifier1(String companyId, String qualifier1);
	
	public List<Question> categoryExQ(List<Long> ids,String companyId, String qualifier1);

	
	public Page<Question> findQuestionsByQualifier2AndPage(String companyId, String qualifier1, String qualifier2, Integer pageNumber);
	public List<Question> findQuestionsByQualifier2(String companyId, String qualifier1, String qualifier2);
	
	public Page<Question> findQuestionsByQualifier3AndPage(String companyId, String qualifier1, String qualifier2, String qualifier3, Integer pageNumber);
	public List<Question> findQuestionsByQualifier3(String companyId, String qualifier1, String qualifier2, String qualifier3);
	
	public Page<Question> findQuestionsByQualifier4AndPage(String companyId, String qualifier1, String qualifier2, String qualifier3, String qualifier4, Integer pageNumber);
	public List<Question> findQuestionsByQualifier4(String companyId, String qualifier1, String qualifier2, String qualifier3, String qualifier4);
	
	public Page<Question> findQuestionsByQualifier5AndPage(String companyId, String qualifier1, String qualifier2, String qualifier3, String qualifier4, String qualifier5, Integer pageNumber);
	public List<Question> findQuestionsByQualifier5(String companyId, String qualifier1, String qualifier2, String qualifier3, String qualifier4, String qualifier5);
	
	public List<Question> uploadQuestionsFromExcelDoc(FileInputStream fileInputStream,File mappingObjectFile);
	
	public List<Question> findQuestions(String companyId);
	
	public Page<Question> searchQuestions(String companyId,   String searchText, Integer pageNumber);
	public List<Question> searchQuestions( String companyId,   String searchText);
	
	public Page<Question> searchQuestionsExAdd(List<Long> ids,String companyId,   String searchText, Integer pageNumber);

	
	public Question findById(Long id);
	
	public Page<Question> findQuestionsByPage(String companyId, Integer pageNumber);
	
	public List<Question> getAllLevel1Questions(String companyId);
	
	public List<Question> getAllQuestionsExcludeAdded(List<Long> addedQIdList , String companyId);//(id1,id2,id3)
	
	
	public boolean canDeleteQuestion(Long qid);
	
	public void updateQuestion(Question q);
	
	public void removeQuestion(Long id);

	public List<String> getQualifier(String companyId);
}
