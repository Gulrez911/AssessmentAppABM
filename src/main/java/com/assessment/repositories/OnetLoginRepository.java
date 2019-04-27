package com.assessment.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.assessment.data.OnetLogin;

public interface OnetLoginRepository extends JpaRepository<OnetLogin, Long> {

}
