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
public class Course {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@Column(unique=true,nullable = false)
	private String coursecode;

	
	@Column(nullable = false)
	private String coursename;
	
	@Column(nullable = false)
	private String ltps;
	
	@Column(nullable = false)
	private double credits;
	
	@Column(nullable = false)
	private int slots;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="teacher_id",nullable = false)
	
	private Teacher Coursehead;
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCoursecode() {
		return coursecode;
	}

	public void setCoursecode(String coursecode) {
		this.coursecode = coursecode;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getLtps() {
		return ltps;
	}

	public void setLtps(String ltps) {
		this.ltps = ltps;
	}

	public double getCredits() {
		return credits;
	}

	public void setCredits(double credits) {
		this.credits = credits;
	}

	public int getSlots() {
		return slots;
	}

	public void setSlots(int slots) {
		this.slots = slots;
	}

	

	public Teacher getCoursehead() {
		return Coursehead;
	}

	public void setCoursehead(Teacher coursehead) {
		Coursehead = coursehead;
	}

	@Override
	public String toString() {
		return "Course [id=" + id + ", coursecode=" + coursecode + ", coursename=" + coursename + ", ltps=" + ltps
				+ ", credits=" + credits + ", slots=" + slots + ", Coursehead=" + Coursehead + "]";
	}
	

	
	
}
