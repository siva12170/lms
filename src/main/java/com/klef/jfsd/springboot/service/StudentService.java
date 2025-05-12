package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Answer;
import com.klef.jfsd.springboot.model.Assignments;
import com.klef.jfsd.springboot.model.Attempts;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.FileEntity;
import com.klef.jfsd.springboot.model.Question;
import com.klef.jfsd.springboot.model.Quiz;
import com.klef.jfsd.springboot.model.QuizResult;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.StudentAttendanceAttended;
import com.klef.jfsd.springboot.model.StudentRegistration;
import com.klef.jfsd.springboot.model.TeacherAttendanceConducted;
import com.klef.jfsd.springboot.model.TimeTable;

public interface StudentService {

	public String AddStudent(Student s);
	public Student checkstudentlogin(Long id, String pwd);
	public List<FacultyCourseMapping> allsections();
	public String AddSec(StudentRegistration studentRegistration);
	public Student Checkstudentbyid(Long id);
	public FacultyCourseMapping setsection(Long id);
	public List<TimeTable> findTimeTableBystudentId(Long studentId);
	public List<StudentRegistration> alllist(long id);
	public List<FacultyCourseMapping> findFacultyCourseMappingsByRegistrationId(Long registrationId);
	public String deletesection(Long id);
	public StudentRegistration studentregbyid(Long id);
	public String updatetotalattended(Long totalattended,Long id,Long facid);
	public String updatetotalabsent(Long totalabsent,Long id,Long facid);
	public String savestudentattendance(StudentAttendanceAttended studentAttendanceAttended);
	public String Teacherconcuted(TeacherAttendanceConducted teacherAttendanceConducted);
	public int updateTotalConductedById(Long totalConducted,Long mappingId);
	public List<StudentRegistration> findByStudentId(long studentId);
	public List<StudentAttendanceAttended> Register(Long stid,Long facid);
	public List<StudentRegistration> courselist(Long sid);
	public List<Assignments> getallasignments(long id,long sid);
	public List<Quiz> getallquizs(long id,long sid);
	public List<FileEntity> all(long id,long sid);
	public Assignments studentassignments(long aid,long cid,long sid);
	public List<Question> studentquizzes(long aid,long cid,long sid);
	public String Addanswer(Answer A);
	public Question question(long id);
	public String setattempts(Attempts attempts);
	public Quiz findquizbyid(long id);
	public String savequizresult(QuizResult quizResult);
	public List<Attempts> findallanswers(long id);
}
