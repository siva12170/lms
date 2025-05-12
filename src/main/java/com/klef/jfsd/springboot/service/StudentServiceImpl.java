package com.klef.jfsd.springboot.service;

import java.util.List;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
import com.klef.jfsd.springboot.repository.AnswerRepository;
import com.klef.jfsd.springboot.repository.AttemptsRepository;
import com.klef.jfsd.springboot.repository.FacultyCourseMappingRepository;
import com.klef.jfsd.springboot.repository.QuestionRepository;
import com.klef.jfsd.springboot.repository.QuizRepository;
import com.klef.jfsd.springboot.repository.QuizResultRepository;
import com.klef.jfsd.springboot.repository.StudentAttendanceAttendedRepository;
import com.klef.jfsd.springboot.repository.StudentRegistrationRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;
import com.klef.jfsd.springboot.repository.TeacherAttendanceConductedRepository;
import com.klef.jfsd.springboot.repository.TimetableRepository;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	StudentRepository studentRepository;
	
	@Autowired
	TimetableRepository timetableRepository;
	
	@Autowired
	AttemptsRepository attemptsRepository;
	
	@Autowired
	AnswerRepository answerRepository;
	
	@Autowired
	QuestionRepository questionRepository;
	
	@Autowired
	QuizRepository quizRepository;
	
	@Autowired
	QuizResultRepository quizResultRepository;
	
	@Autowired
	StudentRegistrationRepository studentRegistrationRepository;
	
	@Autowired
	FacultyCourseMappingRepository facultyCourseMappingRepository;
	
	@Autowired
	StudentAttendanceAttendedRepository attendanceAttendedRepository;
	
	@Autowired
	TeacherAttendanceConductedRepository teacherAttendanceConductedRepository;
	

	@Override
	public String AddStudent(Student s) {
		studentRepository.save(s);
		return "Saved Successfully";
	}

	@Override
	public Student checkstudentlogin(Long id, String pwd) {
		return studentRepository.checkstudentlogin(id, pwd);
	}

	@Override
	public List<FacultyCourseMapping> allsections() {
		// TODO Auto-generated method stub
		return facultyCourseMappingRepository.findAll();
	}

	@Override
	public String AddSec(StudentRegistration studentRegistration) {
		studentRegistrationRepository.save(studentRegistration);
		return "Section registered Suceessfully";
	}

	@Override
	public Student Checkstudentbyid(Long id) {
		
		
		Optional<Student> obj=studentRepository.findById(id);
		 if(obj.isPresent())
	        {
	         Student student = obj.get();
	          
	          return student;
	        }
	        else
	        {
	          return null;
	        }
	}

	@Override
	public FacultyCourseMapping setsection(Long id) {
		Optional<FacultyCourseMapping> obj=facultyCourseMappingRepository.findById(id);
		 if(obj.isPresent())
	        {
			 FacultyCourseMapping facultyCourseMapping = obj.get();
	          
	          return facultyCourseMapping;
	        }
	        else
	        {
	          return null;
	        }
	}

	@Override
	public List<TimeTable> findTimeTableBystudentId(Long studentId) {
		return timetableRepository.findTimeTableBystudentId(studentId);
	}

	@Override
	public List<StudentRegistration> alllist(long id) {
		
		return studentRegistrationRepository.findByStudentId(id);
	}

	@Override
	public List<FacultyCourseMapping> findFacultyCourseMappingsByRegistrationId(Long registrationId) {
		return timetableRepository.findFacultyCourseMappingsByRegistrationId(registrationId);
	}

	@Override
	
	public String deletesection(Long id) {
		studentRegistrationRepository.DeleteByyId(id);
		studentRegistrationRepository.DeleteById(id);
		return "Deleted successfully";
		
	}

	@Override
	public StudentRegistration studentregbyid(Long id) {
		Optional<StudentRegistration> obj=studentRegistrationRepository.findById(id);
		 if(obj.isPresent())
	        {
			 StudentRegistration studentRegistration = obj.get();
	          
	          return studentRegistration;
	        }
	        else
	        {
	          return null;
	        }
	}

	@Override
	public String updatetotalattended(Long totalattended, Long id,Long facid) {
		studentRegistrationRepository.updatetotalattended(totalattended,id,facid);
		return "Saved successfully";
	}

	@Override
	public String updatetotalabsent(Long totalabsent, Long id,Long facid) {
		studentRegistrationRepository.updatetotalabsent(totalabsent, id,facid);
		return "Saved successfully";
	}

	@Override
	public String savestudentattendance(StudentAttendanceAttended studentAttendanceAttended) {
		attendanceAttendedRepository.save(studentAttendanceAttended);
		return "saved successfully";
	}

	@Override
	public String Teacherconcuted(TeacherAttendanceConducted teacherAttendanceConducted) {
		
		
		teacherAttendanceConductedRepository.save(teacherAttendanceConducted);
		return "Saved Successfully";
	}

	@Override
	public int updateTotalConductedById(Long totalConducted, Long mappingId) {
		return studentRegistrationRepository.updateTotalConductedById(totalConducted, mappingId);
	}

	@Override
	public List<StudentRegistration> findByStudentId(long studentId) {
		return studentRegistrationRepository.findByStudentId(studentId);
	}

	@Override
	public List<StudentAttendanceAttended> Register(Long stid, Long facid) {
		return studentRepository.Register(stid, facid);
	}

	@Override
	public List<StudentRegistration> courselist(Long sid) {
		return studentRepository.courselist(sid);
	}

	@Override
	public List<Assignments> getallasignments(long id, long sid) {
		return studentRegistrationRepository.getallasignments(id, sid);
	}

	@Override
	public List<Quiz> getallquizs(long id, long sid) {
		return studentRegistrationRepository.getallquizs(id,sid);
	}

	@Override
	public List<FileEntity> all(long id, long sid) {
		return studentRegistrationRepository.all(id, sid);
	}

	@Override
	public Assignments studentassignments(long aid,long cid, long sid) {
		
		return studentRepository.studentassignments(aid,cid, sid);
	}

	@Override
	public List<Question> studentquizzes(long aid, long cid, long sid) {
		return studentRepository.studentquizzes(aid, cid, sid);
	}

	@Override
	public String Addanswer(Answer A) {
		answerRepository.save(A);
		return "Saved Successfully";
	}

	@Override
	public Question question(long id) {
		
		Optional<Question> obj=questionRepository.findById(id);
		 if(obj.isPresent())
	        {
			 Question question = obj.get();
	          
	          return question;
	        }
	        else
	        {
	          return null;
	        }
	}

	@Override
	public String setattempts(Attempts attempts) {
		attemptsRepository.save(attempts);
		return "Saved Successfully";
	}

	@Override
	public Quiz findquizbyid(long id) {
		
		Optional<Quiz> obj=quizRepository.findById(id);
		 if(obj.isPresent())
	        {
			 Quiz quiz = obj.get();
	          
	          return quiz;
	        }
	        else
	        {
	          return null;
	        }
		
	}

	@Override
	public String savequizresult(QuizResult quizResult) {
		quizResultRepository.save(quizResult);
		return "Graded Successfully";
	}

	@Override
	public List<Attempts> findallanswers(long id) {
		return quizRepository.findallanswers(id);
	}
	
	

}
