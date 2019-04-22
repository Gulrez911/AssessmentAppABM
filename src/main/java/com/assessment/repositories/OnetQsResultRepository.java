package com.assessment.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.assessment.data.OnetQsAllResult;



public interface OnetQsResultRepository extends JpaRepository<OnetQsAllResult,Long>{
	
	@Query("SELECT q FROM OnetQsAllResult q WHERE q.email=:email order by q.updateDate DESC")
	public List<OnetQsAllResult> displayallresult(@Param("email") String email);
		
	
	
}
