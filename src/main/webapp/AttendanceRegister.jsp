<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attendance Register</title>
    <style>
        body {
            font-family: 'Comic Sans MS', cursive, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #F0F8FF; /* AliceBlue */
        }
        h2 {
            text-align: center;
            color: #FF6347; /* Tomato */
            text-shadow: 2px 2px 4px #000000;
        }
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #FFA07A; /* LightSalmon */
            color: #FFFFFF;
        }
        tr:nth-child(even) {
            background-color: #FFDAB9; /* PeachPuff */
        }
        tr:nth-child(odd) {
            background-color: #FFE4E1; /* MistyRose */
        }
        input[type="checkbox"] {
            transform: scale(1.5);
        }
    </style>
    <%@ include file="TeacherNavbar.jsp" %>
</head>
<br><br><br><br><br>
<body>

<h2>Attendance Register</h2>
<form method="post" action="attsubmit" id="myForm">
<table>
  <tr>
    <th>Student ID</th>
    <th>Email</th>
    <th>Present</th>
  </tr>
  <input type="hidden" value="${eid}" name="eid">
  <c:forEach items="${details}"  var="detail" varStatus="loop">
  <tr>
    <td>${detail.student.id}</td>
    <td>${detail.student.email}</td>
    <td><input type="checkbox" name="check${loop.index + 1}"></td>
    <input type="hidden" value="${detail.id}" name="id${loop.index + 1}">
    <input type="hidden" value="${detail.facultyCourseMapping.id}" name="fid">
  </tr>
  </c:forEach> 
  <tr>
  
</table>
<input type="submit" value="submit">
</form>


<script>
    const form = document.getElementById('myForm');
    const checkboxes = form.querySelectorAll('input[type="checkbox"]');
    
    form.addEventListener('submit', function(event) {
        checkboxes.forEach(checkbox => {
            if (checkbox.checked) {
                checkbox.value = 'true';
            } else {
                checkbox.value = 'false';
            }
        });
    });
</script>
</body>
</html>
