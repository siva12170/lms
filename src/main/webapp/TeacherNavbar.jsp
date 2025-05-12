<style>
html{
  scroll-behavior: smooth;
}

/* XXXXXXXXXXXXXXXXXXXXX common style ends here XXXXXXXXXXXXXXXXXXX */
.header{
  width: 100%;
  height: 100vh;
  background-image: linear-gradient(rgba(0,168,255,0.3), rgba(0,168,255,0.3)), url("../image/header-bg.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  clip-path: polygon(100% 0, 100% 77%, 50% 100%, 0 75%, 0 0);
  position: relative;
}
.header::before{
  content: "";
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  opacity: 0.4;
  z-index: -1;
  background: linear-gradient(to right,  #1e5799 0%, #3ccdbb 0%, #16c9f6 100%);
}
.navbar::before{
  content: "";
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  opacity: 0.4;
  z-index: -1;
  background: linear-gradient(to right,  #1e5799 0%, #3ccdbb 0%, #16c9f6 100%);
}
.nav-item a{
  color: #fff!important;
  font-weight: bold;
}
.header-section{
  width: 100%;
  height: inherit;
  color: #fff;
  text-align: center;
  position: relative;
}
.center-div{
  position: absolute;
  width: 100%;
  height: auto;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  -webkit-transform: translate(-50%, -50%);
}
.header-buttons a{
  border: 1px solid #fff;
  border-radius: 100px;
  margin: 0 5px;
  padding: 12px 35px;
  outline: none;
  color: #fff;
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.4;
  text-align: center;
}
.header-buttons a:hover{
  text-decoration: none;
  color: #50d1c0;
  background-color: #fff;
  box-shadow: 0 0 20px 0 rgba(0,0,0,0.3);
}
.center-div p{
  font-size: 1.3rem;
  padding: 10px 0 20px 0;
  color: #fff;
}



</style>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <meta name="description" content="HTML/CSS">
  <meta name="author" content="Anil">
  <title>Website -Template</title>
  <link rel="stylesheet" href="css/style.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous" />

</head>
<body>
 
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
      <div class="container text-uppercase p-2">
        <a class="navbar-brand font-weight-bold text-white" href="#">K L Deemed To Be University</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="TeacherDash">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Comment">Comment</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#pricingdiv">Price</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#newsletterdiv">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#contactdiv">Contact</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="myclasses">My Classes</a>
            </li>
            
             <li class="nav-item">
              <a class="nav-link" href="timetable">Individual TimeTable</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="course">Course</a>
            </li>
            
          </ul>
        </div>
      </div>
    </nav>
   


  <!-- ***************** header part end ************************** -->

  
</body>
</html>




