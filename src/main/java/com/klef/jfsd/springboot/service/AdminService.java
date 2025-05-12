package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Teacher;
import com.klef.jfsd.springboot.model.TimeTable;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;

public interface AdminService {

	public Admin checkadminlogin( Long id, String pwd);
	public String addcourse(Course course);
	public List<Teacher> allteachers();
	public List<Course> allcourses();
	public Course findcoursebyid(long id);
	public String CreateTimeTable(TimeTable table);
	public String CreateMapping(FacultyCourseMapping facultyCourseMapping);
	
}
