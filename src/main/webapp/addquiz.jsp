<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Quiz</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Light gray background */
            padding: 20px;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
        }

        form {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h2 {
            color: #343a40; /* Dark gray text color */
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #343a40; /* Dark gray text color */
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            background-color: #007bff; /* Blue submit button */
            color: #fff; /* White text color */
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease; /* Smooth hover effect */
        }

        button[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Create Quiz</h2>
    <form action="addquiz" method="post">
        <label for="title">Quiz Title:</label>
        <input type="text" id="title" name="title" placeholder="Enter quiz title" required>

        <input type="text" name="course" value="${eid}" required hidden >

        <button type="submit">Create Quiz</button>
    </form>
</div>

</body>
</html>
