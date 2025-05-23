<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<style>
html{
  scroll-behavior: smooth;
}
*{margin: 0;padding: 0;box-sizing: border-box;font-family: 'Poppins', sans-serif;}
a{text-decoration: none;}
a:hover{text-decoration: none;}
li{list-style: none;}
p{
  font-size: 0.9rem;
  line-height: 1.6;
  font-weight: 400;
  color: #606060;
}
.extradiv h2, .servicediv h2{
  font-size: 0.9rem;
  margin: 20px 0 15px 0;
  font-weight: bold;
  line-height: 1.1;
  word-spacing: 4px;
}
i{
  color: #2fccd0;
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
/* ********************* three extra header div starts ******************** */

.header-extradiv{
  width: 100%;
  height: auto;
  margin: 100px 0;
  text-align: center;
}
.extradiv p{text-align: justify;}
.extradiv{
  background-color: #fff;
  border: none;
  padding: 30px!important;
  border-radius: 3px;
  transition: 0.3s;
}
.extradiv:hover{
  box-shadow: -10px 0px 20px 0 rgba(0,0,0,0.3);
  transform: translateY(-20px);
}

/* ********************* three extra header div ends ******************** */

/* ******************* service offer css start ********************** */

.serviceoffers{
  background-color: #f7f7f9;
  padding: 50px 0;
  margin-bottom: 50px;
}
.headings{
  margin-bottom: 50px;
}
.headings h1{
  font-size: 1.5rem;
  font-weight: 600;
  text-transform: uppercase;
}
.names h1{
  color: #2e2e2e;
  font-size: 0.9rem;
  text-transform: uppercase;
  font-weight: bold;
}
.service-icons{

  display: flex;
  justify-content: center;
  align-items: center;
}
.progress{
  height: 0.6rem!important;
  margin-bottom: 25px!important;
}
/* ******************* service offer css ends ********************** */

/* ********************* project (completed) starts ****************************** */

.project-work{
  margin: 100px 0;
}
.project-work h1{
  font-size: 2rem;
  text-align: center;
}
/* ********************* project (completed) ends ****************************** */

 /* ********************* our pricing starts ******************************  */

.pricing{
  width: 100%;
  height: 100vh;
  padding: 50px;
  position:  relative;
}
.pricing::before{
  content: "";
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: -1;
  background: linear-gradient(160deg, #16c9f6 55%, #fff 0%);
}
.money{
  font-size: 40px;
  line-height: 1;
  color: #606060;
}
.card{
  transition: 0.4s ease;

}
.card-header{
  font-size: 1.6rem;
  font-weight: bold;
  background: #fff!important;
  padding: 25px 0!important;
}
.card-body{
  padding: 30px 0!important;
}
.card-body li{
  margin: 10px 0;
  font-weight: 400;
  font-size: 15px;
  line-height: 1.6;
  color: #606060;
}
.card-footer{
  background: #fff!important;
  padding: 30px 0!important;
}
.card-footer a{
  border: 1px solid #50c1d0;
  border-radius: 100px;
  margin: 0 5px;
  padding: 12px 35px;
  outline: none;
  color: #50d1c0;
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.4;
  text-align: center;
}
.card:hover .card-footer a{
  text-decoration: none;
  color: #fff;
  background-color: #50d1c0;
  box-shadow: 0 0 20px 0 rgba(0,0,0,0.3);
}
.card:hover{
  transform: translateY(-20px);
  box-shadow: 0 0 20px 0 rgba(0,0,0,0.3);
}
.card:hover .card-header, .card:hover .money{
  color: #50d1c0;
}
.card-second{
  transform: translateY(-20px);
  /* box-shadow: 0 0 20px 0 rgba(0,0,0,0.3); */
}
 /* ********************* our pricing ends ****************************** */


  /* ********************* our happy clients starts ******************************  */

.happyclients{
  width: 100%;
  height: 100vh;
  padding: 80px 0;
}
.box{
  text-align: center;
  border: 1px solid rgba(0,0,0,0.2);
  box-shadow: 0 5px 10px 0 rgba(0,0,0,0.3);
  border-radius: 2px;
  transition: 0.3s ease;
}
.box:hover{
  background: #16c9f6;
}
.box:hover p{
  color: #fff;
}
.carousel-indicators{
  position: absolute;
  right: 0;
  bottom: -60px!important;
}
.carousel-indicators li{
  background-color: #16c9f6!important;
}
.box a{
  position: relative;
}
.box a img{
  width: 100px;
  height: 100px;
  border-radius: 50%;
  margin-top: 20px;
}
.box a::after{
  content: "\f10d";
  font-family: FontAwesome;
  width: 40px;
  height: 40px;
  background: linear-gradient(to right, #1e5799 0%, #3ccdbb 0%, #16c9f6 100%);
  color: #fff;
  position: absolute;
  top: 120%;
  left: 70%;
  border-radius: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
}
.box h1{
  font-size: 18px;
  font-weight: 700;
  color: #000;
  margin-bottom: 10px;
}
.box h2{
  font-size: 13px;
  font-weight: 400;
  color: #666666;
  margin-bottom: 20px;
}
  /* ********************* our happy clients ends ******************************  */


 /* ********************* contact us starts ******************************  */

.contactus{
  width: 100%;
  height: 100vh;
  padding: 80px 0;
  position: relative;
}
.contactus::before{
  content: "";
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: -1;
  background: linear-gradient(330deg, #16c9f6 55%, #fff 0%);
}
.form-button button{
  border: 1px solid #50c1d0;
  border-radius: 100px;
  margin: 0 5px;
  padding: 12px 35px;
  outline: none;
  color: #50d1c0;
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.4;
  text-align: center;
  background: transparent;
}
form:hover .form-button button{
  background: #fff;
  color: #50d1c0;
  box-shadow: 0 0 20px 0 rgba(0,0,0,0.3);
}
::placeholder{
  font-size: 0.85rem;
}
 /* ********************* contact us ends ******************************  */

/* ********************* newsletter starts ****************************** */

.newsletter{
  width: 100%;
  height: auto;
  margin: 80px 0;
}
.newsletter-input{
  border-radius: 100px 0px 0px 100px!important;
  min-width: 150px;
  min-height: 45px;
}
.input-group-text{
  color: #fff!important;
  background: #5bc0de!important;
  border-radius: 0 100px 100px 0!important;
  min-width: 130px;
  min-height: 45px;
}
.input-group-text:hover{
  cursor: pointer;
  opacity: 0.8;
}

/* *********************  newsletter ends ****************************** */

/* *********************  footer starts ****************************** */

.footersection{
  width: 100%;
  height: auto;
  padding: 70px 0 20px 0;
  background: #00abff;
  position: relative;
}
.footersection p{
  color: #fff;
}
.footer-navlinks{
  text-align: center;
}
.footersection li a{
  font-size: 0.9rem;
  line-height: 1.6;
  font-weight: 400;
  color: #fff;
  text-transform: capitalize;
}
.footersection h3{
  text-transform: uppercase;
  color: #fff;
  margin-bottom: 25px;
  font-size: 1.2rem!important;
  font-weight: 600;
  text-shadow: 0 2px 5px rgba(0,0,0,0.4);
}
#myBtn{
  /* display: none; */
  position: fixed;
  bottom: 20px;
  right: 40px;
  z-index: 10;
  border: none;
  color: #fff;
  background: #00abff;
  padding: 10px;
  border-radius: 10px;
}
#myBtn:hover{
  background: #606060;
}
/* *********************  footer ends ****************************** */


/* ****************** Media Queries ********************** */
@media (max-width: 768px) {
  .nav-item{
    text-align: center!important;
  }
  .pricing, .happyclients, .contactus{
    height: auto;
    margin-top: 50px;
  }
  .card-second{
    transform: translateY(0px);
    margin: 30px 0;
  }
  .contactus p{
    padding: 0 50px;
  }
  .footer-navlinks{
    text-align: left;
  }
  .footer-div{
    margin: 30px 0;
  }
}

.heart {
  width: 70px;
  height: 70px;
  background: url("https://cssanimation.rocks/images/posts/steps/heart.png") no-repeat;
  background-position: 0 0;
  cursor: pointer;
  transition: background-position 1s steps(28);
  transition-duration: 0s;
  
  &.is-active {
    transition-duration: 1s;
    background-position: -2800px 0;
  }
}



.placement {
  position: fixed;
  top: 53%;
  left: 55%;
  transform: translate(-50%, -50%);
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
  <div class="header" id="topheader">
    <%@ include file="TeacherNavbar.jsp" %>
    <section class="header-section">
      <div class="center-div">
        <h1 class="font-weight-bold">Welcome ${name}</h1>
        <p>We creates the world best websites</p>
        <div class="header-buttons">
          <a href="#newsletterdiv">AboutUs</a>
          <a href="#contactdiv">ContactUs</a>
        </div>
      </div>
    </section>
  </div>

  <!-- ***************** header part end ************************** -->

  <!-- ********************* three extra header div starts ******************** -->

  <section class="header-extradiv">
    <div class="container">
      <div class="row">
        <div class="extradiv col-lg-4 col-md-4 col-12">
          <a href="#"><i class="fa-3x fa fa-desktop"></i></a>
          <h2>EASY TO USE</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
        </div>
        <div class="extradiv col-lg-4 col-md-4 col-12">
          <a href="#"><i class="fa-3x fa fa-trophy"></i></a>
          <h2>AWESOME DESIGN</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
        </div>
        <div class="extradiv col-lg-4 col-md-4 col-12">
          <a href="#"><i class="fa-3x fa fa-magic"></i></a>
          <h2>EASY TO CUSTOMIZE</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
        </div>
      </div>
    </div>
  </section>

  <!-- ********************* three extra header div starts ******************** -->

  <!-- ********************* offer section starts ****************************** -->

  <section class="serviceoffers" id="servicediv">
    <div class="container headings text-center">
      <h1 class="text-center font-weight-bold">WHAT DO WE OFFER</h1>
      <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-md-12 col-10 offset-lg-0 offset-1">
          <div class="names my-3">
            <h1>HTML</h1>
            <div class="progress w-75">
              <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">100%</div>
            </div>
          </div>
          <div class="names my-3">
            <h1>CSS</h1>
            <div class="progress w-75">
              <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">90%</div>
            </div>
          </div>
          <div class="names my-3">
            <h1>JAVASCRIPT</h1>
            <div class="progress w-75">
              <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">80%</div>
            </div>
          </div>
          <div class="names my-3">
            <h1>REACTJS</h1>
            <div class="progress w-75">
              <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">50%</div>
            </div>
          </div>
          <div class="names my-3">
            <h1>NODEJS</h1>
            <div class="progress w-75">
              <div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
            </div>
          </div>
        </div>
        <div class="col-lg-6 col-md-12 col-12 servicediv">
          <div class="row">
            <div class="col-lg-2 col-2 service-icons">
              <i class="fa-3x fa fa-desktop"></i>
            </div>
            <div class="col-lg-10 col-10">
              <h2>Website Development</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. sed do eiusmod tempor incididunt.</p>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-2 col-2 service-icons">
              <i class="fa-3x fa fa-wifi"></i>
            </div>
            <div class="col-lg-10 col-10">
              <h2>Digital Marketing</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. sed do eiusmod tempor incididunt.</p>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-2 col-2 service-icons">
              <i class="fa-3x fa fa-phone"></i>
            </div>
            <div class="col-lg-10 col-10">
              <h2>Support 24/7</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. sed do eiusmod tempor incididunt.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ********************* offer section ends ****************************** -->

  <!-- ********************* project (completed) starts ****************************** -->

  <section class="project-work">
    <div class="container headings text-center">
      <p class="text-center font-weight-bold">Information</p>
    </div>
    <div class="container d-flex justify-content-around align-items-center text-center">
      <div>
        <h1 class="count">10</h1>
        <p>CMS Installation</p>
      </div>

      <div>
        <h1 class="count">1</h1>
        <p>Awards Won</p>
      </div>

      <div>
        <h1 class="count">2</h1>
        <p>Happy Clients</p>
      </div>

      <div>
        <h1 class="count">3</h1>
        <p>Working On</p>
      </div>
    </div>
  </section>
  <!-- ********************* project (completed) ends ****************************** -->


  <!-- ********************* our pricing start ****************************** -->

  <section class="pricing" id="pricingdiv">
    <div class="container headings text-center">
      <h1 class="text-center font-weight-bold text-white">OUR BEST PRICING</h1>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-12">
          <div class="card text-center">
            <div class="card-header">BASIC</div>
            <div class="card-body">
              <li>$<span class="money">20</span>/website</li>
              <li>Responsive Websites</li>
              <li>Domain Name Free</li>
              <li>Mobile Friendly</li>
              <li>Webmail Support</li>
              <li>Customer Support 24/7</li>
            </div>
            <div class="card-footer">
              <a href="#">Purchase</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-12 card-second">
          <div class="card text-center">
            <div class="card-header">STANDARD</div>
            <div class="card-body">
              <li>$<span class="money">40</span>/website</li>
              <li>Responsive Websites</li>
              <li>Domain Name Free</li>
              <li>Mobile Friendly</li>
              <li>Webmail Support</li>
              <li>Customer Support 24/7</li>
            </div>
            <div class="card-footer">
              <a href="#">Purchase</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-12">
          <div class="card text-center">
            <div class="card-header">UNLIMITED</div>
            <div class="card-body">
              <li>$<span class="money">60</span>/website</li>
              <li>Responsive Websites</li>
              <li>Domain Name Free</li>
              <li>Mobile Friendly</li>
              <li>Webmail Support</li>
              <li>Customer Support 24/7</li>
            </div>
            <div class="card-footer">
              <a href="#">Purchase</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ********************* our pricing end ****************************** -->

  <!-- ********************* our happy clients starts ****************************** -->

  <section class="happyclients">
    <div class="container headings text-center">
      <h1 class="text-center font-weight-bold">OUR HAPPY CLIENTS</h1>
      <p class="text-center text-captalize pt-1">Our Satisfied Customer Says</p>
    </div>
    <div id="demo" class="carousel slide" data-ride="carousel">

      <!-- Indicators -->
      <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
      </ul>

      <!-- The slideshow -->
      <div class="carousel-inner container">
        <div class="carousel-item active">
          <div class="row">
          <c:forEach items="${comments}"  var="comment">
          <% boolean hasLiked = false; %>
          <% int likes = 0; %>
            <div class="col-lg-4 col-md-4 col-12">
              <div class="box">
                <a href="#"><img src="https://th.bing.com/th/id/OIP.kUFzwD5-mfBV0PfqgI5GrAHaHa?rs=1&pid=ImgDetMain" class="img-fluid img-thumbnail"></a>
                <p class="m-4">${comment.text}</p>
                <h1>${comment.teacher.email}</h1>
                <h2>${comment.teacher.role}</h2>
                 <c:forEach items="${likes}"  var="like">
               
                <c:if test="${like.teacher.id==tid && like.comment.id==comment.id}">
                 <% hasLiked = true; %>
                </c:if> 
               <c:if test="${like.comment.id==comment.id}">
               <% likes++; %>
                </c:if> 
                </c:forEach> 
                
                
                
                <% if (!hasLiked) { %>
              <img src="https://cdn-icons-png.flaticon.com/512/833/833300.png" 
     height="30px" width="30px" 
     style="cursor: pointer;" 
     onclick="window.location.href='Teacherlike?id=${comment.id}';">
          <% }     
                
                else { %>  
                <img src="https://cdn-icons-png.flaticon.com/512/833/833386.png" height="30px" width="30px">
                
                <% } %>
                
                <p><%= likes %> </p>
              </div>
            </div>
            </c:forEach> 
          </div>
        </div>
        
        <div class="carousel-item">
          <div class="row">
            <div class="col-lg-4 col-md-4 col-12">
              <div class="box">
                <a href="#"><img src="https://th.bing.com/th/id/OIP.kUFzwD5-mfBV0PfqgI5GrAHaHa?rs=1&pid=ImgDetMain" class="img-fluid img-thumbnail"></a>
                <p class="m-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <h1>Anil Swami</h1>
                <h2>Web Developer</h2>
              </div>
            </div>
            <div class="col-lg-4 col-md-4 col-12">
              <div class="box">
                <a href="#"><img src="https://th.bing.com/th/id/OIP.kUFzwD5-mfBV0PfqgI5GrAHaHa?rs=1&pid=ImgDetMain" class="img-fluid img-thumbnail"></a>
                <p class="m-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <h1>Anil Swami</h1>
                <h2>Web Developer</h2>
              </div>
            </div>
            <div class="col-lg-4 col-md-4 col-12">
              <div class="box">
                <a href="#"><img src="https://th.bing.com/th/id/OIP.kUFzwD5-mfBV0PfqgI5GrAHaHa?rs=1&pid=ImgDetMain" class="img-fluid img-thumbnail"></a>
                <p class="m-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <h1>Anil Swami</h1>
                <h2>Web Developer</h2>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <div class="row">
            <div class="col-lg-4 col-md-4 col-12">
              <div class="box">
                <a href="#"><img src="https://th.bing.com/th/id/OIP.kUFzwD5-mfBV0PfqgI5GrAHaHa?rs=1&pid=ImgDetMain" class="img-fluid img-thumbnail"></a>
                <p class="m-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <h1>Anil Swami</h1>
                <h2>Web Developer</h2>
              </div>
            </div>
            <div class="col-lg-4 col-md-4 col-12">
              <div class="box">
                <a href="#"><img src="https://th.bing.com/th/id/OIP.kUFzwD5-mfBV0PfqgI5GrAHaHa?rs=1&pid=ImgDetMain" class="img-fluid img-thumbnail"></a>
                <p class="m-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <h1>Anil Swami</h1>
                <h2>Web Developer</h2>
              </div>
            </div>
            <div class="col-lg-4 col-md-4 col-12">
              <div class="box">
                <a href="#"><img src="https://th.bing.com/th/id/OIP.kUFzwD5-mfBV0PfqgI5GrAHaHa?rs=1&pid=ImgDetMain" class="img-fluid img-thumbnail"></a>
                <p class="m-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <h1>Anil Swami</h1>
                <h2>Web Developer</h2>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Left and right controls -->
      <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a>

    </div>
  </section>


  <!-- ********************* our happy clients end ****************************** -->

  <!-- ********************* contact us starts ****************************** -->

  <section class="contactus" id="contactdiv">
    <div class="container headings text-center">
      <h1 class="text-center font-weight-bold">CONTACT US</h1>
      <p class="text-center text-captalize pt-1">We're here to help and answer any question you might have. we look forward to hearing from you.</p>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-10 offset-lg-2 offset-md-2 offset-1">

          <form action="/action_page.php">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Enter Your Name" id="username" autocomplete="off" required>
            </div>
            <div class="form-group">
              <input type="email" class="form-control" placeholder="Enter Email" id="email" autocomplete="off" required>
            </div>
            <div class="form-group">
              <input type="number" class="form-control" placeholder="Enter Mobile Number" id="mobile" autocomplete="off" required>
            </div>
            <div class="form-group">
              <textarea class="form-control" rows="4" placeholder="Enter Your Message" id="comment"></textarea>
            </div>
            <div class="d-flex justify-content-center form-button">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </form>
        </div>
      </div>

    </div>
  </section>

  <!-- ********************* contact us ends ****************************** -->

  <!-- ********************* newsletter starts ****************************** -->

  <section class="newsletter" id="newsletterdiv">
    <div class="container headings text-center">
      <h1 class="text-center font-weight-bold">SUBSCRIBE TO OUR NEWS LETTER</h1>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 offset-lg-2 col-12 ">
          <div class="input-group mb-3">
            <input type="text" class="form-control newsletter-input" placeholder="Your Email">
            <div class="input-group-append">
              <span class="input-group-text">Subscribe</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ********************* newsletter ends ****************************** -->


  <!-- ********************* foter starts ****************************** -->

  <footer class="footersection" id="footerdiv">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-md-6 col-12 footer-div">
          <div>
            <h3>ABOUT ANIWEB</h3>
            <p>The world has become so fast paced that people don't want to stand by reading a page of information to be they would much rather look at a presentstion and understand the message.</p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 col-12 footer-div">
          <div class="footer-navlinks">
            <h3>NAVIGATION LINKS</h3>
            <li><a href="#">Home</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Price</a></li>
            <li><a href="#">About</a></li>
          </div>
        </div>
        <div class="col-lg-4 col-md-12 col-12 footer-div">
          <div>
            <h3>NEWSLETTER</h3>
            <p>For business professionals caught between high OEM price and mediocre print and graphic output.</p>
            <div class="container newsletter-main">
              <div class="row">
                <div class="col-lg-12 col-12 ">
                  <div class="input-group mb-3">
                    <input type="text" class="form-control newsletter-input" placeholder="Your Email">
                    <div class="input-group-append">
                      <span class="input-group-text">Subscribe</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="mt-5 text-center">
        <p>Copyright &copy;2020 All rights reserved | This template is made with love by Anil Swami (www.aniweb.in)</p>
      </div>
      <div class="scrolltop float-right">
        <i class="fa fa-arrow-up" onclick="topFunction()" id="myBtn"></i>
      </div>
    </div>
  </footer>

  <!-- ********************* footer ends ****************************** -->

  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js" integrity="sha256-jDnOKIOq2KNsQZTcBTEnsp76FnfMEttF6AV2DF2fFNE=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js" integrity="sha256-JtQPj/3xub8oapVMaIijPNoM0DHoAtgh/gwFYuN5rik=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <script type="text/javascript">
  $('.count').counterUp({
    delay:10,
    time:300
  })
  // Get the button:
  mybutton = document.getElementById("myBtn");

  //When the user scrolls down 20px from the top of the document, show the buttons
  window.onscroll = function() {scrollFunction()};

  function scrollFunction(){
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
      mybutton.style.display = "block";
    } else {
      mybutton.style.display = "none";
    }
  }
  //When the user clicks on the button, scroll to the top of the document
  function topFunction(){
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
  }
  </script>
</body>
</html>




