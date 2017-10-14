


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>GO CAREER</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css" href="default.css" />

   
   
</head>


<body>
  

<div id="outer">
	<div id="outer2">
	
		<div id="header">
                   <img src="logo final.png" style="margin-left:175px; width:1000px">
                        <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="home2.jpg" style="width:100%; height:300px;">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="home page first.jpg" style="width:100%; height:300px;">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="home page last.jpg" style="width:100% ; height:300px;">
  <div class="text"></div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>
</div>




<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>

		</div>
	
		<div id="menu">
			<ul>
				<li><a href="home.html" id="hm">Home</a></li>
				<li><a href="aboutus.html" id="ab">About Us</a></li>
                                <li><a href="contact.jsp" id="con">Contact Us</a></li>
				<li><a href="help.jsp" id="hl">Help</a></li>
                                <li style="float:right;"><a href="admin.jsp">Login</a></li>
                                <li style="float:right;"><a href="user_reg.jsp">Registration</a></li>
			</ul>
               
		</div>
	
		<div id="content">
	
			<div id="column1" style="width:1000px;">
			<center><p style="font-size:48px; color:#f4511e; font-family: Garamond;width:250px;height:20px;"><b>HELP?</b></p></center>	
                        <p style="color: white; font-size: 24px;font-family: Garamond;">		
1)	 What if I am a new user?
<br>
Ans: You should register before you login.

<br>
<br>
2)	 What is name which should be entered while student is logging in?
<br>
Ans: It is the name which is given while registering. 

<br>
<br>
3)	 What is name which should be entered while institute is logging in?
<br>
Ans: It is the ID which is being entered by the institute.

<br>
<br>
4)	 What is this Authentication type?
<br>
Ans: It is the types of user, who should login with their respective authentication type.

<br>
<br>
5)	 What is ?View message??
<br>
Ans: It is like an inbox for the student, it has all the messages which are sent by the institutes.

<br>
<br>
6)	 What are ?Add fee? and ?Add institute details??
<br>
Ans: Institute can add select the department in Add fee and enter all the courses it provides in Add institute details.

  </p>                          
				
				
				
				
			</div>
			
			
			
		</div>
		
		<div id="footer">
			
		</div>
		
	</div>
</div>

</body>
</html>