<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            color: #333;
        }

        .quiz-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }

        .question {
            margin-bottom: 10px;
            font-weight: bold;
            font-size: 18px; /* Increase font size */
            color: #ff6347; /* Red color */
        }

        .options {
            margin-bottom: 20px;
        }

        .option label {
            display: block;
            margin-bottom: 5px;
            cursor: pointer;
            font-size: 20px; /* Increase font size for options */
            color: #4caf50; /* Green color */
        }

        .option input[type="radio"] {
            margin-right: 5px;
        }

        .question:nth-child(even) {
            color: #007bff; /* Blue color for even questions */
        }

        .options:nth-child(even) label {
            color: #ff4500; /* Orange color for even options */
        }

        #submit-btn {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #submit-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="quiz-container">
        <h1>Quiz Title</h1>
<form action="submit" method="post">
<input type="hidden" name="quiznumberNumber" value="${aid}">
<c:forEach items="${quiz}"  var="quizs" varStatus="loop"> 
        <div class="question">${quizs.content}</div>
        <div class="options" id="options1">
        <input type="hidden" name="questionId${loop.index + 1}" value="${quizs.id}">
            <label><input type="radio" name="answer${loop.index + 1}" value="a">${quizs.a} </label>
            <label><input type="radio" name="answer${loop.index + 1}" value="b">${quizs.b} </label>
            <label><input type="radio" name="answer${loop.index + 1}" value="c">${quizs.c} </label>
            <label><input type="radio" name="answer${loop.index + 1}" value="d"> ${quizs.d}</label>
        </div>

      </c:forEach>   
        <button id="submit-btn">Submit</button>
        </form>
    </div>

    <script>

        // Disable copy, paste, cut, and inspect
        document.addEventListener('copy', function (e) {
            e.preventDefault();
        });

        document.addEventListener('cut', function (e) {
            e.preventDefault();
        });

        document.addEventListener('paste', function (e) {
            e.preventDefault();
        });

        document.addEventListener('contextmenu', function (e) {
            e.preventDefault();
        });
    </script>
</body>
</html>
