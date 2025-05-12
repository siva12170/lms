<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Timetable</title>
<style>
    body {
        font-family: Arial, sans-serif;
       background-color: orange;
    }

    h2 {
        text-align: center;
        margin-top: 20px;
        color: blue;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        border: 3px solid orange;
        padding: 10px;
        text-align: center;
    }

    th {
        background-color: #f2f2f2;
    }
    p{
    font-size: 10px;
    color: green;
    }
</style>
<%@ include file="TeacherNavbar.jsp" %>
</head>
</br></br></br></br></br></br>
<body>

<h2>Weekly Timetable</h2>

<table>
    <tr>
        <th></th>
        <th>Slot 1</th>
        <th>Slot 2</th>
        <th>Slot 3</th>
        <th>Slot 4</th>
        <th>Slot 5</th>
        <th>Slot 6</th>
    </tr>
    <tr>
        <td>Monday</td>
        <td id="monday-slot1">


            <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot11!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 

        </td>
        <td id="monday-slot2">
        
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot12!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
        </td>
        <td id="monday-slot3">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot13!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
        </td>
        <td id="monday-slot4">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot14!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
        </td>
        <td id="monday-slot5">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot15!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
        </td>
        <td id="monday-slot6">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot16!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
        </td>
    </tr>
    <tr>
        <td>Tuesday</td>
        <td id="tuesday-slot1">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot21!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
        </td>
        <td id="tuesday-slot2">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot22!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
        </td>
        <td id="tuesday-slot3">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot23!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
        </td>
        <td id="tuesday-slot4">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot24!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
        </td>
        <td id="tuesday-slot5">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot25!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
        </td>
        <td id="tuesday-slot6">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot26!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach> 
        </td>
    </tr>
    <tr>
        <td>Wednesday</td>
        <td id="wednesday-slot1">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot31!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="wednesday-slot2">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot32!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="wednesday-slot3">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot33!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="wednesday-slot4">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot34!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="wednesday-slot5">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot35!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="wednesday-slot6">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot36!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach></td>
    </tr>
    <tr>
        <td>Thursday</td>
        <td id="thursday-slot1">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot41!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="thursday-slot2">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot42!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="thursday-slot3">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot43!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="thursday-slot4">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot44!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="thursday-slot5">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot45!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="thursday-slot6">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot46!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>Friday</td>
        <td id="friday-slot1">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot51!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="friday-slot2">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot52!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach></td>
        <td id="friday-slot3">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot53!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="friday-slot4">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot54!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="friday-slot5">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot55!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="friday-slot6">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot56!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
    </tr>
    <tr>
        <td>Saturday</td>
        <td id="saturday-slot1">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot61!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="saturday-slot2">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot62!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="saturday-slot3">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot63!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="saturday-slot4">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot64!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="saturday-slot5">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot65!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
        <td id="saturday-slot6">
        <c:forEach items="${timetables}"  var="timetable"> 
            <c:if test="${timetable.slot66!=false}">
            <c:forEach items="${facultyCourseMappings}"  var="facultyCourseMapping"> 
                <c:if test="${facultyCourseMapping.table.id==timetable.id}">
                <p>Sec no:${facultyCourseMapping.secno}</p>
                 <p>Course Name:${facultyCourseMapping.course.coursename}</p>
                 <p>Course Code:${facultyCourseMapping.course.coursecode}</p>
                 
                 </c:if>
                </c:forEach> 
                </c:if>
            </c:forEach>
        </td>
    </tr>
</table>
 
</body>
</html>
