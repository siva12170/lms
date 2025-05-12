<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Interactive Course Page</title>
 <style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f0f0;
  }

  .containers {
    max-width: 1200px;
    margin: 20px auto;
    padding: 0 20px;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
  }

  .card {
    width: 300px;
    background-color: #ffffff;
    border-radius: 8px;
    margin: 20px;
    padding: 20px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
  }

  .card:hover {
    transform: translateY(-5px);
  }

  .card h2 {
    font-size: 1.5rem;
    margin-bottom: 10px;
    color: #333333;
  }

  .card p {
    color: #666666;
  }

  .general {
    background-color: #81c784; /* Green */
  }

  .assignments {
    background-color: #64b5f6; /* Blue */
  }

  .quizzes {
    background-color: #ffb74d; /* Orange */
  }

  .presentations {
    background-color: #9575cd; /* Purple */
  }

  .labs {
    background-color: #4db6ac; /* Teal */
  }

  .content {
    margin-top: 40px;
    display: flex;
    justify-content: space-around;
  }

  .content .section {
    width: 200px;
    padding: 20px;
    background-color: #ffffff;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  }

  .content .section h3 {
    font-size: 1.2rem;
    margin-bottom: 10px;
    color: #333333;
  }

  .content .section ul {
    list-style-type: none;
    padding: 0;
  }

  .content .section ul li {
    margin-bottom: 10px;
    color: #666666;
  }
  a{
  text-decoration: none;
  }
  
   .back-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff; /* Blue color */
    color: #fff; /* White text color */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none; /* Remove default underline */
    transition: background-color 0.3s ease;
  }

  .back-button:hover {
    background-color: #0056b3; /* Darker blue on hover */
  }
  
</style>
 
 
</head>
<br> 
<a href="course" class="back-button">Back</a>
<body>

<div class="containers">



<div class="card hello">
    <h2>Course Name:${courses.coursename}</h2>
    <p>Course Code:${courses.coursecode}</p>
  </div>


  <div class="card general">
    <h2>General Information</h2>
    <p>This section contains general information about the course.</p>
  </div>
<a href="addhomeassignment?id=${courses.id}">
  <div class="card assignments">
    <h2>Assignments</h2>
    <p>Access all your assignments here.</p>
  </div>
   </a>
<a href="addquiz?id=${courses.id}">
  <div class="card quizzes">
    <h2>Quizzes</h2>
    <p>Practice quizzes and assess your knowledge.</p>
  </div>
</a>
<a href="addppt?id=${courses.id}">
  <div class="card presentations">
    <h2>Presentations</h2>
    <p>View or download course presentations.</p>
  </div>
</a>
<a href="addinsemlab?id=${courses.id}">
  <div class="card labs">
    <h2>In-Semester Labs</h2>
    <p>Explore and complete in-lab activities.</p>
  </div>
 </a>
</div>

<div class="content">
  <div class="section">
    <h3>General Information</h3>
    <ul>
      <li>Course Title: ${courses.coursename}</li>
      <li>Course Co-ordinator : ${courses.coursehead.id}</li>
      <li>Course Code: ${courses.coursecode}</li>
      <li>L-T-P-S: ${courses.ltps}</li>
    </ul>
  </div>

  <div class="section">
    <h3>Assignments</h3>
    <ul>
    <c:forEach items="${home}"  var="homes">
    <c:if test="${homes.type==false}">
     <a href="viewassignment?id=${homes.id}"> <li>${homes.title}</li></a>
      </c:if>
      </c:forEach> 
    </ul>
  </div>

  <div class="section">
    <h3>Quizzes</h3>
    <ul>
    
    <c:forEach items="${quiz}"  var="quizs">
      <li><a href='<c:url value="viewquiz?id=${quizs.id}"></c:url>'>${quizs.title}</a>
      <a href='<c:url value="question?id=${quizs.id}"></c:url>'>View</a>
      </li>
      </c:forEach> 
    </ul>
  </div>

  <div class="section">
    <h3>Presentations</h3>
    
    <ul>
    
    <c:forEach items="${present}"  var="presents">
      <li>${presents.fileName}</li>
      <li><a href="download?id=${presents.id}">Download</a></li>
      </c:forEach>
    </ul>
     
    
  </div>

  <div class="section">
    <h3>In-Semester Labs</h3>
    
    <ul>
    <c:forEach items="${home}"  var="homes">
    
     <c:if test="${homes.type==true}">
     <a href="viewassignment?id=${homes.id}"> <li>${homes.title}</li></a>
      </c:if>
      
      
      </c:forEach>
    </ul>
    
  </div>
</div>

</body>
</html>
