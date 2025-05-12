package com.klef.jfsd.springboot.repository;




import java.util.List;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.springboot.model.Assignments;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.Quiz;
import com.klef.jfsd.springboot.model.StudentRegistration;
import com.klef.jfsd.springboot.model.Teacher;


@Repository
public interface TeacherRepository extends JpaRepository<Teacher, Long>{
	
	@Query("select a from Teacher a where a.id=?1 and a.password=?2")
	public Teacher checkadminlogin(Long id, String pwd);
	
	 @Query("SELECT c FROM Course c WHERE c.Coursehead.id = ?1")
	 public List<Course> getcourses(long id);
	 
	 @Query("SELECT Q FROM Quiz Q WHERE Q.course.id=?1")
	 public List<Quiz> getallquizs(long id);
	 
	 
	 @Query("SELECT A FROM Assignments A WHERE A.course.id=?1")
	 public List<Assignments> getallasignments(long id);
	 
	 
	 @Query("select c from Course c where c.Coursehead.id=?1 and c.id=?2")
	 public Course mycourse(long teachid,long course);
	
	@Query("SELECT fcm FROM FacultyCourseMapping fcm WHERE fcm.teacher.id = ?1")
	public List<FacultyCourseMapping> findByTeacherId(Long teacherId);
	
	@Modifying
    @Transactional
	@Query("UPDATE FacultyCourseMapping fcm SET fcm.registeredcapacity = ?1 WHERE fcm.id = ?2")
	public void updateRegisteredCapacity(long newRegisteredCapacity,long id);
	
	@Query("SELECT sr FROM StudentRegistration sr WHERE sr.facultyCourseMapping.id = ?1 AND sr.facultyCourseMapping.teacher.id = ?2")
	public List<StudentRegistration> findStudentsByFacultyCourseMappingId(long facultyCourseMappingId,long teacherId);

}
