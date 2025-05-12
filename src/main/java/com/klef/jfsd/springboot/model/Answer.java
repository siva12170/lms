package com.klef.jfsd.springboot.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Answer {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    
	
    @ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="question")
	private Question question ;
	
    @ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="attempts")
	private Attempts attempts ;
    
	
    private String selectedAnswer;
    
    
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getSelectedAnswer() {
		return selectedAnswer;
	}
	public void setSelectedAnswer(String selectedAnswer) {
		this.selectedAnswer = selectedAnswer;
	}
	
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	public Attempts getAttempts() {
		return attempts;
	}
	public void setAttempts(Attempts attempts) {
		this.attempts = attempts;
	}
	@Override
	public String toString() {
		return "Answer [id=" + id + ", question=" + question + ", attempts=" + attempts + ", selectedAnswer="
				+ selectedAnswer + "]";
	}
	
	
	
	
}
