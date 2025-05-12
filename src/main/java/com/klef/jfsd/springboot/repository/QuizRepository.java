package com.klef.jfsd.springboot.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Attempts;
import com.klef.jfsd.springboot.model.Quiz;

@Repository
public interface QuizRepository extends JpaRepository<Quiz, Long>{

	
	@Query("select a from Attempts a where a.student.id=?1")
	public List<Attempts> findallanswers(long id);
	
}
