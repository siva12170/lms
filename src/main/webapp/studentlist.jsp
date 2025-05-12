<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student List</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
    }

    h1 {
      color: orange; /* Jigalu jigalu purple */
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th, td {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: left;
    }

    th {
      background-color: orange; /* Jigalu jigalu purple */
      color: #fff;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    tr:hover {
      background-color: #ddd;
    }

    td.attended, td.absent, td.conducted {
      font-weight: bold;
    }

    td.attended {
      color: #00cc66; /* Jigalu jigalu green */
    }

    td.absent {
      color: #ff3300; /* Jigalu jigalu red */
    }

    td.percentage {
      color: orange; /* Jigalu jigalu purple */
    }
  </style>
  <%@ include file="TeacherNavbar.jsp" %>
</head>
<br><br><br><br>
<body>
 <center> <h1>Student List</h1></center>
  <table>
    <thead>
      <tr>
        <th>Name</th>
        <th>Course Name</th>
        <th>Attended</th>
        <th>Absent</th>
        <th>Conducted</th>
        <th>TCBR</th>
        <th>Percentage</th>
        
      </tr>
    </thead>
    <tbody>
    
    <c:forEach items="${details}"  var="detail"> 
      <tr>
        <td>${detail.student.email}</td>
        <td>${detail.facultyCourseMapping.course.coursename}</td>
        <td class="attended">${detail.totalAttended}</td>
        <td class="absent">${detail.totalAbsent}</</td>
        <td class="conducted">${detail.facultyCourseMapping.totalConducted}</td>
        <td class="absent">${detail.facultyCourseMapping.totalConducted-(detail.totalAttended+detail.totalAbsent)}</</td>
        <td class="percentage">${(detail.totalAttended)/(detail.facultyCourseMapping.totalConducted) *100}</td>
        
      </tr>
      
      </c:forEach> 
    </tbody>
  </table>
</body>
</html>
