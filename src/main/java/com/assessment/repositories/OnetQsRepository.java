package com.assessment.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.assessment.data.OnetQuestions;
import com.assessment.data.Question;


public interface OnetQsRepository extends JpaRepository<OnetQuestions,Long> {
	
	@Query("SELECT q FROM OnetQuestions q")
    public List<OnetQuestions> displayonetqs();
	

}
