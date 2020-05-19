package com.assessment.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.assessment.data.PracticeCode;
import com.assessment.data.Question;

@Repository
public interface PracticeRepository extends JpaRepository<PracticeCode, Long> {

   @Query(value="SELECT * FROM assessment.practicecode", nativeQuery = true)
   List<PracticeCode> findAllList();
   
   @Query("SELECT p FROM PracticeCode p WHERE p.createDate=:createDate and p.companyId=:companyId")
	PracticeCode findByPrimaryKey(@Param("createDate") Date createDate , @Param("companyId") String companyId);
   
  

}
