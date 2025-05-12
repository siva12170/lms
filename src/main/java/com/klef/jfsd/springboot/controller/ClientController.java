package com.klef.jfsd.springboot.controller;




import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.Date;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.servlet.ModelAndView;


import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Answer;
import com.klef.jfsd.springboot.model.Assignments;
import com.klef.jfsd.springboot.model.Attempts;
import com.klef.jfsd.springboot.model.Comment;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.FileEntity;
import com.klef.jfsd.springboot.model.Likes;
import com.klef.jfsd.springboot.model.Question;
import com.klef.jfsd.springboot.model.Quiz;
import com.klef.jfsd.springboot.model.QuizResult;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.StudentAttendanceAttended;
import com.klef.jfsd.springboot.model.StudentRegistration;
import com.klef.jfsd.springboot.model.Teacher;
import com.klef.jfsd.springboot.model.TeacherAttendanceConducted;
import com.klef.jfsd.springboot.model.TimeTable;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.StudentService;
import com.klef.jfsd.springboot.service.TeacherService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import reactor.core.publisher.Flux;

@Controller
public class ClientController {

	
	@Autowired
	TeacherService teacherService;
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	StudentService studentService;
	
	@GetMapping("addquiz")
	public ModelAndView addquiz(@RequestParam("id") long eid)
	{
	   ModelAndView mv = new ModelAndView();
	   
	   mv.addObject("eid", eid);
	   mv.setViewName("addquiz");
	   return mv;
	}
	
	@GetMapping("kjk")
	public ModelAndView addquiz()
	{
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("kkk");
	   return mv;
	}
	
	@GetMapping("addppt")
	public ModelAndView addppt(@RequestParam("id") long eid)
	{
	   ModelAndView mv = new ModelAndView();
	   
	   mv.addObject("eid", eid);
	   mv.setViewName("addppt");
	   return mv;
	}
	
	@GetMapping("addhomeassignment")
	public ModelAndView addhomeassignment(@RequestParam("id") long eid)
	{
	   ModelAndView mv = new ModelAndView();
	   
	   mv.addObject("eid", eid);
	   mv.setViewName("addhomeassignment");
	   return mv;
	}
	
