<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ include file="StudentNavbar.jsp" %>


<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

body {
  font-family: "Roboto", sans-serif;
  background-color: sky-blue;
  background-image: url('https://cdn.dribbble.com/users/27292/screenshots/971165/media/cd574cf03808c5685a04a102795a798c.gif');
  background-size: cover; /* Adjust as needed */
  background-repeat: no-repeat; /* Prevent repeating the image */
}

  .containers {
    max-width: 1170px;
    margin: auto;
    overflow: hidden;
    padding: 0 20px;
  }

  .containers-heading {
    text-align: center;
    margin: 20px;
  }

  .containers-heading::after,
  .containers-heading::before {
    content: "";
    display: inline-block;
    width: 10%;
    height: 2px;
    background-color: #ff6200;
    position: relative;
    bottom: 5px;
  }

  .containers-heading::after {
    left: 10px;
  }

  .containers-heading::before {
    right: 10px;
  }

  header {
    background: #8451ab;
    box-shadow: 1px 1px 4px 0 rgba(0, 0, 0, 0.1);
    position: relative;
    z-index: 10;
    padding: 20px;
    color: #fff;
    text-align: center;
  }

  header::after {
    content: "";
    clear: both;
    display: table;
  }

  .logo {
    float: left;
    padding: 10px 0;
  }

  .course-list {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    grid-gap: 20px;
    margin-top: 20px;
  }

  .course {
    background-color: #fff;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    padding: 20px;
    border-radius: 5px;
    transition: transform 0.3s ease;
    height: 350px; /* Set a fixed height for each card */
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }

  .course:hover {
    transform: translateY(-5px);
  }

  .course img {
    max-width: 100%;
    height: auto;
    border-radius: 5px;
    flex-grow: 1; /* Allow the image to grow within the flex container */
  }

  .course h5 {
    margin: 10px 0;
  }

  p {
    color: #777;
    font-family: Arial, Helvetica, sans-serif;
    line-height: 1.6;
    margin: 10px 0;
  }

  footer {
    background: #333;
    color: #eee;
    text-align: center;
    padding: 20px;
  }

  h5 {
    color: orange;
    font-weight: bold;
    font-size: 1.2em;
    margin: 5px 0;
  }
</style>

<br><br><br>
<div class="containers">
    <h2 class="containers-heading">My Courses</h2>
    <div class="course-list">
        
        <c:forEach items="${details}"  var="detail"> 
        
        <a href="studentcoursedash?id=${detail.facultyCourseMapping.course.id}">
        <div class="course">
            <!-- unsplash img for html -->
            <img src="https://source.unsplash.com/300x200/?html, code" alt="HTML Course Image">
            <h5>Course Name:${detail.facultyCourseMapping.course.coursename}</h5>
            <h5>Course Code:${detail.facultyCourseMapping.course.coursecode}</h5>
            
        </div>
     </a>
     </c:forEach> 
     
    </div>
</div>
