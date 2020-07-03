package com.assessment.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.assessment.data.SkillStep;
import com.assessment.data.SkillTest;

@Repository
public interface SkillStepRepository extends JpaRepository<SkillStep, Long>{
	@Query(value="SELECT skillstep.id,skilltest.skillName, skilltest.subSkill, skillstep.stepName FROM skillstep JOIN skilltest on skillstep.skilltest_id = skilltest.id where skillstep.companyId=:companyId order by skilltest.skillName,skilltest.subskill,skillstep.step_order" , nativeQuery = true )
	public String[][] getSkillStepList(@Param("companyId")String companyId);

	@Query(value="SELECT skillstep.stepName FROM assessment2.skillstep where skillstep.companyId=:companyId",nativeQuery=true)
	public String[][] getStepDetails(@Param("companyId")String companyId);
	
	@Query(value="SELECT skillstep.id,skillstep.stepName FROM assessment2.skillstep JOIN skilltest on skillstep.skilltest_id = skilltest.id where skillstep.companyId=:companyId and skilltest.skillName=:skillN and skilltest.subSkill=:subSkill order by skillstep.step_order" , nativeQuery = true )
	public String[][] getStepNamesByParentChild(@Param("companyId")String companyId, @Param("skillN") String skillN, @Param("subSkill") String subSkill );
	
	@Query("SELECT st from SkillStep st where st.companyId=:compId and st.skilltest=:skilltest and st.stepName=:stepn")
	public SkillStep getStepByParChildId(@Param("compId")String companyId, @Param("skilltest")SkillTest st, @Param("stepn")String stepn);

	@Query("Select st from SkillStep st where st.companyId=:compId and st.skilltest=:skilltest")
	public List<SkillStep> getAllStepsForSkillTest(@Param("compId")String companyId,@Param("skilltest")SkillTest st);
	
}