	@GetMapping("addinsemlab")
	public ModelAndView addinsemlab(@RequestParam("id") long eid)
	{
	   ModelAndView mv = new ModelAndView();
	   
	   mv.addObject("eid", eid);
	   mv.setViewName("addinsemlab");
	   return mv;
	}
	
	
	@GetMapping("download")
	public ResponseEntity<Resource> downloadFile(@RequestParam("id") long eid)
	{
		FileEntity fileEntity=teacherService.findfilebyid(eid);
		if(fileEntity!=null)
		{
			ByteArrayResource resource = new ByteArrayResource(fileEntity.getData());
			 return ResponseEntity.ok()
	                    .contentType(MediaType.APPLICATION_OCTET_STREAM)
	                    .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + fileEntity.getFileName() + "\"")
	                    .body(resource);
		}
		else {
			return ResponseEntity.notFound().build();
		}
	}
	
	@GetMapping("addStudent")
	public ModelAndView addStudent()
	{
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("StudentRegistration");
	   return mv;
	}
	
	
	@GetMapping("myclasses")
	public ModelAndView myclasses(HttpServletRequest request)
	{
		 HttpSession session=request.getSession();
	   ModelAndView mv = new ModelAndView();
	   Long tid=(Long)session.getAttribute("tid");
	   List<FacultyCourseMapping> fcm=teacherService.findByTeacherId(tid);
	   mv.addObject("fcm", fcm);
	   mv.setViewName("myclasses");
	   return mv;
	}
	@GetMapping("/")
	public ModelAndView login(HttpServletRequest request)
	{
	   HttpSession session=request.getSession();
	   session.invalidate();
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("Login");
	   return mv;
	   
	}
	@GetMapping("/comment")
	public ModelAndView comment()
	{
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("comment");
	   return mv;
	}
	@GetMapping("course")
	public ModelAndView course(HttpServletRequest request)
	{
	   ModelAndView mv = new ModelAndView();
	   HttpSession session=request.getSession();
	   Long tid=(Long)session.getAttribute("tid");
	   List<Course> course=teacherService.getcourses(tid);
	   mv.addObject("course", course);
	   mv.setViewName("course");
	   return mv;
	}
	
	@GetMapping("coursedash")
	public ModelAndView coursedash(@RequestParam("id") long eid,HttpServletRequest request)
	{
	   ModelAndView mv = new ModelAndView();
	   HttpSession session=request.getSession();
	   Long tid=(Long)session.getAttribute("tid");
	   Course course=teacherService.mycourse(tid, eid);
	   mv.addObject("home", teacherService.allssignments(eid));
	   mv.addObject("quiz", teacherService.getallquizs(eid));
	   mv.addObject("present", teacherService.all(eid));
	   mv.addObject("courses", course);
	   System.out.print(course.getCoursename());
	   mv.setViewName("coursedash");
	   return mv;
	}
	
	
	@GetMapping("attemptquiz")
	public ModelAndView attemptquiz(@RequestParam("id") long eid,@RequestParam("aid") long aid,HttpServletRequest request)
	{
	   ModelAndView mv = new ModelAndView(); 
	   HttpSession session=request.getSession();
	   Long sid=(Long)session.getAttribute("sid");
	   mv.addObject("aid", aid);
	   mv.addObject("quiz", studentService.studentquizzes(aid, eid, sid));
	   mv.setViewName("attemptquiz");
	   return mv;
	}
	
	
	@GetMapping("acreg")
	public ModelAndView acreg(HttpServletRequest request)
	{
	   ModelAndView mv = new ModelAndView();
	   HttpSession session=request.getSession();
	   mv.setViewName("AcademicRegistration");
	   Long sid=(Long)session.getAttribute("sid");
	   List <TimeTable> timetable=studentService.findTimeTableBystudentId(sid);
	   List<FacultyCourseMapping> list=studentService.allsections();
	   List<StudentRegistration> slist=studentService.alllist(sid);
	   List<FacultyCourseMapping> flist=studentService.findFacultyCourseMappingsByRegistrationId(sid);
	   mv.addObject("timetables", timetable);
	   mv.addObject("slist", slist);
	   mv.addObject("flist", flist);
	   
	   mv.addObject("sectionlist", list);
	   return mv;
	}
	@GetMapping("timetable")
	public ModelAndView timetable(HttpServletRequest request)
	{
	   ModelAndView mv = new ModelAndView();
	   HttpSession session=request.getSession();
	   Long tid=(Long)session.getAttribute("tid");
	   List <TimeTable> timetable=teacherService.findTimeTableByTeacherId(tid);
	   List<FacultyCourseMapping> facultyCourseMappings=teacherService.alllist();
	   mv.addObject("timetables", timetable);
	   mv.addObject("facultyCourseMappings", facultyCourseMappings);
	   mv.setViewName("timetable");
	   return mv;
	}
	@GetMapping("studentattendance")
	public ModelAndView studentattendance(HttpServletRequest request)
	{
	   ModelAndView mv = new ModelAndView();
	   HttpSession session=request.getSession();
	   
	   Long sid=(Long)session.getAttribute("sid");
	   if(sid!=null) {
	   List <StudentRegistration> studentRegistrations=studentService.findByStudentId(sid);
	   mv.addObject("studentRegistrations", studentRegistrations);
	   mv.setViewName("studentattendance");}
	   else {
		   mv.setViewName("error");
	   }
	   return mv;
	}
	
	
	
	
	@GetMapping("createclass")
	public ModelAndView createclass()
	{
	   ModelAndView mv = new ModelAndView();
	   List<Teacher> teacherlist=adminService.allteachers();
	   List<Course> courselist=adminService.allcourses();
	   mv.addObject("teacherlist", teacherlist);
	   mv.addObject("courselist", courselist);
	   
	   mv.setViewName("createclass");
	   return mv;
	}
	@GetMapping("Teacherreg")
	public ModelAndView Teacherreg()
	{
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("TeacherRegistration");
	   return mv;
	}
	@GetMapping("Comment")
	public ModelAndView Comment()
	{
	   ModelAndView mv = new ModelAndView();
	   mv.setViewName("Comment");
	   return mv;
	}
	
	
	@GetMapping("createcourse")
	public ModelAndView courseregister()
	{
	   ModelAndView mv = new ModelAndView();
	   List<Teacher> teacherlist=adminService.allteachers();
	   mv.addObject("teacherlist", teacherlist);
	   mv.setViewName("createcourse");
	   return mv;
	}
	
	@GetMapping("TeacherDash")
	public ModelAndView TeacherDash(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
	   ModelAndView mv = new ModelAndView();
	   if(session.getAttribute("tid")!=null && session.getAttribute("tname")!=null )
	   {
	   mv.addObject("name", session.getAttribute("tname"));
	   List<Comment> comment=teacherService.allcomments();
	   List<Likes> likes=teacherService.allLikes();
	   Long tid=(Long)session.getAttribute("tid");
	   mv.addObject("likes", likes);
	  mv.addObject("comments", comment);
	  mv.addObject("tid", tid);
	   mv.setViewName("TeacherDash");
	   }
		else
		{
			mv.setViewName("redirect:/");
		}
	   return mv;
	}
	
	@GetMapping("StudentDash")
	public ModelAndView StudentDash(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		ModelAndView mv = new ModelAndView();
		 if(session.getAttribute("sid")!=null && session.getAttribute("sname")!=null )
		   {
		   mv.addObject("sname", session.getAttribute("sname"));
		   List<Comment> comment=teacherService.allcomments();
		   List<Likes> likes=teacherService.allLikes();
		   Long tid=(Long)session.getAttribute("sid");
		   mv.addObject("likes", likes);
		  mv.addObject("comments", comment);
		  mv.addObject("tid", tid);
		   mv.setViewName("StudentDash");
		   }
			else
			{
				mv.setViewName("redirect:/");
			}
		   return mv;
		}
		
	
	
	@GetMapping("adminhome")
	public ModelAndView adminhome(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("aid")!=null && session.getAttribute("aname")!=null )
	   {
	   mv.addObject("name", session.getAttribute("aname"));
	   mv.setViewName("adminhome");
	   }
		else
		{
			mv.setViewName("Login");
		}
	   return mv;
	}
	
	@PostMapping("checklogin")
	public ModelAndView checkemplogin(HttpServletRequest request)
	{
	     ModelAndView mv = new ModelAndView();
	     
	     String eid = request.getParameter("id");
	     long id=Long.parseLong(eid);
	     String pwd = request.getParameter("pwd");
	     
	     Admin a = adminService.checkadminlogin(id, pwd);
	     Teacher t=teacherService.checkteacherlogin(id, pwd);
	     Student s=studentService.checkstudentlogin(id, pwd);
	     
	     if(a!=null && pwd.equals(a.getPassword()))
	     {
	        //session
	    	 
	    	 HttpSession session=request.getSession();
	    	 session.setAttribute("aid", a.getId()); 
	    	 session.setAttribute("aname", a.getUsername());
	    	 session.setMaxInactiveInterval(1800);
	         mv.setViewName("redirect:/adminhome");
	     }	    
	     else if(t!=null && pwd.equals(t.getPassword())) {
	    	 HttpSession session=request.getSession();
	    	 session.setAttribute("tid", t.getId());  
	    	 session.setAttribute("tname", t.getEmail());
	    	 List<Comment> comment=teacherService.allcomments();
	   	     mv.addObject("comments", comment);
	         mv.setViewName("redirect:/TeacherDash");
	     }
	     else if(s!=null && pwd.equals(s.getPassword()))
	     {
	    	 HttpSession session=request.getSession();
	    	 session.setAttribute("sid", s.getId()); 
	    	 session.setAttribute("sname", s.getEmail());
	    	 mv.setViewName("redirect:/StudentDash");
	     }
	     else
	     {
	        mv.setViewName("Login");
	        mv.addObject("message", "false");
	     }
	       
	     return mv;
	}
	
	
	@PostMapping("addquiz")
	public ModelAndView insertquiz(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView();
		
		String msg=null;
		try
		{
			String title = request.getParameter("title");
			String courses = request.getParameter("course");
			long course=Long.parseLong(courses);
			Quiz quiz=new Quiz();
			quiz.setTitle(title);
			Course course2=adminService.findcoursebyid(course);
			quiz.setCourse(course2);
			msg = teacherService.addQuestion(quiz);
			
			mv.setViewName("redirect:/coursedash?id="+courses);
			mv.addObject("message",msg);
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}
		return mv;
	}

	
	@GetMapping("viewquiz")
	  public ModelAndView viewempdemo(@RequestParam("id") int eid)
	  {
	    Quiz questions = teacherService.findquizbyid(eid);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewquiz");
	    mv.addObject("mcqs",teacherService.allbits(teacherService.findquizbyid(eid)));
	    mv.addObject("questions", questions);
	    return mv;
	  }
	
	
	@GetMapping("viewassignment")
	  public ModelAndView viewassignment(@RequestParam("id") int eid)
	  {
	    
	    ModelAndView mv = new ModelAndView();
	    
	    mv.addObject("assignments",teacherService.findassignmentsbyid(eid));
	   
	    mv.setViewName("viewassignment");
	    return mv;
	  }

	@PostMapping("addmcq")
	public ModelAndView addmcq(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView();
		
		String msg=null;
		try
		{
			String content = request.getParameter("title");
			String A = request.getParameter("A");
			String B = request.getParameter("B");
			String C = request.getParameter("C");
			String D = request.getParameter("D");
			String id=request.getParameter("id");
			String correctanswer=request.getParameter("correct");
			
			int eid=Integer.parseInt(id);
			
			Question question=new Question();
			question.setContent(content);
			question.setA(A);
			question.setB(B);
			question.setC(C);
			question.setD(D);
			question.setCorrectanswer(correctanswer);
			question.setQuiz(teacherService.findquizbyid(eid));
			
			msg = teacherService.addmcq(question);
			mv.addObject("quiz", teacherService.allquestions());
			mv.addObject("mcqs",teacherService.allbits(teacherService.findquizbyid(eid)));
			mv.setViewName("redirect:/question?id="+id);
			mv.addObject("message",msg);
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}
		return mv;
	}
	
	
	@PostMapping("addcourse")
	public ModelAndView addCourse(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String msg=null;
		
		try
		{
			String coursecode=request.getParameter("coursecode");
			String coursename=request.getParameter("coursename");
			String ltps=request.getParameter("ltps");
			String credit=request.getParameter("credits");
			double credits=Double.parseDouble(credit);
			String slot=request.getParameter("slots");
			int slots=Integer.parseInt(slot);
			String headid=request.getParameter("Teacherid");
			Long headids=Long.parseLong(headid);
			
			Course course=new Course();
			course.setCoursecode(coursecode);
			course.setCoursename(coursename);
			course.setCredits(credits);
			course.setLtps(ltps);
			Teacher teacher=teacherService.findteacherbyid(headids);
			course.setCoursehead(teacher);
			course.setSlots(slots);
			
			msg=adminService.addcourse(course);
			mv.addObject("msg",msg);
			mv.setViewName("redirect:/createcourse");
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}
		return mv;
		
	}
	
	
	@PostMapping("createsection")
	public ModelAndView createsection(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String msg=null;
		
		try
		{
			
			String TeacherId=request.getParameter("Teacherid");
			Long TeacherIds=Long.parseLong(TeacherId);
			String CourseId=request.getParameter("Courseid");
			Long CourseIds=Long.parseLong(CourseId);
			String SectionNo=request.getParameter("SectionNo");
			Long SectionNos=Long.parseLong(SectionNo);
			String capacitys=request.getParameter("capacity");
			Long capacity=Long.parseLong(capacitys);
			
			
			
			String slot11 = request.getParameter("slot11");
			boolean slot11Boolean = Boolean.parseBoolean(slot11);

			String slot12 = request.getParameter("slot12");
			boolean slot12Boolean = Boolean.parseBoolean(slot12);

			String slot13 = request.getParameter("slot13");
			boolean slot13Boolean = Boolean.parseBoolean(slot13);

			String slot14 = request.getParameter("slot14");
			boolean slot14Boolean = Boolean.parseBoolean(slot14);

			String slot15 = request.getParameter("slot15");
			boolean slot15Boolean = Boolean.parseBoolean(slot15);

			String slot16 = request.getParameter("slot16");
			boolean slot16Boolean = Boolean.parseBoolean(slot16);

			String slot21 = request.getParameter("slot21");
			boolean slot21Boolean = Boolean.parseBoolean(slot21);

			String slot22 = request.getParameter("slot22");
			boolean slot22Boolean = Boolean.parseBoolean(slot22);

			String slot23 = request.getParameter("slot23");
			boolean slot23Boolean = Boolean.parseBoolean(slot23);

			String slot24 = request.getParameter("slot24");
			boolean slot24Boolean = Boolean.parseBoolean(slot24);

			String slot25 = request.getParameter("slot25");
			boolean slot25Boolean = Boolean.parseBoolean(slot25);

			String slot26 = request.getParameter("slot26");
			boolean slot26Boolean = Boolean.parseBoolean(slot26);

			String slot31 = request.getParameter("slot31");
			boolean slot31Boolean = Boolean.parseBoolean(slot31);

			String slot32 = request.getParameter("slot32");
			boolean slot32Boolean = Boolean.parseBoolean(slot32);

			String slot33 = request.getParameter("slot33");
			boolean slot33Boolean = Boolean.parseBoolean(slot33);

			String slot34 = request.getParameter("slot34");
			boolean slot34Boolean = Boolean.parseBoolean(slot34);

			String slot35 = request.getParameter("slot35");
			boolean slot35Boolean = Boolean.parseBoolean(slot35);

			String slot36 = request.getParameter("slot36");
			boolean slot36Boolean = Boolean.parseBoolean(slot36);

			String slot41 = request.getParameter("slot41");
			boolean slot41Boolean = Boolean.parseBoolean(slot41);

			String slot42 = request.getParameter("slot42");
			boolean slot42Boolean = Boolean.parseBoolean(slot42);

			String slot43 = request.getParameter("slot43");
			boolean slot43Boolean = Boolean.parseBoolean(slot43);

			String slot44 = request.getParameter("slot44");
			boolean slot44Boolean = Boolean.parseBoolean(slot44);

			String slot45 = request.getParameter("slot45");
			boolean slot45Boolean = Boolean.parseBoolean(slot45);

			String slot46 = request.getParameter("slot46");
			boolean slot46Boolean = Boolean.parseBoolean(slot46);

			String slot51 = request.getParameter("slot51");
			boolean slot51Boolean = Boolean.parseBoolean(slot51);

			String slot52 = request.getParameter("slot52");
			boolean slot52Boolean = Boolean.parseBoolean(slot52);

			String slot53 = request.getParameter("slot53");
			boolean slot53Boolean = Boolean.parseBoolean(slot53);

			String slot54 = request.getParameter("slot54");
			boolean slot54Boolean = Boolean.parseBoolean(slot54);

			String slot55 = request.getParameter("slot55");
			boolean slot55Boolean = Boolean.parseBoolean(slot55);

			String slot56 = request.getParameter("slot56");
			boolean slot56Boolean = Boolean.parseBoolean(slot56);

			String slot61 = request.getParameter("slot61");
			boolean slot61Boolean = Boolean.parseBoolean(slot61);

			String slot62 = request.getParameter("slot62");
			boolean slot62Boolean = Boolean.parseBoolean(slot62);

			String slot63 = request.getParameter("slot63");
			boolean slot63Boolean = Boolean.parseBoolean(slot63);

			String slot64 = request.getParameter("slot64");
			boolean slot64Boolean = Boolean.parseBoolean(slot64);

			String slot65 = request.getParameter("slot65");
			boolean slot65Boolean = Boolean.parseBoolean(slot65);

			String slot66 = request.getParameter("slot66");
			boolean slot66Boolean = Boolean.parseBoolean(slot66);


			
			
			
			FacultyCourseMapping facultyCourseMapping=new FacultyCourseMapping();
			Teacher teacher=teacherService.findteacherbyid(TeacherIds);
			facultyCourseMapping.setTeacher(teacher);
			facultyCourseMapping.setSecno(SectionNos);
			Course course=adminService.findcoursebyid(CourseIds);
			facultyCourseMapping.setCourse(course);
			facultyCourseMapping.setcapacity(capacity);
			TimeTable timeTable=new TimeTable();
			
			timeTable.setSlot11(slot11Boolean);
			timeTable.setSlot12(slot12Boolean);
			timeTable.setSlot13(slot13Boolean);
			timeTable.setSlot14(slot14Boolean);
			timeTable.setSlot15(slot15Boolean);
			timeTable.setSlot16(slot16Boolean);
			timeTable.setSlot21(slot21Boolean);
			timeTable.setSlot22(slot22Boolean);
			timeTable.setSlot23(slot23Boolean);
			timeTable.setSlot24(slot24Boolean);
			timeTable.setSlot25(slot25Boolean);
			timeTable.setSlot26(slot26Boolean);
			timeTable.setSlot31(slot31Boolean);
			timeTable.setSlot32(slot32Boolean);
			timeTable.setSlot33(slot33Boolean);
			timeTable.setSlot34(slot34Boolean);
			timeTable.setSlot35(slot35Boolean);
			timeTable.setSlot36(slot36Boolean);
			timeTable.setSlot41(slot41Boolean);
			timeTable.setSlot42(slot42Boolean);
			timeTable.setSlot43(slot43Boolean);
			timeTable.setSlot44(slot44Boolean);
			timeTable.setSlot45(slot45Boolean);
			timeTable.setSlot46(slot46Boolean);
			timeTable.setSlot51(slot51Boolean);
			timeTable.setSlot52(slot52Boolean);
			timeTable.setSlot53(slot53Boolean);
			timeTable.setSlot54(slot54Boolean);
			timeTable.setSlot55(slot55Boolean);
			timeTable.setSlot56(slot56Boolean);
			timeTable.setSlot61(slot61Boolean);
			timeTable.setSlot62(slot62Boolean);
			timeTable.setSlot63(slot63Boolean);
			timeTable.setSlot64(slot64Boolean);
			timeTable.setSlot65(slot65Boolean);
			timeTable.setSlot66(slot66Boolean);
          
            adminService.CreateTimeTable(timeTable);
			facultyCourseMapping.setTable(timeTable);
			msg=adminService.CreateMapping(facultyCourseMapping);
			
			mv.addObject("msg",msg);
			mv.setViewName("redirect:/createclass");
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}
		return mv;
		
	}
	
	
	@PostMapping("addTeacher")
	public ModelAndView addTeacher(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		String msg=null;
		try
		{
			String eid = request.getParameter("id");
			long id=Long.parseLong(eid);
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String Gender = request.getParameter("Gender");
			String experience= request.getParameter("experience");
			
			
			Teacher teacher=new Teacher();
			teacher.setEmail(email);
			teacher.setExperience(experience);
			teacher.setGender(Gender);
			teacher.setId(id);
			teacher.setPassword(password);
			teacher.setRole("ROLE_TEACHER");
			
			
			
			
			
			msg = teacherService.addTeacher(teacher);
			
			mv.addObject("message",msg);
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}
		return mv;
	}
	
	
	
	 @PostMapping("addhomeassignments")
	    public ModelAndView addhomeassignment(HttpServletRequest request) {
	        try {
	        	ModelAndView mv = new ModelAndView();
	        	String Question = request.getParameter("question");
	        	String cids=request.getParameter("cid");
	        	String title=request.getParameter("title");
	        	long cid=Long.parseLong(cids);
	        	Assignments assignments=new Assignments();
	        	Course course=adminService.findcoursebyid(cid);
	        	assignments.setCourse(course);
	        	assignments.setQuestion(Question);
	        	assignments.setTitle(title);
	        	assignments.setType(false);
	        	teacherService.addassignment(assignments);
	        	
	        	mv.setViewName("redirect:/coursedash?id="+course.getId());
	            return mv;
	        } catch (Exception e) {
	        	ModelAndView mv = new ModelAndView();
	        	mv.setViewName("error");
	            return mv;
	        }
	    }
	 
	
	 
	 
	 @PostMapping("addinsemlab")
	    public ModelAndView addinsemlab(HttpServletRequest request) {
	        try {
	        	ModelAndView mv = new ModelAndView();
	        	String Question = request.getParameter("question");
	        	String cids=request.getParameter("cid");
	        	String title=request.getParameter("title");
	        	long cid=Long.parseLong(cids);
	        	Assignments assignments=new Assignments();
	        	Course course=adminService.findcoursebyid(cid);
	        	assignments.setCourse(course);
	        	assignments.setQuestion(Question);
	        	assignments.setTitle(title);
	        	assignments.setType(true);
	        	teacherService.addassignment(assignments);
	        	
	        	mv.setViewName("redirect:/coursedash?id="+course.getId());
	            return mv;
	        } catch (Exception e) {
	        	ModelAndView mv = new ModelAndView();
	        	mv.setViewName("error");
	            return mv;
	        }
	    }
	 
	
	@PostMapping("addstudent")
	public ModelAndView addstudent(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		String msg=null;
		try
		{
			String eid = request.getParameter("id");
			long id=Long.parseLong(eid);
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String Gender = request.getParameter("gender");
			
			
			
			Student student=new Student();
			student.setId(id);
			student.setEmail(email);
			student.setGender(Gender);
			student.setPassword(password);
			student.setActive(true);
			student.setRole("ROLE_STUDENT");
			
			msg=studentService.AddStudent(student);
			
			mv.setViewName("redirect:/addStudent");
			
			
			
			
			mv.addObject("message",msg);
		}
		catch(Exception e)
		{
			msg=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}
		return mv;
	}
	
	
	@GetMapping("question")
    public ModelAndView getQuizQuestions(@RequestParam("id") int eid) {
			Quiz questions = teacherService.findquizbyid(eid);
		    ModelAndView mv = new ModelAndView();
		    mv.setViewName("questions");
		    mv.addObject("mcqs",teacherService.allbits(teacherService.findquizbyid(eid)));
		    mv.addObject("questions", questions);
		    return mv;
    }
	
	@GetMapping("section")
	public ModelAndView setsection(@RequestParam("id") long eid,HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		StudentRegistration studentRegistration=new StudentRegistration();
		HttpSession session=request.getSession();
		Long sid=(Long)session.getAttribute("sid");
		Student student=studentService.Checkstudentbyid(sid);
		FacultyCourseMapping facultyCourseMapping=studentService.setsection(eid);
		studentRegistration.setStudent(student);
		studentRegistration.setTotalAttended(0);
		studentRegistration.setTotalAbsent(0);
		studentRegistration.setFacultyCourseMapping(facultyCourseMapping);
		String msg=studentService.AddSec(studentRegistration);
		teacherService.updateRegisteredCapacity(eid);
		List<FacultyCourseMapping> list=studentService.allsections();
        mv.addObject("sectionlist", list);
		mv.addObject("msg", msg);
		mv.setViewName("redirect:/acreg");
		return mv;
	}
	
	@GetMapping("deletesection")
	public ModelAndView setsection(@RequestParam("id") long eid,@RequestParam("did") long did)
	{
		
		ModelAndView mv=new ModelAndView();
		studentService.deletesection(eid);
		teacherService.updatecountdecreaseRegisteredCapacity(did);
		mv.setViewName("redirect:/acreg");
		return mv;
	}
	
	@GetMapping("sectionlist")
	public ModelAndView sectionlist(@RequestParam("id") long eid,HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		Long tid=(Long)session.getAttribute("tid");
		List<StudentRegistration> details=teacherService.findStudentsByFacultyCourseMappingId(eid, tid);
		mv.addObject("details", details);
		mv.setViewName("studentlist");
		return mv;
	}
	@GetMapping("myattendance")
	public ModelAndView myattendance(@RequestParam("id") long eid,HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		Long sid=(Long)session.getAttribute("sid");
		List<StudentAttendanceAttended> attended=studentService.Register(sid, eid);
		mv.addObject("details", attended);
		mv.setViewName("attendancehistory");
		return mv;
	}
	
	@GetMapping("courselist")
	public ModelAndView courselist(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		Long sid=(Long)session.getAttribute("sid");
		List<StudentRegistration> attended=studentService.courselist(sid);
		mv.addObject("details", attended);
		mv.setViewName("courselist");
		return mv;
	}
	
	@GetMapping("studentcoursedash")
	public ModelAndView courselist(@RequestParam("id") long eid,HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		Long sid=(Long)session.getAttribute("sid");
		
		mv.addObject("attemptss",  studentService.findallanswers(sid));
		mv.addObject("home", studentService.getallasignments(eid,sid));
		mv.addObject("quiz", studentService.getallquizs(eid,sid));
		mv.addObject("present", studentService.all(eid,sid));
		mv.setViewName("studentcoursedash");
		System.out.println(studentService.findallanswers(2).size());
		return mv;
	}
	@GetMapping("submitassignment")
	public ModelAndView submitassignment(@RequestParam("id") long eid,@RequestParam("aid") long aid,HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		Long sid=(Long)session.getAttribute("sid");
		mv.addObject("home", studentService.studentassignments(aid,eid,sid));
		
		
		mv.setViewName("submitassignment");
		return mv;
	}
	
	
	@GetMapping("Attendance")
	public ModelAndView Attendance(@RequestParam("id") long eid,HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		Long tid=(Long)session.getAttribute("tid");
		List<StudentRegistration> details=teacherService.findStudentsByFacultyCourseMappingId(eid, tid);
		mv.addObject("details", details);
		mv.addObject("eid",eid);
		mv.setViewName("AttendanceRegister");
		return mv;
	}
	
	@PostMapping("attsubmit")
	public ModelAndView SubmitAttendace(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		HttpSession session=request.getSession();
		
		try
		{
			Long tid=(Long)session.getAttribute("tid");
			String eids=request.getParameter("eid");
			Long eid=Long.parseLong(eids);
			
			String fids=request.getParameter("fid");
			Long fid=Long.parseLong(fids);
			List<StudentRegistration> details=teacherService.findStudentsByFacultyCourseMappingId(eid, tid);
			int i;
			Date currentDate = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("EEEE, MMMM-d, yyyy");
			String formattedDate = dateFormat.format(currentDate);
			TeacherAttendanceConducted teacherAttendanceConducted=new TeacherAttendanceConducted();
			teacherAttendanceConducted.setDateTime(formattedDate);
			teacherAttendanceConducted.setFacultyCourseMapping(studentService.setsection(fid));
			
			
			for(i=1;i<=details.size();i++)
			{
				 String aorfs=request.getParameter("check"+String.valueOf(i));
				 Boolean aorf=Boolean.parseBoolean(aorfs);
				String ids=request.getParameter("id"+String.valueOf(i));
				Long id=Long.parseLong(ids);
				System.out.println(aorf);
				System.out.println(id);
				
				
				
				
				StudentRegistration studentRegistration=studentService.studentregbyid(id);
				StudentAttendanceAttended studentattend=new StudentAttendanceAttended();
				studentattend.setDateTime(formattedDate);
				studentattend.setStudentRegistration(studentRegistration);
				if(aorf==true)
				{
					studentattend.setPorf("absent");
					long k=studentRegistration.getTotalAbsent()+1;
					
					
					studentService.updatetotalabsent(k, id, tid);
				
				}
				else
				{
					studentattend.setPorf("present");
					long k=studentRegistration.getTotalAttended()+1;
					
					studentService.updatetotalattended(k, id, tid);
					
				}
				studentService.savestudentattendance(studentattend);
				
				
			}
			FacultyCourseMapping fcm=studentService.setsection(fid);
			studentService.updateTotalConductedById(fcm.getTotalConducted()+1, fid);
			studentService.Teacherconcuted(teacherAttendanceConducted);
			
			mv.setViewName("redirect:/myclasses");
		}
		catch(Exception e)
		{
			
			mv.setViewName("displayerror");
			
		}
		return mv;
	}
	
	
	@GetMapping("Teacherlike")
    public ModelAndView like(@RequestParam("id") long eid,HttpServletRequest request) {
		HttpSession session=request.getSession();
		 long tid= (long) session.getAttribute("tid");
		 
			
			boolean s=teacherService.existsByCommentIdAndCustomerId(eid, tid);
			
			ModelAndView mv = new ModelAndView();
			
			if(s!=false) {
		    
		    mv.setViewName("redirect:/TeacherDash");
			}
			else {
			    mv.setViewName("redirect:/error");
			}
		    
		    
		    return mv;
    }
	
	@PostMapping("addcomment")
	public ModelAndView addcomment(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		HttpSession session=request.getSession();
		long tid= (long) session.getAttribute("tid");
		Teacher teacher=teacherService.findteacherbyid(tid);
		String msg=null;
		try {
			String text=request.getParameter("comment");
			Comment comment=new Comment();
			comment.setText(text);
			comment.setTeacher(teacher);
			msg=teacherService.addcomment(comment);
			mv.addObject("message",msg);
			mv.setViewName("redirect:/TeacherDash");
		}
		catch(Exception e){
			msg=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}
		return mv;
		
	}
	
	
	 @PostMapping("/upload")
	    public ModelAndView uploadFile(@RequestParam("file") MultipartFile file, @RequestParam("courseId") String courseId) {
	        try {
	        	ModelAndView mv = new ModelAndView();
	        	Long course=Long.parseLong(courseId);
	        	Course course2=adminService.findcoursebyid(course);
	            teacherService.uploadFile(file,course2);
	            mv.setViewName("redirect:/TeacherDash");
	            return mv;
	        } catch (IOException e) {
	        	ModelAndView mv = new ModelAndView();
	        	mv.setViewName("error");
	            return mv;
	        }
	    }
	 
	 
	 
	
	 
	
	@PostMapping("submit")
    public ModelAndView submitQuiz(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session=request.getSession();
		Long sid=(Long)session.getAttribute("sid");
		String quiznumberNumber=request.getParameter("quiznumberNumber");
		Long quiznumber=Long.parseLong(quiznumberNumber);
		List<Question> question=teacherService.allbits(teacherService.findquizbyid(quiznumber));
		int sum=0;
		Student student=studentService.Checkstudentbyid(sid);
		Attempts attempts=new Attempts();
		attempts.setQuiz(teacherService.findquizbyid(quiznumber));
		attempts.setStudent(student);
		studentService.setattempts(attempts);
		for(int i=1;i<=question.size();i++)
		{
			String questionNumber=request.getParameter("questionId"+String.valueOf(i));
			Long questionId=Long.parseLong(questionNumber);
			String selectedAnswer=request.getParameter("answer"+String.valueOf(i));
			System.out.println(questionId);
			System.out.println(selectedAnswer);
			Question questions=studentService.question(questionId);
			Answer answers=new Answer();
			answers.setQuestion(questions);
			answers.setSelectedAnswer(selectedAnswer);
			
			answers.setAttempts(attempts);
			studentService.Addanswer(answers);
			Question question2=teacherService.findquestionbyid(questionId);
			String answer=question2.getCorrectanswer();
			if(selectedAnswer.equals(answer)){
				System.out.println("hello");
				sum++;
			}
		}
		Quiz quiz=studentService.findquizbyid(quiznumber);
		QuizResult quizResult=new QuizResult();
		quizResult.setQuiz(quiz);
		quizResult.setScore(sum);
		quizResult.setStudent(student);
		quizResult.setAttempts(attempts);
		studentService.savequizresult(quizResult);
		System.out.println(sum);
		
		mv.setViewName("redirect:/studentcoursedash?id="+quiz.getCourse().getId());
        return mv;
    }
	
	
	 

	    
	
}
