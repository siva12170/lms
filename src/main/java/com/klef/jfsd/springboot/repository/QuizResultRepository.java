package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.QuizResult;

@Repository
public interface QuizResultRepository extends JpaRepository<QuizResult, Long>{

}
