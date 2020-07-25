package com.assessment.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.assessment.data.SkillTest;
import com.assessment.data.SkillTestLabel;

@Repository
public interface SkillTestLabelRepository extends JpaRepository<SkillTestLabel, Long> {
	
	@Query("Select s FROM SkillTestLabel s where s.childSkill=:childskill and s.parentSkill=:parentSkill")
	List<SkillTestLabel> findTestAndLabel(@Param("childskill") String childskill,@Param("parentSkill") String parentSkill);
	
	@Query("Select Distinct(s.parentSkill) FROM SkillTestLabel s where s.childSkill=:subSkill")
	public String findSkill(@Param("subSkill") String subSkill);
	
	@Query("Select Distinct(s.parentSkill) FROM SkillTestLabel s")
	List<String> findUniqueParentSkill();
	
	@Query("Select Distinct(s.childSkill) FROM SkillTestLabel s where s.parentSkill=:skill and s.childSkill is not null")
	List<SkillTestLabel> findSubSkill(@Param("skill") String skill);
	
	@Query("Select Distinct(s.childSkill) FROM SkillTestLabel s where s.parentSkill=:parentSkill and s.childSkill is not null")
	List<SkillTestLabel> findSubSkills(@Param("parentSkill") String parentSkill);

	@Query("Select Distinct(s.childSkill) FROM SkillTestLabel s where s.parentSkill=:parentSkill and s.childSkill is not null")
	List<String> findChildSkills(@Param("parentSkill") String parentSkill);
}
