package com.assessment.repositories;

import java.util.List;

import javax.ws.rs.QueryParam;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.assessment.data.SkillTest;

@Repository
public interface SkillTestRepository extends JpaRepository<SkillTest, Long>{
	
	/*
	 * @Query("SELECT distinct c.skillname FROM SkillTest c WHERE c.skillname =:skillname"
	 * ) public String findAllRecord(@QueryParam("skillname") String skillname);
	 */

	

}
