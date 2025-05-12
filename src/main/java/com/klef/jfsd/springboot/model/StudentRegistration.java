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
public class StudentRegistration {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@Column(nullable = false)
	private long TotalAttended;
	
	@Column(nullable = false)
	private long TotalAbsent;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="facultyCourseMapping")
	private FacultyCourseMapping facultyCourseMapping;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="student",nullable = false)
	private Student student;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public long getTotalAttended() {
		return TotalAttended;
	}

	public void setTotalAttended(long totalAttended) {
		TotalAttended = totalAttended;
	}

	public long getTotalAbsent() {
		return TotalAbsent;
	}

	public void setTotalAbsent(long totalAbsent) {
		TotalAbsent = totalAbsent;
	}

	public FacultyCourseMapping getFacultyCourseMapping() {
		return facultyCourseMapping;
	}

	public void setFacultyCourseMapping(FacultyCourseMapping facultyCourseMapping) {
		this.facultyCourseMapping = facultyCourseMapping;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	@Override
	public String toString() {
		return "StudentRegistration [id=" + id + ", TotalAttended=" + TotalAttended + ", TotalAbsent=" + TotalAbsent
				+ ", facultyCourseMapping=" + facultyCourseMapping + ", student=" + student + "]";
	}
	
	
}
