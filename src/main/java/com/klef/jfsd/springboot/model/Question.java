package com.klef.jfsd.springboot.model;




import jakarta.persistence.Column;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Question {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String content;
    @Column(nullable = false)
    private String a;
    @Column(nullable = false)
    private String b;
    @Column(nullable = false)
    private String c;
    @Column(nullable = false)
    private String d;
    @Column(nullable = false)
    private String correctanswer;

    @ManyToOne
    @JoinColumn(name = "quiz_id")
    private Quiz quiz;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Quiz getQuiz() {
		return quiz;
	}

	public void setQuiz(Quiz quiz) {
		this.quiz = quiz;
	}

	public String getA() {
		return a;
	}

	public void setA(String a) {
		this.a = a;
	}

	public String getB() {
		return b;
	}

	public void setB(String b) {
		this.b = b;
	}

	public String getC() {
		return c;
	}

	public void setC(String c) {
		this.c = c;
	}

	public String getD() {
		return d;
	}

	public void setD(String d) {
		this.d = d;
	}

	public String getCorrectanswer() {
		return correctanswer;
	}

	public void setCorrectanswer(String correctanswer) {
		this.correctanswer = correctanswer;
	}

	@Override
	public String toString() {
		return "Question [id=" + id + ", content=" + content + ", a=" + a + ", b=" + b + ", c=" + c + ", d=" + d
				+ ", correctanswer=" + correctanswer + ", quiz=" + quiz + "]";
	}

	

	

}
