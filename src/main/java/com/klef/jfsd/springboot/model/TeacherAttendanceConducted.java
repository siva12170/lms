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
public class TeacherAttendanceConducted {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	@Column(nullable=false)
	private String dateTime;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="facultyCourseMapping")
	private FacultyCourseMapping facultyCourseMapping;

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

	public FacultyCourseMapping getFacultyCourseMapping() {
		return facultyCourseMapping;
	}

	public void setFacultyCourseMapping(FacultyCourseMapping facultyCourseMapping) {
		this.facultyCourseMapping = facultyCourseMapping;
	}

	@Override
	public String toString() {
		return "TeacherAttendanceConducted [id=" + id + ", dateTime=" + dateTime + ", facultyCourseMapping="
				+ facultyCourseMapping + "]";
	}

	

	
	
}
