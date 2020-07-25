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
	@Query(value="SELECT SkillStep.id,SkillTest.parentSkill, SkillTest.childSkill, SkillStep.stepName FROM SkillStep JOIN SkillTest on SkillStep.skilltest_id = SkillTest.id where SkillStep.companyId=:companyId order by SkillTest.parentSkill,SkillTest.childSkill,SkillStep.step_order" , nativeQuery = true )
	public String[][] getSkillStepList(@Param("companyId")String companyId);

	@Query(value="SELECT SkillStep.stepName FROM SkillStep where SkillStep.companyId=:companyId",nativeQuery=true)
	public String[][] getStepDetails(@Param("companyId")String companyId);
	
	@Query(value="SELECT SkillStep.id,SkillStep.stepName FROM SkillStep JOIN SkillTest on SkillStep.skilltest_id = SkillTest.id where SkillStep.companyId=:companyId and SkillTest.parentSkill=:skillN and SkillTest.childSkill=:subSkill order by SkillStep.step_order" , nativeQuery = true )
	public String[][] getStepNamesByParentChild(@Param("companyId")String companyId, @Param("skillN") String skillN, @Param("subSkill") String subSkill );
	
	@Query("SELECT st from SkillStep st where st.companyId=:compId and st.skilltest=:skilltest and st.stepName=:stepn")
	public SkillStep getStepByParChildId(@Param("compId")String companyId, @Param("skilltest")SkillTest st, @Param("stepn")String stepn);

	@Query("Select st from SkillStep st where st.companyId=:compId and st.skilltest=:skilltest")
	public List<SkillStep> getAllStepsForSkillTest(@Param("compId")String companyId,@Param("skilltest")SkillTest st);
	
	@Query("Select st from SkillStep st where st.skilltest=:skilltest")
	public List<SkillStep> getAllStepsForSkillTest(@Param("skilltest")SkillTest st);
	
}