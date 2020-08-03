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
	
	@Query(value="SELECT StepTest.testName, StepTest.skillLevel,StepTest.required,StepTest.id FROM StepTest join SkillStep on StepTest.skillStep_id = SkillStep.id join SkillTest on SkillStep.skilltest_id = SkillTest.id where SkillStep.stepname=:stepname and SkillTest.parentSkill=:skill and SkillTest.childSkill=:subskill and StepTest.companyId=:companyId", nativeQuery=true)
	public String[][] getTestNameAndSkillLevelForStep(	@Param("stepname")String stepname,
														@Param("skill")String skill,
														@Param("subskill")String subskill,
														@Param("companyId")String companyId		);
	
	@Query("SELECT stptst FROM StepTest stptst where stptst.skillStep=:skillstp")
	public List<StepTest> getBySkillStep(@Param("skillstp") SkillStep skillstep);
	
	@Query("Select st from StepTest st where st.testId=:testId and st.companyId=:companyId")
	public StepTest getByTestId(@Param("testId")String testId,@Param("companyId")String companyId);
	
	@Query(value="select distinct SkillTest.parentSkill from StepTest join SkillStep on SkillStep.id = StepTest.skillStep_id join SkillTest on SkillStep.skilltest_id = SkillTest.id where StepTest.companyId=:compId",nativeQuery=true)
	public String[] getParentSkillNames(@Param("compId")String compid);
}