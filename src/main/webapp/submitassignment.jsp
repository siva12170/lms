<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Colorful and Animated Webpage</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #ff9933, #ff3399);
    margin: 0;
    padding: 0;
  }

  .container {
    max-width: 800px;
    margin: 50px auto;
    background-color: rgba(255, 255, 255, 0.5);
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    padding: 20px;
    backdrop-filter: blur(10px);
  }

  h1 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
  }

  .assignment-questions {
    margin-bottom: 20px;
  }

  .file-upload {
    margin-bottom: 20px;
  }

  .file-upload input[type="file"] {
    display: none;
  }

  .file-upload label {
    display: block;
    padding: 10px 15px;
    background-color: #3498db;
    color: #fff;
    border-radius: 5px;
    text-align: center;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .file-upload label:hover {
    background-color: #2980b9;
  }

  #file-size-error {
    color: red;
    font-size: 12px;
    margin-top: 5px;
  }
</style>
</head>
<body>
  <div class="container">
    <h1>Colorful and Animated Webpage</h1>
    <div class="assignment-questions">
      <h2>${home.title } Questions:-</h2>
      <ol>
        <li>${home.question }</li>
       
      </ol>
    </div>
    <form class="file-upload">
      <label for="file-input">Choose File</label>
      <input type="file" id="file-input" accept=".pdf,.doc,.docx,.txt" onchange="checkFileSize(this)">
      <div id="file-size-error"></div>
    </form>
  </div>

  <script>
    function checkFileSize(input) {
      const fileSize = input.files[0].size / 1024 / 1024; // in MB
      const maxSize = 2; // 2MB

      if (fileSize > maxSize) {
        document.getElementById('file-size-error').textContent = 'File size exceeds 2MB limit.';
        input.value = ''; // Clear the file input
      } else {
        document.getElementById('file-size-error').textContent = '';
      }
    }
  </script>
</body>
</html>
