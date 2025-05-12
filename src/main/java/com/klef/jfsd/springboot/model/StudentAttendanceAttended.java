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
public class StudentAttendanceAttended {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@Column(nullable=false)
	private String dateTime;
	
	@Column(nullable=false)
	private String porf;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="studentRegistration")
	private StudentRegistration studentRegistration ;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public String getPorf() {
		return porf;
	}

	public void setPorf(String porf) {
		this.porf = porf;
	}

	public StudentRegistration getStudentRegistration() {
		return studentRegistration;
	}

	public void setStudentRegistration(StudentRegistration studentRegistration) {
		this.studentRegistration = studentRegistration;
	}

	@Override
	public String toString() {
		return "StudentAttendanceAttended [id=" + id + ", dateTime=" + dateTime + ", porf=" + porf
				+ ", studentRegistration=" + studentRegistration + "]";
	}
	
	
}
