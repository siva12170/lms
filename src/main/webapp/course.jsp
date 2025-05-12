<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Course Table</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f0f0;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  }

  th, td {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
    background-color: #ffffff;
    transition: background-color 0.3s ease;
  }

  th {
    background-color: #f2f2f2;
  }

  tr:nth-child(even) {
    background-color: #f8f8f8;
  }

  tr:hover td {
    background-color: #eaeaea;
  }

  /* Colorful cells */
  td:nth-child(1) {
    background-color: #e57373; /* Red */
    color: white;
  }

  td:nth-child(2) {
    background-color: #81c784; /* Green */
    color: white;
  }

  td:nth-child(3) {
    background-color: #64b5f6; /* Blue */
    color: white;
  }

  td:nth-child(4) {
    background-color: #ffb74d; /* Orange */
    color: white;
  }

  td:nth-child(5) {
    background-color: #9575cd; /* Purple */
    color: white;
  }

  td:nth-child(6) {
    background-color: #4db6ac; /* Teal */
    color: white;
  }
td:nth-child(7) {
    background-color:sky blue; /* Teal */
    color: white;
  }
</style>
<%@ include file="TeacherNavbar.jsp" %>
</head>
<body>
<br><br><br><br><br>
<h2 style="text-align: center; color: #444444;">Course Table</h2>
<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Course Code</th>
      <th>Course Name</th>
      <th>LTPS</th>
      <th>Credits</th>
      <th>Slots</th>
      <th>Course Dash</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${course}"  var="courses">
    <tr>
      <td>${courses.id}</td>
      <td>${courses.coursecode}</td>
      <td>${courses.coursename}</td>
      <td>${courses.ltps}</td>
      <td>${courses.credits}</td>
      <td>${courses.slots}</td>
      <td><a href="coursedash?id=${courses.id}">Open</a></td>
    </tr>
  </c:forEach> 
    
  </tbody>
</table>
</body>
</html>
