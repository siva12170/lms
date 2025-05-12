<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Course</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2,h3 {
            text-align: center;
        }
        h3{
        color: orange;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .slot-group {
            margin-bottom: 10px;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input[type="number"],
        input[type="checkbox"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Create Course</h2>
        <form action="createsection" method="post" id="myForm">
            <div class="form-group">
                <label for="Teacherid">Teacher ID:</label>
                
                <select name="Teacherid" required>
        
        <option value="">--Select--</option>
      <c:forEach items="${teacherlist}" var="faculty"> 
        <option value="${faculty.id}">${faculty.email}&&${faculty.id}</option>
        </c:forEach>
         </select>
                
                
                
            </div>
            <div class="form-group">
                <label for="Courseid">Course ID:</label>
                <select name="Courseid" required>
        
        <option value="">--Select--</option>
      <c:forEach items="${courselist}" var="course"> 
        <option value="${course.id}">${course.coursename}&&${course.coursecode}</option>
        </c:forEach>
         </select>
            
            </div>
            <div class="form-group">
                <label for="SectionNo">Section Number:</label>
                <input type="number" id="SectionNo" name="SectionNo" required>
            </div>
            <div class="form-group">
                <label for="capacity">Capacity:</label>
                <input type="number" id="capacity" name="capacity" required>
            </div>
            
 <h3>Monday</h3>
            <div class="slot-group">
        <label for="slot11">Slot 11:</label>
        <input type="checkbox" id="slot11" name="slot11">
    </div>
    <div class="slot-group">
        <label for="slot12">Slot 12:</label>
        <input type="checkbox" id="slot12" name="slot12">
    </div>
    <div class="slot-group">
        <label for="slot13">Slot 13:</label>
        <input type="checkbox" id="slot13" name="slot13">
    </div>
    <div class="slot-group">
        <label for="slot14">Slot 14:</label>
        <input type="checkbox" id="slot14" name="slot14">
    </div>
    <div class="slot-group">
        <label for="slot15">Slot 15:</label>
        <input type="checkbox" id="slot15" name="slot15">
    </div>
    <div class="slot-group">
        <label for="slot16">Slot 16:</label>
        <input type="checkbox" id="slot16" name="slot16">
    </div>
     <h3>Tuesday</h3>
    <div class="slot-group">
        <label for="slot21">Slot 21:</label>
        <input type="checkbox" id="slot21" name="slot21">
    </div>
    <div class="slot-group">
        <label for="slot22">Slot 22:</label>
        <input type="checkbox" id="slot22" name="slot22">
    </div>
    <div class="slot-group">
        <label for="slot23">Slot 23:</label>
        <input type="checkbox" id="slot23" name="slot23">
    </div>
    <div class="slot-group">
        <label for="slot24">Slot 24:</label>
        <input type="checkbox" id="slot24" name="slot24">
    </div>
    <div class="slot-group">
        <label for="slot25">Slot 25:</label>
        <input type="checkbox" id="slot25" name="slot25">
    </div>
    <div class="slot-group">
        <label for="slot26">Slot 26:</label>
        <input type="checkbox" id="slot26" name="slot26">
    </div>
     <h3>Wednesday</h3>
        <div class="slot-group">
        <label for="slot31">Slot 31:</label>
        <input type="checkbox" id="slot31" name="slot31">
    </div>
    <div class="slot-group">
        <label for="slot32">Slot 32:</label>
        <input type="checkbox" id="slot32" name="slot32">
    </div>
    <div class="slot-group">
        <label for="slot33">Slot 33:</label>
        <input type="checkbox" id="slot33" name="slot33">
    </div>
    <div class="slot-group">
        <label for="slot34">Slot 34:</label>
        <input type="checkbox" id="slot34" name="slot34">
    </div>
    <div class="slot-group">
        <label for="slot35">Slot 35:</label>
        <input type="checkbox" id="slot35" name="slot35">
    </div>
    <div class="slot-group">
        <label for="slot36">Slot 36:</label>
        <input type="checkbox" id="slot36" name="slot36">
    </div>
     <h3>Thursday</h3>
    <div class="slot-group">
        <label for="slot41">Slot 41:</label>
        <input type="checkbox" id="slot41" name="slot41">
    </div>
    <div class="slot-group">
        <label for="slot42">Slot 42:</label>
        <input type="checkbox" id="slot42" name="slot42">
    </div>
    <div class="slot-group">
        <label for="slot43">Slot 43:</label>
        <input type="checkbox" id="slot43" name="slot43">
    </div>
    <div class="slot-group">
        <label for="slot44">Slot 44:</label>
        <input type="checkbox" id="slot44" name="slot44">
    </div>
    <div class="slot-group">
        <label for="slot45">Slot 45:</label>
        <input type="checkbox" id="slot45" name="slot45">
    </div>
    <div class="slot-group">
        <label for="slot46">Slot 46:</label>
        <input type="checkbox" id="slot46" name="slot46">
    </div>
     <h3>Friday</h3>
    <div class="slot-group">
    <label for="slot51">Slot 51:</label>
    <input type="checkbox" id="slot51" name="slot51">
</div>
<div class="slot-group">
    <label for="slot52">Slot 52:</label>
    <input type="checkbox" id="slot52" name="slot52">
</div>
<div class="slot-group">
    <label for="slot53">Slot 53:</label>
    <input type="checkbox" id="slot53" name="slot53">
</div>
<div class="slot-group">
    <label for="slot54">Slot 54:</label>
    <input type="checkbox" id="slot54" name="slot54">
</div>
<div class="slot-group">
    <label for="slot55">Slot 55:</label>
    <input type="checkbox" id="slot55" name="slot55">
</div>
<div class="slot-group">
    <label for="slot56">Slot 56:</label>
    <input type="checkbox" id="slot56" name="slot56">
</div>
<h3>Saturday</h3>
<div class="slot-group">
    <label for="slot61">Slot 61:</label>
    <input type="checkbox" id="slot61" name="slot61">
</div>
<div class="slot-group">
    <label for="slot62">Slot 62:</label>
    <input type="checkbox" id="slot62" name="slot62">
</div>
<div class="slot-group">
    <label for="slot63">Slot 63:</label>
    <input type="checkbox" id="slot63" name="slot63">
</div>
<div class="slot-group">
    <label for="slot64">Slot 64:</label>
    <input type="checkbox" id="slot64" name="slot64">
</div>
<div class="slot-group">
    <label for="slot65">Slot 65:</label>
    <input type="checkbox" id="slot65" name="slot65">
</div>
<div class="slot-group">
    <label for="slot66">Slot 66:</label>
    <input type="checkbox" id="slot66" name="slot66">
</div>
    
    
           

            <button type="submit">Create Course</button>
        </form>
        
        
       
<script>
    const form = document.getElementById('myForm');
    const checkboxes = form.querySelectorAll('input[type="checkbox"]');
    
    form.addEventListener('submit', function(event) {
        checkboxes.forEach(checkbox => {
            if (checkbox.checked) {
                checkbox.value = 'true';
            } else {
                checkbox.value = 'false';
            }
        });
    });
</script>
    </div>
</body>
</html>
    