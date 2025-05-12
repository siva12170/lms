<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Question Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Optional: Add styles for form validation */
        input:invalid {
            border-color: #ff0000;
        }
        input:valid {
            border-color: #00ff00;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Create a Question</h2>
    <form action="addmcq" method="post">
        <label for="title">Question Content:</label>
        <input type="text" id="title" name="title" required><br>

        <label for="A">Option A:</label>
        <input type="text" id="A" name="A" required><br>

        <label for="B">Option B:</label>
        <input type="text" id="B" name="B" required><br>

        <label for="C">Option C:</label>
        <input type="text" id="C" name="C" required><br>

        <label for="D">Option D:</label>
        <input type="text" id="D" name="D" required><br>

        <label for="correct">Correct Answer:</label>
        <select id="correct" name="correct" required>
            <option value="a">A</option>
            <option value="b">B</option>
            <option value="c">C</option>
            <option value="d">D</option>
        </select>
        
        <input type="hidden" value="${questions.id}" name="id" required ><br>

        <button type="submit">Create Question</button>
    </form>
</div>

<!-- Add other HTML content here -->

</body>
</html>
