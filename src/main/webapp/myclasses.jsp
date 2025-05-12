<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Sections</title>
    <style>
        /* Common styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            
        }

        .containers {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            
        }

        h1 {
            text-align: center;
            color: #333;
        }

        /* Table styles */
        .section-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .section-table th, .section-table td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }

        .section-table th {
            background-color: #f2f2f2;
        }

        .section-link {
            color: #007bff;
            text-decoration: none;
        }

        .section-link:hover {
            text-decoration: underline;
        }

        .section-table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .section-table tr:hover {
            background-color: #f0f0f0;
        }
    </style>
    <%@ include file="TeacherNavbar.jsp" %>
</head>
<br><br><br><br><br><br><br>
<body>
    <div class="containers">
        <h1>Teacher Sections</h1>
        
        <table class="section-table">
            <thead>
                <tr>
                    <th>Section Number</th>
                    <th>Capacity</th>
                    <th>Registered Students</th>
                    <th>Attendance</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${fcm}" var="fcms">
                    <tr>
                        <td><a href="sectionlist?id=${fcms.id}" class="section-link">${fcms.secno}</a></td>
                        <td>${fcms.capacity}</td>
                        <td>${fcms.registeredcapacity}/${fcms.capacity}</td>
                        <td><a href="Attendance?id=${fcms.id}" class="section-link">Attendance</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
