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
public class FacultyCourseMapping {

	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="teacher_id")
	private Teacher teacher;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="course")
	private Course course ;
	
	@Column(nullable = false)
	private long secno;
	
	@Column(nullable = false)
	private long capacity;
	
	@Column(nullable = false)
	private long registeredcapacity;
	
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="timetable")
	private TimeTable table;
	
	@Column(nullable = false)
	private long TotalConducted;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public long getSecno() {
		return secno;
	}

	public void setSecno(long secno) {
		this.secno = secno;
	}

	public TimeTable getTable() {
		return table;
	}

	public void setTable(TimeTable table) {
		this.table = table;
	}

	

	public long getcapacity() {
		return capacity;
	}

	public void setcapacity(long capacity) {
		this.capacity = capacity;
	}

	

	public long getRegisteredcapacity() {
		return registeredcapacity;
	}

	public void setRegisteredcapacity(long registeredcapacity) {
		this.registeredcapacity = registeredcapacity;
	}



	public long getTotalConducted() {
		return TotalConducted;
	}

	public void setTotalConducted(long totalConducted) {
		TotalConducted = totalConducted;
	}

	@Override
	public String toString() {
		return "FacultyCourseMapping [id=" + id + ", teacher=" + teacher + ", course=" + course + ", secno=" + secno
				+ ", capacity=" + capacity + ", registeredcapacity=" + registeredcapacity + ", table=" + table
				+ ", TotalConducted=" + TotalConducted + "]";
	}
	
	
	
	
	
}
