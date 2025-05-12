<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Assignment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .button-back {
            position: absolute;
            top: 20px;
            left: 20px;
            background-color: #007bff; /* Blue */
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button-back:hover {
            background-color: #0056b3; /* Darker blue */
        }

        .container {
            max-width: 800px; /* Increased width */
            background-color: #e6e6fa; /* Light lavender */
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: max-width 0.5s ease;
            position: relative; /* Added relative positioning */
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px; /* Added margin for spacing */
        }

        textarea, select {
            width: calc(100% - 22px); /* Adjusted for padding and border */
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ffc0cb; /* Pink border */
            border-radius: 5px;
            box-sizing: border-box;
            background-color: #f8f8ff; /* Ghost white */
            color: #333; /* Dark gray text color */
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff; /* Blue */
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue */
        }

        .form-group {
            position: relative;
            margin-bottom: 20px;
            animation: slideIn 0.5s ease;
        }

        @keyframes slideIn {
            0% {
                opacity: 0;
                transform: translateY(-50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        a{
        text-decoration: none;
        
        }
    </style>
</head>
<body>
    <a href="coursedash?id=${eid}" class="button-back">Back</a>
    
    <div class="container">
        <h2>New Home Assignment Assignment</h2>
        <form  method="post" action="addhomeassignments">
            <div class="form-group">
            <label for="question">Title:</label>
            <input type="text" name="title" reqired><br>
                <label for="question">Question:</label>
                <textarea id="question" name="question" rows="4" required></textarea>
                <input type="hidden" name="cid" value="${eid }">
            </div>
            
            <input type="submit" value="Add Assignment">
        </form>
    </div>

   
</body>
</html>
