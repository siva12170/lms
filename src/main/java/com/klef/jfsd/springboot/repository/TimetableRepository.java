package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.TimeTable;

@Repository
public interface TimetableRepository extends JpaRepository<TimeTable, Long>{

	@Query("SELECT t FROM TimeTable t JOIN FacultyCourseMapping fcm ON t.id = fcm.table.id WHERE fcm.teacher.id = ?1")
	public List<TimeTable> findTimeTableByTeacherId(Long teacherId);
	
	@Query("SELECT DISTINCT fc.table FROM StudentRegistration sr JOIN sr.facultyCourseMapping fc WHERE sr.student.id = ?1")
	public List<TimeTable> findTimeTableBystudentId(Long studentId);
	
	@Query("SELECT sr.facultyCourseMapping FROM StudentRegistration sr WHERE sr.student.id = ?1")
    public List<FacultyCourseMapping> findFacultyCourseMappingsByRegistrationId(Long registrationId);
	
}
