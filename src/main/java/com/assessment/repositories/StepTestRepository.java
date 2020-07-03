package com.assessment.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.assessment.data.SkillStep;
import com.assessment.data.StepTest;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

@Repository
public interface StepTestRepository extends JpaRepository<StepTest,Long> {
	
	@Query(value="SELECT steptest.testName, steptest.skillLevel,steptest.required,steptest.id FROM assessment2.steptest join skillstep on steptest.skillStep_id = skillstep.id join skilltest on skillstep.skilltest_id = skilltest.id where skillstep.stepname=:stepname and skilltest.skillName=:skill and skilltest.subSkill=:subskill and steptest.companyId=:companyId", nativeQuery=true)
	public String[][] getTestNameAndSkillLevelForStep(	@Param("stepname")String stepname,
														@Param("skill")String skill,
														@Param("subskill")String subskill,
														@Param("companyId")String companyId		);
	
	@Query("SELECT stptst FROM StepTest stptst where stptst.skillStep=:skillstp")
	public List<StepTest> getBySkillStep(@Param("skillstp") SkillStep skillstep);
}