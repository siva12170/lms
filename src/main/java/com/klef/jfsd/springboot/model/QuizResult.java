package com.klef.jfsd.springboot.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class QuizResult {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false)
    private long score;
    @ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="student")
	private Student student ;
    @ManyToOne(cascade = CascadeType.ALL)
   	@JoinColumn(name="quiz")
   	private Quiz quiz ;
    
    @ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="attempts")
	private Attempts attempts ;
    
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public long getScore() {
		return score;
	}
	public void setScore(long score) {
		this.score = score;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Quiz getQuiz() {
		return quiz;
	}
	public void setQuiz(Quiz quiz) {
		this.quiz = quiz;
	}
	
	public Attempts getAttempts() {
		return attempts;
	}
	public void setAttempts(Attempts attempts) {
		this.attempts = attempts;
	}
	@Override
	public String toString() {
		return "QuizResult [id=" + id + ", score=" + score + ", student=" + student + ", quiz=" + quiz + ", attempts="
				+ attempts + "]";
	}

    
}
