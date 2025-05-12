package com.klef.jfsd.springboot.repository;

import java.util.List;




import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Assignments;
import com.klef.jfsd.springboot.model.FileEntity;
import com.klef.jfsd.springboot.model.Quiz;
import com.klef.jfsd.springboot.model.StudentRegistration;

import jakarta.transaction.Transactional;

@Repository
public interface StudentRegistrationRepository extends JpaRepository<StudentRegistration, Long>{

	@Modifying
    @Transactional
    @Query("DELETE FROM StudentRegistration s WHERE s.id = ?1")
    void DeleteById(Long id);
	
	@Modifying
    @Transactional
    @Query("DELETE FROM StudentAttendanceAttended s WHERE s.studentRegistration.id = ?1")
    public int DeleteByyId(Long id);
	
	
	@Query("update StudentRegistration sr SET sr.TotalAttended = ?1 WHERE sr.id = ?2")
	@Modifying
	@Transactional
    public int updatetotalattended(long totalattended,long id,long facid);
	
	
	
	@Query("update StudentRegistration sr SET sr.TotalAbsent = ?1 WHERE sr.id = ?2")
	@Modifying
	@Transactional
	public int updatetotalabsent(long totalabsent,long id,long facid);
	
	
	
	    @Modifying
	    @Transactional
	    @Query("UPDATE FacultyCourseMapping fcm SET fcm.TotalConducted = ?1 WHERE fcm.id = ?2")
	    public int updateTotalConductedById(Long totalConducted,Long mappingId);
	
	
	
	 @Query("SELECT sr FROM StudentRegistration sr WHERE sr.student.id = ?1")
	 public List<StudentRegistration> findByStudentId(long studentId);
	 
	 @Query("SELECT A FROM Assignments A WHERE A.course.id=?1 AND EXISTS (SELECT 1 FROM StudentRegistration SR WHERE SR.facultyCourseMapping.course.id = ?1  AND SR.student.id = ?2)")
	 public List<Assignments> getallasignments(long id,long sid);
	 
	 @Query("SELECT Q FROM Quiz Q WHERE Q.course.id=?1 AND EXISTS (SELECT 1 FROM StudentRegistration SR WHERE SR.facultyCourseMapping.course.id = ?1  AND SR.student.id = ?2)")
	 public List<Quiz> getallquizs(long id,long sid);
	 
	 
	 @Query("SELECT c FROM FileEntity c WHERE c.course.id = ?1 AND EXISTS (SELECT 1 FROM StudentRegistration SR WHERE SR.facultyCourseMapping.course.id = ?1  AND SR.student.id = ?2)")
	 public List<FileEntity> all(long id,long sid);
	 
	 
	 
	 
}
