package com.assessment.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.assessment.data.SkillTest;

@Repository
public interface SkillTestRepository extends JpaRepository<SkillTest, Long>{

	

}
