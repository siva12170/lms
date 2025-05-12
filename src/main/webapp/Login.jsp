<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <title>Login</title>
    <!-- Add necessary CSS libraries for reactive design -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">

    <style>
        body {
            background: linear-gradient(45deg, #3498db, #2ecc71);
            background-size: 400% 400%;
            animation: gradientAnimation 10s ease infinite;
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Arial', sans-serif;
            color: #333; /* Darker text color */
        }

        @keyframes gradientAnimation {
            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }

        .card {
            background-color: rgba(255, 255, 255, 0.9);
            border: none;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #2980b9;
            color: #fff;
            border-radius: 10px 10px 0 0;
            padding: 15px;
            text-align: center;
        }

        .card-body {
            padding: 20px;
        }

        h3 {
            margin-bottom: 20px;
            color: #333;
        }

        .form-control {
            border-radius: 5px;
        }

        label {
            color: #333; /* Darker label color */
        }

        .btn-primary {
            background-color: #2980b9;
            border: none;
            border-radius: 5px;
        }

        .btn-primary:hover {
            background-color: #1c6385;
        }
    </style>
    <%@ include file="GlassNavbar.jsp" %>
</head>

<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3>Education Login</h3>
                    </div>
                    <div class="card-body">
                        <form id="loginForm" action="checklogin" method="post">
                            <div class="mb-3">
                                <label for="ID" class="form-label">Student ID</label>
                                <input type="text" class="form-control" id="id" name="id" required>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="pwd" required>
                            </div>
                            <div class="mb-3">
                                <label for="retypePassword" class="form-label">Retype Password</label>
                                <input type="password" class="form-control" id="retypePassword" name="retypePassword" required>
                            </div>
                            <div class="mb-3" id="passwordMismatchError" style="color: red;"></div>
                            <button type="submit" class="btn btn-primary" onclick="return validateForm()">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add necessary JS libraries for reactive design -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        function validateForm() {
            var password = document.getElementById("password").value;
            var retypePassword = document.getElementById("retypePassword").value;

            if (password !== retypePassword) {
                document.getElementById("passwordMismatchError").innerText = "Passwords do not match!";
                return false;
            } else {
                document.getElementById("passwordMismatchError").innerText = "";
                return true;
            }
        }
    </script>
</body>

</html>
