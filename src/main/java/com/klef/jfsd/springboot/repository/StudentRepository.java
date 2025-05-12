package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Assignments;
import com.klef.jfsd.springboot.model.Question;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.StudentAttendanceAttended;
import com.klef.jfsd.springboot.model.StudentRegistration;


@Repository
public interface StudentRepository extends JpaRepository<Student, Long>{

	@Query("select s from Student s where s.id=?1 and s.password=?2 ")
	public Student checkstudentlogin(Long id, String pwd);
	
	@Query("select s from StudentAttendanceAttended s where s.studentRegistration.student.id=?1 and s.studentRegistration.facultyCourseMapping.id=?2")
	public List<StudentAttendanceAttended> Register(Long stid,Long facid);
	
	@Query("select s from StudentRegistration s where s.student.id=?1")
	public List<StudentRegistration> courselist(Long sid);
	
	@Query("select a from Assignments a where a.id=?1 AND a.course.id=?2 AND EXISTS (SELECT 2 FROM StudentRegistration SR WHERE SR.facultyCourseMapping.course.id = ?2  AND SR.student.id = ?3)")
	public Assignments studentassignments(long aid,long cid,long sid);
	
	
	@Query("select q from Question q where q.quiz.id=?1 AND q.quiz.course.id=?2 AND EXISTS (SELECT 2 FROM StudentRegistration SR WHERE SR.facultyCourseMapping.course.id = ?2  AND SR.student.id = ?3)")
	public List<Question> studentquizzes(long aid,long cid,long sid);
	
}
