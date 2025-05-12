<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

    <%@ include file="AdminNavbar.jsp" %>
    <br/> <br/> <br/> <br/>
<style>
body {
  font-family: sans-serif;
  background-color:  	87CEEB;
}

h1 {
  text-align: center;
  margin-bottom: 20px;
}

.form-group {
  margin-bottom: 15px;
}

label {
  display: block;
  margin-bottom: 5px;
}

input[type="text"],
input[type="number"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

</style>

<!DOCTYPE html>
<html>
<head>
<title>Create Course</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
  <h1>Create Course</h1>
  <form action="addcourse" method="post">
    <div class="form-group">
      <label for="coursecode">Course Code:</label>
      <input type="text" id="coursecode" name="coursecode" required>
    </div>

    <div class="form-group">
      <label for="coursename">Course Name:</label>
      <input type="text" id="coursename" name="coursename" required>
    </div>

    <div class="form-group">
      <label for="ltps">LTPS:</label>
      <input type="text" id="ltps" name="ltps" required>
    </div>

    <div class="form-group">
      <label for="credits">Credits:</label>
      <input type="number" step="0.1" id="credits" name="credits" required>
    </div>

    <div class="form-group">
      <label for="slots">Slots:</label>
      <input type="number" id="slots" name="slots" required>
    </div>

    <div class="form-group">
    <label for="slots">Teachers List:</label>
    <select name="Teacherid" required>
        
        <option value="">--Select--</option>
      <c:forEach items="${teacherlist}" var="faculty"> 
        <option value="${faculty.id}">${faculty.email}&&${faculty.id}</option>
        </c:forEach>
         </select>
    </div>

    <button type="submit">Create Course</button>
  </form>
</body>
</html>
