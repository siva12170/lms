<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MCQ Questions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Light gray background */
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
        }

        .card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 20px;
        }

        h2 {
            color: #343a40; /* Dark gray text color */
            margin-bottom: 10px;
        }

        p {
            margin-bottom: 5px;
            color: #343a40; /* Dark gray text color */
        }

        .correct-answer {
            color: green; /* Green color for correct answer */
            font-weight: bold;
        }

        .option {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Multiple Choice Questions</h2>
    
    
    <c:forEach items="${mcqs}" var="quizs" varStatus="loop">
    <div class="card">
        <p>${quizs.content}</p>
        <div class="options">
        <c:if test="${quizs.correctanswer == 'a'}"> 
            <p class="option"><span class="correct-answer">a)${quizs.a}</span></p>
            </c:if>
            <c:if test="${quizs.correctanswer != 'a'}"> 
            <p class="option">a)${quizs.a}</p>
            </c:if>
           
           
           <c:if test="${quizs.correctanswer == 'b'}"> 
            <p class="option"><span class="correct-answer">b)${quizs.b}</span></p>
            </c:if>
            <c:if test="${quizs.correctanswer != 'b'}"> 
            <p class="option">b)${quizs.b}</p>
            </c:if>
            
            
            <c:if test="${quizs.correctanswer == 'c'}"> 
            <p class="option"><span class="correct-answer">c)${quizs.c}</span></p>
            </c:if>
            <c:if test="${quizs.correctanswer != 'c'}"> 
            <p class="option">c)${quizs.c}</p>
            </c:if>
            
            
            <c:if test="${quizs.correctanswer == 'd'}"> 
            <p class="option"><span class="correct-answer">d)${quizs.d}</span></p>
            </c:if>
            <c:if test="${quizs.correctanswer != 'd'}"> 
            <p class="option">d)${quizs.d}</p>
            </c:if>
           
           
        </div>
    </div>
</c:forEach>
    

</div>

</body>
</html>
