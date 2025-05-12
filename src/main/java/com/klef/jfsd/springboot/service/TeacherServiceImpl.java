package com.klef.jfsd.springboot.service;



import java.io.IOException;
import java.util.List;




import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.klef.jfsd.springboot.model.Answer;
import com.klef.jfsd.springboot.model.Assignments;
import com.klef.jfsd.springboot.model.Comment;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.FileEntity;
import com.klef.jfsd.springboot.model.Likes;
import com.klef.jfsd.springboot.model.Question;
import com.klef.jfsd.springboot.model.Quiz;

import com.klef.jfsd.springboot.model.StudentRegistration;
import com.klef.jfsd.springboot.model.Teacher;
import com.klef.jfsd.springboot.model.TimeTable;
import com.klef.jfsd.springboot.repository.AnswerRepository;
import com.klef.jfsd.springboot.repository.AssignmentsRepository;
import com.klef.jfsd.springboot.repository.CommentRepository;
import com.klef.jfsd.springboot.repository.FacultyCourseMappingRepository;
import com.klef.jfsd.springboot.repository.FileEntityRepository;
import com.klef.jfsd.springboot.repository.LikesRepository;
import com.klef.jfsd.springboot.repository.QuestionRepository;
import com.klef.jfsd.springboot.repository.QuizRepository;

import com.klef.jfsd.springboot.repository.TeacherRepository;
import com.klef.jfsd.springboot.repository.TimetableRepository;

