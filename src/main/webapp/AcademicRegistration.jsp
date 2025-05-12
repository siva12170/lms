<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Animated Academic Registration</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f1f1f1;
    }

    .container {
        max-width: 1200px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        overflow: hidden;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        border-spacing: 0;
        background-color: #fff;
        margin-bottom: 20px;
    }

    th, td {
        border: 1px solid #ccc;
        padding: 20px;
        text-align: center;
        transition: background-color 0.3s ease;
    }

    th {
        background-color: #f0f0f0;
        font-weight: bold;
        color: #333;
    }

    .slot {
        font-weight: bold;
        transition: transform 0.3s ease;
    }

    .slot:hover {
        transform: scale(1.1);
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }

    @keyframes slideInFromLeft {
        from {
            transform: translateX(-100%);
        }
        to {
            transform: translateX(0);
        }
    }

    @keyframes slideInFromRight {
        from {
            transform: translateX(100%);
        }
        to {
            transform: translateX(0);
        }
    }

    @keyframes slideInFromBottom {
        from {
            transform: translateY(100%);
        }
        to {
            transform: translateY(0);
        }
    }

    .container {
        animation: fadeIn 1s ease;
    }

    th, td {
        animation: slideInFromBottom 0.5s ease forwards;
    }

    th:nth-child(odd), td:nth-child(odd) {
        animation: slideInFromLeft 0.5s ease forwards;
    }

    th:nth-child(even), td:nth-child(even) {
        animation: slideInFromRight 0.5s ease forwards;
    }

    th:hover {
        background-color: #ffcc00;
        color: #fff;
    }

    .slot {
        background-color: #ff6666;
        color: #fff;
    }

    .slot:hover {
        background-color: #ff3333;
    }

    .section-list {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .section-item {
        background-color: skyblue;
       
        color: #fff;
        padding: 20px;
        border-radius: 5px;
        margin-bottom: 10px; /* Increased margin for spacing */
        cursor: pointer;
        transition: transform 0.3s ease, background-color 0.3s ease;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .section-item:hover {
        background-color: #45a049;
        transform: scale(1.05);
    }

    .section-buttons button {
        border: none;
        padding: 8px 20px;
        border-radius: 3px;
        cursor: pointer;
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    .section-buttons button:hover {
        background-color: #ddd;
    }

    .select-btn {
        background-color: #008CBA;
        color: #fff;
    }

    .selected-btn {
        background-color: #f44336;
        color: #fff;
    }

    .remove-btn {
        background-color: #555;
        color: #fff;
    }

</style>
</head>
<body>
<div class="container">
    <h1>Animated Academic Registration</h1>
    <a href="StudentDash"><button class="select-btn">Back</button></a>
    <table>
        <thead>
            <tr>
                <th>Monday</th>
                <th>Tuesday</th>
                <th>Wednesday</th>
                <th>Thursday</th>
                <th>Friday</th>
                <th>Saturday</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="slot">
                
                            <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot11!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                
                </td>
                <td class="slot">
                            <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot12!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                
                </td>
                <td class="slot">
                            <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot13!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                            <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot14!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                            <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot15!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                
                </td>
                <td class="slot">
                            <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot16!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
            </tr>
            <tr>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot21!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot22!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot23!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot24!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot25!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot26!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
            </tr>
            <tr>
                <td class="slot">
                 <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot31!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                 <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot32!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                 <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot33!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                 <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot34!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot"> <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot35!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> </td>
                <td class="slot">
                 <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot36!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
            </tr>
            <tr>
                <td class="slot">
                 <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot41!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                 <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot42!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                 <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot43!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                 <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot44!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                 <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot45!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                 <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot46!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
            </tr>
            <tr>
                <td class="slot">
                 <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot51!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot52!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot53!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot54!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot55!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot56!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
            </tr>
            <tr>
                <td class="slot"><c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot61!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot62!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot63!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot64!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot65!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
                <td class="slot">
                <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot66!=false}">
            <c:forEach items="${slist}"  var="sl"> 
                <c:if test="${sl.facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${sl.facultyCourseMapping.secno}</p>
                 <p>Course Name:${sl.facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${sl.facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
                </td>
            </tr>
        </tbody>
    </table>
    <h2>Sections Available for Registration</h2>
    <ul class="section-list">
       <c:forEach items="${sectionlist}"  var="section"> 
        <li class="section-item">
            <div>
               
                <strong style="color: blue;">Section:</strong> ${section.secno}<br>
                <strong style="color: green;">Teacher:</strong> ${section.teacher.email}<br>
                <strong style="color: red;">Course:</strong> ${section.course.coursename}<br>
                <strong style="color: orange;">CourseCode:</strong> ${section.course.coursecode}<br>
                <strong style="color: purple;">Capacity:</strong> ${section.capacity}
            </div>
            <div class="section-buttons">
            
            
                
              <c:set var="flag" value="0"/> <!-- Initialize flag variable outside the forEach loop -->

<c:forEach items="${flist}" var="flists">
    <c:if test="${flists.secno == section.secno}">
        <button class="selected-btn">Selected</button>
        
      <c:forEach items="${slist}" var="slists">  
      <c:if test="${slists.facultyCourseMapping.id == flists.id}">
      <a href="deletesection?id=${slists.id}&did=${section.id}">  <button class="remove-btn">Remove</button></a>

      </c:if>
      </c:forEach>
      
        <c:set var="flag" value="1"/> <!-- Set flag to 1 if condition is true -->
    </c:if>
</c:forEach>

<c:if test="${flag != 1}">
   <a href="section?id=${section.id}"><button class="select-btn">Select</button></a>
   
</c:if>
            
            </div>
        </li>
        </c:forEach> 
       </ul>
</div>

</body>
</html>
