package com.assessment.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.assessment.data.SkillTest;

@Repository
public interface SkillTestRepository extends JpaRepository<SkillTest, Long>{
	
	  @Query("select u.subSkill from SkillTest u where u.skillName=:skillname and u.subSkill is not null")
	  public List<String> findAllRecord(@Param("skillname") String skillname);
	  
	  @Modifying  
	  @Query(value ="Delete from SkillTest v where v.skillName=:skname and v.subSkill is null")
	  public int deleteSkillName(@Param("skname") String skname);
	  
	  @Query("select distinct st.skillName from SkillTest st where st.companyId=:compId")
	   List<String> getSkills(@Param("compId") String companyId);
	  
	  @Query("Select st.subSkill from SkillTest st where st.skillName=:skillName and st.companyId=:companyId and st.subSkill is not null")
	  public List<String> getSubskills(@Param("skillName")String skillName, @Param("companyId")String companyId);
	  
	  @Query("Select st from SkillTest st where st.skillName=:skillName and st.companyId=:companyId and st.subSkill=:subskill ")
	  public SkillTest getByskillsubskill(@Param("skillName")String skillName, @Param("companyId")String companyId, @Param("subskill")String subskill);

}