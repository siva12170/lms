package com.klef.jfsd.springboot.service;

import java.io.IOException;
import java.util.List;

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



public interface TeacherService {

	public String addQuestion(Quiz quiz);
	public Quiz findquizbyid(long eid);
	public Question findquestionbyid(long eid);
	public List<Quiz> allquestions();
	public String addmcq(Question question);
	public List<Question> allbits(Quiz quiz);
	public String addTeacher(Teacher teacher);
	public Teacher findteacherbyid(long eid);
	public String updateSuggestionLikesAndAddTeacher(Teacher likedByTeacher, Long suggestionId);
	public List<FacultyCourseMapping> findByTeacherId(Long teacherId);
	public List<Course> getcourses(long id);
	
	
	//student service
	public String submitQuiz(Answer answer);
	public Teacher checkteacherlogin( Long id, String pwd);
	
	//add comments
	public String addcomment(Comment comment);
	public List<Comment> allcomments();
	public boolean existsByCommentIdAndCustomerId(Long commentId, Long customerId);
	public List<Likes> allLikes();
	public String savetimetable(TimeTable timeTable);
	public List<TimeTable> findTimeTableByTeacherId(Long teacherId);
	public List<FacultyCourseMapping> alllist();
	public String updateRegisteredCapacity(Long id);
	public String updatecountdecreaseRegisteredCapacity(Long id);
	public List<StudentRegistration> findStudentsByFacultyCourseMappingId(long facultyCourseMappingId,long teacherId);
	public Course mycourse(long teachid,long course);
	public List<Quiz> getallquizs(long id);
    public FileEntity uploadFile(MultipartFile file,Course course) throws IOException;
    public List<FileEntity> all(long id);
    public FileEntity findfilebyid(long id);
	public String addassignment(Assignments assignments);
	public List<Assignments> allssignments(long eid);
	public Assignments findassignmentsbyid(long id);
}
