<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File Upload</title>
    <style>
        /* Basic styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #2980b9, #2c3e50);
        }

        #uploadFormContainer {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
            transition: transform 0.3s ease;
        }

        #uploadFormContainer:hover {
            transform: scale(1.05);
        }

        input[type="file"] {
            margin-bottom: 20px;
            padding: 10px;
            border: 2px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease;
            width: calc(100% - 24px);
        }

        input[type="file"]:focus {
            border-color: #007bff;
        }

        button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }

        #message {
            margin-top: 10px;
            font-weight: bold;
            color: #28a745;
            transition: opacity 0.3s ease;
        }

        /* Back button */
        #backButton {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #backButton:hover {
            background-color: #0056b3;
        }

        /* Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        #message.show {
            animation: fadeIn 0.5s ease;
        }
    </style>
</head>
<body>
    <a id="backButton" href="coursedash?id=${eid}">Back</a>
    <div id="uploadFormContainer">
        <h1 style="color: #007bff;">File Upload</h1>
        <form id="uploadForm" action="/upload" method="POST" enctype="multipart/form-data">
            <input type="file" name="file" id="fileInput">
            <input type="hidden" name="courseId" id="courseId" value="${eid}">
            <button type="submit">Upload</button>
            <div id="message"></div>
        </form>
    </div>

    <script>
    
    function showMessage() {
        document.getElementById('message').textContent = 'Uploading file...';
    }

    </script>
</body>
</html>
