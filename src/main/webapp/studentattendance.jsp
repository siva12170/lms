<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Attendance Sheet</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0; /* Light gray background */
        }

        h1 {
            text-align: center;
            animation: bounce 1s ease-in-out; /* Apply bounce animation to the heading */
            color: #0066ff; /* Bright blue color for heading */
            margin-top: 20px;
        }

        @keyframes bounce {
            0% {
                transform: translateY(-20px);
            }
            50% {
                transform: translateY(10px);
            }
            100% {
                transform: translateY(0);
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            animation: fadeIn 1s ease-in-out; /* Apply fade-in animation to the table */
            background-color: #ffffff; /* White background for the table */
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2; /* Light gray background for even rows */
        }

        th {
            background-color: #0066ff; /* Bright blue background for table headers */
            color: white; /* White text color for table headers */
        }
    </style>
</head>
<%@ include file="StudentNavbar.jsp" %>
<br><br><br><br><br><br>
<body>
<h1>Attendance</h1>

<table>
    <tr>
        <th>Course Name</th>
        <th>Course Code</th>
        <th>Section Number</th>
        <th>Faculty</th>
        <th>Total Conducted</th>
        <th>Attended</th>
        <th>Total Absented</th>
        <th>TCBR</th>
        <th>Percentage</th>
        <th>Pie Chart</th>
        <th>Attendance Register</th>
        
    </tr>
    <c:forEach items="${studentRegistrations}"  var="details"> 
    <tr>
        <td>${details.facultyCourseMapping.course.coursename}</td>
        <td>${details.facultyCourseMapping.course.coursecode}</td>
        <td>${details.facultyCourseMapping.secno}</td>
        <td>${details.facultyCourseMapping.teacher.id}</td>
        <td>${details.facultyCourseMapping.totalConducted}</td>
        <td>${details.totalAttended}</td>
        <td>${details.totalAbsent}</td>
        <td>${details.facultyCourseMapping.totalConducted - (details.totalAttended + details.totalAbsent)}</td>
        <td>${(details.totalAttended / details.facultyCourseMapping.totalConducted) * 100}</td>
        <td>
        <br>
        
            <canvas id="pieChart-${details.facultyCourseMapping.course.coursecode}" width="50" height="50"></canvas>
            
        </td>
        <td><a href="myattendance?id=${details.facultyCourseMapping.id}">Register</a></td>
    </tr>
    </c:forEach> 
</table>

<script>
    <c:forEach items="${studentRegistrations}"  var="details"> 
        var canvas = document.getElementById('pieChart-${details.facultyCourseMapping.course.coursecode}');
        var ctx = canvas.getContext('2d');
        
        // Ensure canvas size matches its parent container
        canvas.width = canvas.offsetWidth;
        canvas.height = canvas.offsetHeight;
        
        var totalConducted = ${details.facultyCourseMapping.totalConducted};
        var totalAttended = ${details.totalAttended};
        var totalAbsent = ${details.totalAbsent};
        
        var attendedPercentage = (totalAttended / totalConducted) * 100;
        var absentPercentage = (totalAbsent / totalConducted) * 100;
        
        var attendedAngle = (attendedPercentage / 100) * Math.PI;
        var absentAngle = (absentPercentage / 100) * Math.PI;
        
        var centerX = canvas.width / 2;
        var centerY = canvas.height / 2;
        var radius = Math.min(centerX, centerY) - 5; // Subtract 5 for padding
        
        // Draw attended portion
        ctx.beginPath();
        ctx.arc(centerX, centerY, radius, Math.PI, Math.PI + attendedAngle);
        ctx.lineWidth = 3; // Set border width
        ctx.strokeStyle = 'green'; // Set border color for attended portion
        ctx.stroke();
        
        // Draw absent portion
        ctx.beginPath();
        ctx.arc(centerX, centerY, radius, Math.PI + attendedAngle, Math.PI + attendedAngle + absentAngle);
        ctx.strokeStyle = 'red'; // Set border color for absent portion
        ctx.stroke();
        
        // Display the number 50 at the center
        ctx.fillStyle = 'black'; // Set text color
        ctx.font = '20px Arial'; // Set font size and type
        ctx.textAlign = 'center'; // Align text to the center
        ctx.textBaseline = 'middle'; // Align text vertically to the middle
        ctx.fillText(${(details.totalAttended / details.facultyCourseMapping.totalConducted) * 100}, centerX, centerY); // Draw the text '50' at the center
    </c:forEach>
</script>




