<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        .containers {
            max-width: 1200px; /* Increased max-width for the containers */
            margin: 20px auto;
        }
        .item {
            background-color: #fff;
            margin-bottom: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: calc(100% - 40px); /* Adjusted width */
            max-width: calc(100% - 40px); /* Added max-width */
            margin-left: 20px; /* Added margin for better spacing */
            margin-right: 20px; /* Added margin for better spacing */
        }
        .item-header {
            padding: 10px;
            cursor: pointer;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ddd;
        }
        .item-content {
            padding: 10px;
            display: none;
        }
        .item-content.show {
            display: block;
        }
        .item-header h2 {
            margin: 0;
            color: #333;
        }
        .item-header .toggle-btn {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .item-header .toggle-btn:hover {
            background-color: #0056b3;
        }
        .card {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 10px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        .card h3 {
            margin: 0;
            color: #333;
            font-size: 20px; /* Increased font size */
        }
        .card p {
            margin-bottom: 10px;
            color: #666;
            font-size: 16px; /* Increased font size */
        }
        .card .download-btn {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px; /* Increased padding */
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .card .download-btn:hover {
            background-color: #0056b3;
        }
        
        
        .animated-button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #3498db;
        color: #fff;
        font-size: 16px;
        font-weight: bold;
        text-transform: uppercase;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        position: relative;
        overflow: hidden;
        transition: all 0.3s ease;
    }

    .animated-button:hover {
        background-color: #2980b9;
    }

    .animated-button:before {
        content: '';
        position: absolute;
        top: 50%;
        left: 50%;
        width: 300%;
        height: 300%;
        background-color: rgba(255, 255, 255, 0.2);
        border-radius: 50%;
        transition: all 0.6s ease;
        z-index: 0;
        transform: translate(-50%, -50%) scale(0);
    }

    .animated-button:hover:before {
        transform: translate(-50%, -50%) scale(1);
    }

    .animated-button span {
        position: relative;
        z-index: 1;
    }
    </style>
    <%@ include file="StudentNavbar.jsp" %>
    <br><br><br><br>
</head>
<body>
    <div class="containers">
        <div class="item" id="assignments">
            <div class="item-header">
                <h2>Assignments</h2>
                <button class="toggle-btn" onclick="toggleContent('assignments')">Expand</button>
            </div>
            <div class="item-content" id="assignments-content">
            
             <c:forEach items="${home}"  var="homes">
             <c:if test="${homes.type==false}">
                <div class="card">
                
                    <h3>${homes.title}</h3>
                    <p>Description of ${homes.title}</p>
                    <p>Due Date: January 1, 2024</p>
             <a href="submitassignment?id=${homes.course.id}&aid=${homes.id}">     <button class="download-btn">Submit</button></a>  
                </div>
                 </c:if>
                 </c:forEach>
                
            </div>
        </div>
        <div class="item" id="quizzes">
            <div class="item-header">
                <h2>Quizzes</h2>
                <button class="toggle-btn" onclick="toggleContent('quizzes')">Expand</button>
            </div>
            <div class="item-content" id="quizzes-content">
            <c:forEach items="${quiz}"  var="quizs">
                <div class="card">
                    <h3>${quizs.title}</h3>
                    <p>Description of ${quizs.title}</p>
                    <p>Date: January 5, 2024</p>
                   <a href="attemptquiz?id=${quizs.course.id}&aid=${quizs.id}">     <button class="download-btn">Submit</button></a>
                   
                   
               <%int i=0; %>
                   <c:forEach items="${attemptss}"  var="attempt">
                   
                    <c:if test="${attempt.quiz.id==quizs.id}" >
                    
                    <% i++; %>
                 <a href="viewresult?${attempt.id}">   <button class="animated-button">
        <span> Attempt<%= i %></span>
    </button></a> 
                    
                
                  
                  
                  </c:if>
                  
                  
                 </c:forEach>   
                </div>
                </c:forEach> 
                
            </div>
        </div>
        <div class="item" id="presentations">
            <div class="item-header">
                <h2>Presentations</h2>
                <button class="toggle-btn" onclick="toggleContent('presentations')">Expand</button>
            </div>
            <div class="item-content" id="presentations-content">
            
            <c:forEach items="${present}"  var="presents">
                <div class="card">
                    <h3>${presents.fileName}</h3>
                    <p>Description of ${presents.fileName}</p>
                  <a href="download?id=${presents.id}">  <button class="download-btn">Download</button></a>
                </div>
               </c:forEach>
                
            </div>
        </div>
        
        
        <div class="item" id="labexams">
            <div class="item-header">
                <h2>In-Sem Lab Exams</h2>
                <button class="toggle-btn" onclick="toggleContent('labexams')">Expand</button>
            </div>
            <div class="item-content" id="labexams-content">
            
             <c:forEach items="${home}"  var="homes">
             <c:if test="${homes.type==true}">
                <div class="card">
                
                    <h3>${homes.title}</h3>
                    <p>Description of ${homes.title}</p>
                    <p>Due Date: January 1, 2024</p>
                    <a href="submitassignment?id=${homes.course.id}&aid=${homes.id}">     <button class="download-btn">Submit</button></a> 
                </div>
                 </c:if>
                 </c:forEach>
                
               
            </div>
        </div>
        
        
    </div>

    <script>
        function toggleContent(id) {
            var content = document.getElementById(id + '-content');
            content.classList.toggle('show');
            var btn = content.previousElementSibling.querySelector('.toggle-btn');
            if (content.classList.contains('show')) {
                btn.textContent = 'Collapse';
            } else {
                btn.textContent = 'Expand';
            }
        }
    </script>
</body>
</html>