package com.assessment.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.assessment.data.OnetString;

public interface onetStringRepository extends JpaRepository<OnetString,Long> {
	
	
	@Query("select q from OnetString q where q.username=:email and q.pg=:pge")
	public List<OnetString> get(@Param("email") String email,@Param("pge") String pge);
	
	//@Query("select q from OnetString q where q.rand=:rand group by q.pg order by q.pg")
	@Query("select q from OnetString q where q.id in(select max(q.id) from OnetString q where q.rand=:rand group by q.pg)")
	public List<OnetString> getall(@Param("rand")double rand);
	
	@Query("select q from OnetString q where q.id in(select max(q.id) from OnetString q where q.rand=:rand and q.pg=:pge)")
	public OnetString getbypage(@Param("rand")double rand,@Param("pge") int pge);

}
