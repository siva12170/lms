<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<%@ include file="StudentNavbar.jsp" %>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
      font-family: Arial, sans-serif;
    }
    .containers {
      max-width: 800px;
      margin: 20px auto;
    }
    h1 {
      text-align: center;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      background-color: #fff;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    th, td {
      padding: 12px 15px;
      text-align: left;
      border-bottom: 1px solid #dee2e6;
    }
    th {
      background-color: #007bff;
      color: #fff;
      font-weight: bold;
    }
    tbody tr:nth-child(even) {
      background-color: #f8f9fa;
    }
    tbody tr:hover {
      background-color: #e2e6ea;
    }
  </style>
</head>
<br><br><br><br><br><br>
<body>
  <div class="containers">
    
    <table class="table">
      <thead>
        <tr>
          <th>Student Id</th>
          <th>Date & Time</th>
          <th>Professor</th>
          <th>Course Name</th>
          <th>Status</th>
        </tr>
      </thead>
      <tbody>
      
      <c:forEach items="${details}"  var="detail">  
        <tr>
          <td>${detail.studentRegistration.student.id}</td>
          <td>${detail.dateTime}</td>
          <td>${detail.studentRegistration.facultyCourseMapping.teacher.id}</td>
          <td>${detail.studentRegistration.facultyCourseMapping.course.coursename}</td>
          
          <td>${detail.porf }</td>
          
         
        </tr>
        </c:forEach> 
      </tbody>
    </table>
  </div>
</body>
</html>
