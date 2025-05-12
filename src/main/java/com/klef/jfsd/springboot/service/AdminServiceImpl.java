package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.Teacher;
import com.klef.jfsd.springboot.model.TimeTable;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.FacultyCourseMappingRepository;
import com.klef.jfsd.springboot.repository.TeacherRepository;
import com.klef.jfsd.springboot.repository.TimetableRepository;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CourseRepository courseRepository;
	
	@Autowired
	private TeacherRepository teacherRepository;
	
	@Autowired
	private TimetableRepository timetableRepository;
	
	@Autowired
	private FacultyCourseMappingRepository facultyCourseMappingRepository;
	
	@Override
	public Admin checkadminlogin(Long id, String pwd) 
	{
		return adminRepository.checkadminlogin(id, pwd);
	}

	@Override
	public String addcourse(Course course) {
		 courseRepository.save(course);
		return "Course saved successfully";
	}

	@Override
	public List<Teacher> allteachers() {
		return teacherRepository.findAll();
	}

	@Override
	public Course findcoursebyid(long id) {
		Optional<Course> obj=courseRepository.findById(id);
		 if(obj.isPresent())
	        {
	         Course course = obj.get();
	          
	          return course;
	        }
	        else
	        {
	          return null;
	        }
	}

	@Override
	public String CreateTimeTable(TimeTable table) {
		timetableRepository.save(table);
		return "Saved";
	}

	@Override
	public String CreateMapping(FacultyCourseMapping facultyCourseMapping) {
		facultyCourseMappingRepository.save(facultyCourseMapping);
		return "Section Created Successfully";
	}

	@Override
	public List<Course> allcourses() {
		return courseRepository.findAll();
	}
	
	

}
