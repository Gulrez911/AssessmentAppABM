package com.assessment.repositories;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.assessment.data.Test;

public interface TestRepository extends JpaRepository<com.assessment.data.Test, Long> {

	@Query("SELECT t FROM Test t WHERE t.testName=:testName and t.companyId=:companyId")
	com.assessment.data.Test findByPrimaryKey(@Param("testName") String testName, @Param("companyId") String companyId);

	@Query("SELECT t FROM Test t WHERE  t.companyId=:companyId")
	List<com.assessment.data.Test> findByCompanyId(@Param("companyId") String companyId);

	@Query(value = "SELECT t FROM Test t WHERE  t.companyId=:companyId", countQuery = "SELECT COUNT(*) FROM Test t WHERE  t.companyId=:companyId")
	Page<com.assessment.data.Test> findByCompanyId(@Param("companyId") String companyId, Pageable pageable);

	@Query("SELECT t FROM Test t WHERE t.companyId=:companyId and t.testName LIKE %:testName%")
	public List<Test> searchTests(@Param("companyId") String companyId, @Param("testName") String testName);

	@Query(value = "SELECT t FROM Test t WHERE t.companyId=:companyId and t.testName LIKE %:testName%", countQuery = "SELECT COUNT(*) FROM Test t WHERE t.companyId=:companyId and t.testName LIKE %:testName%")
	Page<com.assessment.data.Test> searchTests(@Param("companyId") String companyId, @Param("testName") String testName,
			Pageable pageable);

	@Query("SELECT t FROM Test t WHERE t.id=:testId and t.companyId=:companyId")
	com.assessment.data.Test findTestById(@Param("testId") Long TestId, @Param("companyId") String companyId);
	
	@Query("SELECT t FROM Test t WHERE t.id=:testId")
	com.assessment.data.Test findTestById(@Param("testId") Long TestId);
	
	@Query(value = "SELECT t FROM Test t WHERE t.companyId=:companyId", countQuery = "SELECT COUNT(*) FROM Test t WHERE t.companyId=:companyId")
	public Page<Test> findTestByCompanyIdAndPageNumber(@Param("companyId") String companyId,Pageable pageable);

	
	Page<Test> findAllByCompanyId(String companyId, Pageable pageable);

	Page<Test> findAllByCompanyIdAndTestNameContainingIgnoreCase(String companyId, String searchText,Pageable pageable);
	
	//Compete
//	List<Test> findAllByTestName(String companyId);
	
	@Query("SELECT testName FROM Test t WHERE  t.companyId=:companyId")
	List<Test> testList(@Param("companyId") String companyId);


	@Query("SELECT t FROM Test t WHERE  t.companyId=:companyId and t.testName is not null and t.id not in (select st.testId from StepTest st where st.companyId=:companyId)")
	List<Test> findTestsByCompanyId(@Param("companyId") String companyId);

	
	@Query("Select t.testName FROM Test t where t.companyId=:companyId")
	List<Test> findTest(@Param("companyId") String companyId);
	
	@Query("Select t.testName FROM Test t where t.qualifier1=:skill")
	List<Test> findTestName(@Param("skill") String skill);
	
	@Query("Select t FROM Test t where t.testName=:tName")
	Test  findAllByTestName(@Param("tName") String tName);


}
