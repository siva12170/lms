<style>
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f4;
}

.containers {
    width: 50%;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    margin-top: 20vh;
}

form {
    display: flex;
    flex-direction: column;
}

label {
    margin-bottom: 8px;
}

input, select {
    margin-bottom: 15px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input[type="submit"] {
    background-color: #4caf50;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

/* Basic animation for form elements */
input, select {
    transition: border-color 0.3s;
}

input:focus, select:focus {
    border-color: #3498db;
}

/* Animation for password match */
#retypePassword {
    border: 1px solid #ccc;
}

#retypePassword.match {
    border-color: #2ecc71;
}

#retypePassword.mismatch {
    border-color: #e74c3c;
    animation: shake 0.5s;
}

@keyframes shake {
    0%, 100% { transform: translateX(0); }
    20%, 60% { transform: translateX(-10px); }
    40%, 80% { transform: translateX(10px); }
}

</style>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration Form</title>
    
    <%@ include file="AdminNavbar.jsp" %>
</head>
<body>
    <div class="containers">
        <h2>User Registration Form</h2>
        <form action="addTeacher" method="post">
            <label for="id">ID (6 digits):</label>
            <input type="text" name="id" pattern="\d{6}" title="Please enter 6 digits" required><br>

            <label for="email">Email:</label>
            <input type="email" name="email" required><br>

            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required 
                   pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
                   title="Minimum 8 characters, at least one uppercase letter, one lowercase letter, one digit, and one special character"><br>

            <label for="retypePassword">Retype Password:</label>
            <input type="password" name="retypePassword" id="retypePassword" required oninput="checkPasswordMatch()"><br>

            <label for="Gender">Gender:</label>
            <select name="Gender" required>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <!-- Add more options as needed -->
            </select><br>

            <label for="experience">Experience:</label>
            <input type="text" name="experience" required><br>

            <input type="submit" value="Submit">
        </form>
    </div>

    <script src="script.js"></script>
</body>
</html>


    <script>
    function checkPasswordMatch() {
        var password = document.getElementById("password");
        var retypePassword = document.getElementById("retypePassword");
        if (password.value === retypePassword.value) {
            retypePassword.classList.remove("mismatch");
            retypePassword.classList.add("match");
        } else {
            retypePassword.classList.remove("match");
            retypePassword.classList.add("mismatch");
        }
    }
</script>
</body>
</html>
