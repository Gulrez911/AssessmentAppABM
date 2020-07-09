package com.assessment.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.assessment.data.SkillTest;

public interface SkillTestRepository extends JpaRepository<SkillTest, Long> {
//
//	@Query("select u.subSkill from SkillTest u where u.skillName=:skillname and u.subSkill is null")
//	  public SkillTest findAllRecord(@Param("skillname") String skillname);
//	  
//	  @Modifying  
//	  @Query(value ="Delete from SkillTest v where v.skillName=:skname and v.subSkill is null")
//	  public int deleteSkillName(@Param("skname") String skname);
	@Query("Select Distinct(s.parentSkill) FROM SkillTest s where s.companyId=:companyId")
	List<SkillTest> findUniqueParentSkill(@Param("companyId") String companyId);

	List<SkillTest> findAllByCompanyId(String companyId);

	List<SkillTest> findByparentSkill(String parentSkill);

	List<SkillTest> findByParentSkillAndChildSkill(String ParentSkill, String ChildSkill);
}
