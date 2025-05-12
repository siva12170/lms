package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.klef.jfsd.springboot.model.Question;
import com.klef.jfsd.springboot.model.Quiz;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long>{

	@Query("SELECT q FROM Question q WHERE q.quiz = ?1")
	public List<Question> findByquiz(Quiz quizs);
}
