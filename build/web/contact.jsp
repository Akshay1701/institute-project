


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
                   <img src="logo final.png" style="margin-left:183px; width:1000px">
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
	
		<div id="content" style="width:1000px; margin-left:150px; color:white; font-size: 20px; font-family: Garamond">

            <p style="font-size: 22px;"><b>As kids we all want to fly high and in real time! And in this 
                                random pursuit of success, we end up making wrong career choices. 
                                GOCAREER is one stop destination in helping you understand yourself,
                                the best career for you and providing all the resources in the process.
                </b><br>
   
            <BR><center>  <h4 style="font-size:25px; color:#f4511e"><B>HAVE A QUESTION REGARDING GOCAREER? ASK US.</b></h4></font>
 </center>
                                        
                                        <br>
<p style="font-size: 20px;"><b>CONTACTS:<b></p>
<br>
1)Name:     Sushmitha Reddy Sama <br>
Phone:    +91 9959-674792 <br>
Email:    ssr_sushmitha@yahoo.com <br>	
<br>
2)Name:     Vijay Ummeda<br>
Phone:    +91 7730-919942<br>
Email:    vijayummeda35@gmail.com<br>
<br>
3)Name:     Harsha Vunnam<br>
Phone:    +91 9951-758744<br>
Email:    harshavunnam08@gmail.com<br>
</p>
				
		

				
				
				
				
			
		</div>
            
		
			
		</div>
		
		<div id="footer">
			
		</div>
		
	</div>
</div>

</body>
</html>