@Service
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	QuestionRepository questionRepository;
	
	@Autowired
	QuizRepository quizRepository;
	
	@Autowired
	AnswerRepository answerRepository;
	
	@Autowired
	TeacherRepository teacherRepository;
	
	@Autowired
	CommentRepository commentRepository;
	
	@Autowired
	LikesRepository likesRepository;
	
	@Autowired
	TimetableRepository timetableRepository;
	
	@Autowired
	FacultyCourseMappingRepository facultyCourseMappingRepository;

	@Autowired
    FileEntityRepository fileEntityRepository;
	
	@Autowired
	AssignmentsRepository assignmentsRepository;
	
	
	@Override
	public String addQuestion(Quiz quiz) {
		
		quizRepository.save(quiz);
		
		return "Quiz Saved Successfully";
	}


	@Override
	public Quiz findquizbyid(long eid) {
		Optional<Quiz> obj=quizRepository.findById(eid);
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
	public List<Quiz> allquestions() {
		return quizRepository.findAll();
	}


	@Override
	public String addmcq(Question question) {
		
		questionRepository.save(question);
		return "Question saved successfully";
		}


	@Override
	public List<Question> allbits(Quiz quiz) {
		
		return questionRepository.findByquiz(quiz);
		
		
	}


	@Override
	public String submitQuiz(Answer  answer) {
		
		answerRepository.save(answer);
		return "answer saved successfully";
		
		
	}


	@Override
	public Question findquestionbyid(long eid) {
		Optional<Question> obj=questionRepository.findById(eid);
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
	public String addTeacher(Teacher teacher) {
		teacherRepository.save(teacher);
		
		return "Teacher Saved Successfully";
	}


	@Override
	public Teacher checkteacherlogin(Long id, String pwd) {
		
		return teacherRepository.checkadminlogin(id, pwd);
	}


	


	@Override
	public Teacher findteacherbyid(long eid) {
		Optional<Teacher> obj=teacherRepository.findById(eid);
		 if(obj.isPresent())
	        {
	         Teacher teacher = obj.get();
	          
	          return teacher;
	        }
	        else
	        {
	          return null;
	        }

	}


	


	

	


	


	@Override
	public String updateSuggestionLikesAndAddTeacher(Teacher likedByTeacher, Long suggestionId) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public String addcomment(Comment comment) {
		
		commentRepository.save(comment);
		return "Comment Posted Successfully";
		
	}


	@Override
	public List<Comment> allcomments() {
		return commentRepository.findAll();
	}


	@Override
	public boolean existsByCommentIdAndCustomerId(Long commentId, Long tacherId) {
		
		
		 if (!likesRepository.existsByCommentIdAndCustomerId(commentId, tacherId)) {
		Likes likes=new Likes();
		Optional<Comment> obj=commentRepository.findById(commentId);
		Comment comment=obj.get();
		likes.setComment(comment);
		Optional<Teacher> objs=teacherRepository.findById(tacherId);
		Teacher teacher=objs.get();
		likes.setTeacher(teacher);
	    likesRepository.save(likes);
	    return true;
	}

		 else {
			 return false;
		 }
	
	}


	@Override
	public List<Likes> allLikes() {
		return likesRepository.findAll();
	}


	@Override
	public String savetimetable(TimeTable timeTable) {
		timetableRepository.save(timeTable);
		return "Timetabe saved Successfully";
	}


	@Override
	public List<TimeTable> findTimeTableByTeacherId(Long teacherId) {
		return timetableRepository.findTimeTableByTeacherId(teacherId);
	}


	@Override
	public List<FacultyCourseMapping> alllist() {
		return facultyCourseMappingRepository.findAll();
	}


	@Override
	public List<FacultyCourseMapping> findByTeacherId(Long teacherId) {
		return teacherRepository.findByTeacherId(teacherId);
	}


	@Override
	public String updateRegisteredCapacity(Long id) {
		
		Optional<FacultyCourseMapping> obj=facultyCourseMappingRepository.findById(id);
		if(obj.isPresent())
        {
			FacultyCourseMapping fcm = obj.get();
		    long registeredcount=fcm.getRegisteredcapacity();
		    registeredcount++;
          teacherRepository.updateRegisteredCapacity(registeredcount,id);
          return "Updated successfully";
        }
        else
        {
          return null;
        }

	}


	@Override
	public String updatecountdecreaseRegisteredCapacity(Long id) {
		
		Optional<FacultyCourseMapping> obj=facultyCourseMappingRepository.findById(id);
		if(obj.isPresent())
        {
			FacultyCourseMapping fcm = obj.get();
		    long registeredcount=fcm.getRegisteredcapacity();
		    if(registeredcount>0) {
		    registeredcount--;
		    }
		    
          teacherRepository.updateRegisteredCapacity(registeredcount,id);
          return "Updated successfully";
        }
        else
        {
          return null;
        }
	}


	@Override
	public List<StudentRegistration> findStudentsByFacultyCourseMappingId(long facultyCourseMappingId, long teacherId) {
		return teacherRepository.findStudentsByFacultyCourseMappingId(facultyCourseMappingId, teacherId);
	}


	@Override
	public List<Course> getcourses(long id) {
		return teacherRepository.getcourses(id);
	}


	@Override
	public Course mycourse(long teachid, long course) {
		return teacherRepository.mycourse(teachid, course);
	}


	@Override
	public List<Quiz> getallquizs(long id) {
		return teacherRepository.getallquizs(id);
	}


	@Override
	public FileEntity uploadFile(MultipartFile file,Course course) throws IOException {
		
		
		FileEntity fileEntity = new FileEntity();
        fileEntity.setFileName(file.getOriginalFilename());
        fileEntity.setData(file.getBytes());
        fileEntity.setCourse(course);
        return fileEntityRepository.save(fileEntity);
		
	}


	@Override
	public List<FileEntity> all(long id) {
		return fileEntityRepository.all(id);
	}


	@Override
	public FileEntity findfilebyid(long id) {
		Optional<FileEntity> obj=fileEntityRepository.findById(id);
		 if(obj.isPresent())
	        {
			 FileEntity course = obj.get();
	          
	          return course;
	        }
	        else
	        {
	          return null;
	        }
	}
	
	@Override
	public Assignments findassignmentsbyid(long id) {
		Optional<Assignments> obj=assignmentsRepository.findById(id);
		 if(obj.isPresent())
	        {
			 Assignments course = obj.get();
	          
	          return course;
	        }
	        else
	        {
	          return null;
	        }
	}


	@Override
	public String addassignment(Assignments assignments) {
		assignmentsRepository.save(assignments);
		return "saved successfully";
	}


	@Override
	public List<Assignments> allssignments(long eid) {
		return teacherRepository. getallasignments(eid);
	}

	
	
}
