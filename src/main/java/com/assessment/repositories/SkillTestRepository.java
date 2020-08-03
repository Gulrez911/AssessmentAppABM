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
	
	
//	@Query("Select Distinct(s.parentSkill) FROM SkillTest s where s.companyId=:companyId")
//	List<SkillTest> findUniqueParentSkill(@Param("companyId") String companyId);
//	
	  @Query("select u.childSkill from SkillTest u where u.parentSkill=:skillname and u.childSkill is not null")
	  public List<String> findAllRecord(@Param("skillname") String skillname);
	  
	  @Modifying  
	  @Query(value ="Delete from SkillTest v where v.parentSkill=:skname and v.childSkill is null")
	  public int deleteSkillName(@Param("skname") String skname);
	  
	  @Query("select distinct st.parentSkill from SkillTest st where st.companyId=:compId")
	   List<String> getSkills(@Param("compId") String companyId);
	  
	  @Query("Select st.childSkill from SkillTest st where st.parentSkill=:skillName and st.companyId=:companyId and st.childSkill is not null")
	  public List<String> getSubskills(@Param("skillName")String skillName, @Param("companyId")String companyId);
	  
	  @Query("Select st from SkillTest st where st.parentSkill=:skillName and st.companyId=:companyId and st.childSkill=:subskill ")
	  public SkillTest getByskillsubskill(@Param("skillName")String skillName, @Param("companyId")String companyId, @Param("subskill")String subskill);

	  @Query("Select Distinct(s.parentSkill) FROM SkillTest s where s.companyId=:companyId")
		List<SkillTest> findUniqueParentSkill(@Param("companyId") String companyId);

		List<SkillTest> findAllByCompanyId(String companyId);

		List<SkillTest> findByparentSkill(String parentSkill);

		List<SkillTest> findByParentSkillAndChildSkill(String ParentSkill, String ChildSkill);
		
		@Query("Select s.childSkill FROM SkillTest s where s.companyId=:companyId")
		List<SkillTest> findChildSkill(@Param("companyId") String companyId);
		
		@Query("Select s.childSkill FROM SkillTest s where s.parentSkill=:skill and s.childSkill is not null")
		List<SkillTest> findSubSkill(@Param("skill") String skill);
		
		@Query("Select Distinct(s.parentSkill) FROM SkillTest s")
		List<String> findUniqueParentSkill();
		
		@Query("Select s.childSkill FROM SkillTest s where s.parentSkill=:skill and s.childSkill is not null")
		List<String> findAllChildSkill(@Param("skill") String skill);
		
		@Query("Select s.childSkill FROM SkillTest s where s.parentSkill=:parentSkill and s.childSkill is not null")
		List<SkillTest> findAllSubSkill(@Param("parentSkill") String parentSkill);
	/*
	 * @Query("SELECT distinct c.skillname FROM SkillTest c WHERE c.skillname =:skillname"
	 * ) public String findAllRecord(@QueryParam("skillname") String skillname);
	 */
}
