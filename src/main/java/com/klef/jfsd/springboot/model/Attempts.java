package com.klef.jfsd.springboot.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Attempts {
	
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	    
	    @ManyToOne(cascade = CascadeType.ALL)
		@JoinColumn(name="student")
		private Student student ;
	    
	    @ManyToOne(cascade = CascadeType.ALL)
		@JoinColumn(name="quiz")
		private Quiz quiz ;
	    

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
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

		@Override
		public String toString() {
			return "Attempts [id=" + id + ", student=" + student + ", quiz=" + quiz + "]";
		}

		
		
}
