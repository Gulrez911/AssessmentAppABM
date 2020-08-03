package com.assessment.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.assessment.data.Compete;

public interface CompeteRepository extends JpaRepository<Compete, Long> {

	/*
	 * @Query("SELECT skillName,challenge,count(testName) as totalTestCount FROM Compete"
	 * + "GROUP BY skillName,challenge" + "HAVING COUNT(testName) > 0") List<Object>
	 * competeListCount();
	 */
	
	@Query("SELECT skillName,challenge,count(testName) as totalTestCount FROM Compete"
			+ "    GROUP BY skillName,challenge" + "    HAVING COUNT(testName) > 0")
	List<Object> competeListCount();
	
	
	List<Compete> findAllByCompanyId(String companyId);

	List<Compete> findBySkillNameAndChallengeAndCompanyId(String skillName, String challenge, String companyId);

	Compete findBySkillNameAndChallengeAndTestNameAndCompanyId(String skillName, String challenge, String testName,String companyId);

	Compete findByIdAndCompanyId(Long id, String companyId);
	
	List<Compete> findBySkillNameAndChallenge(String skillName, String challenge);
	
	
//	User Side
	@Query("SELECT DISTINCT c.skillName FROM Compete c where c.challenge=:challenge")
	List<Compete> findDistinctSkillName(@Param("challenge") String challenge);
	
	
	
}
