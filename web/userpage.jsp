<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>GO CAREER</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" type="text/css" href="default.css" />
<style>
    .con1 {
  position: relative;
  width: 250px;
  height: 200px;
  float: left;
  margin-left: 15PX;
}

.con1 .image {
  display: block;
  width: 100%;
  height: auto;
}

.overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 100%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: #f4511e;
}

.con1:hover .overlay {
  opacity: 1;
}

.text {
  color: white;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}</style>
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
				<li><a href="home.html">Logout</a></li>
                                <li><a href="viewmsg.jsp">View messages</a></li>
				
				
				
				
				
			</ul>
		</div>
		
		<div id="content">
	
			<div id="column1" style="width:auto">
			 		
<center><h2 style="color:white;"><b>Welcome <%=(String)session.getAttribute("gname")%></center>
        <br>
        <br>
        <div style="width:auto; height:225px;">
            
        <div class="con1">
        <img src="MANAGEMENT.jpg" width="250" height="200"/>
       <div class="overlay">
    <div class="text"><a href="business.jsp">MANAGEMENT</a></div>
  </div>
        </div>
        
        &nbsp;&nbsp; 
        <div class="con1"><img src="COMMERCE.jpg" width="250" height="200"/>
	 <div class="overlay">
    <div class="text"><a href="commerce.jsp" >COMMERCE</a></div>
    </div>
            </div>
              <div class="con1"><img src="ARTS AND HUMANITIES.jpg" width="250" height="200"/>
	 <div class="overlay">
    <div class="text"><a href="arts.jsp" >ARTS AND HUMANITIES</a></div>
    </div>
                  </div>
                  
                     <div class="con1"><img src="MEDICAL.jpg" width="250" height="200"/>
	 <div class="overlay">
    <div class="text"><a href="medical.jsp" >MEDICAL</a></div>
    </div>
                         </div>
        
        </div>
        
        <div style="width: auto;height: 225PX;">
        <div class="con1"><img src="ENGINEERING.jpg" width="250" height="200"/>
	 <div class="overlay">
    <div class="text"><a href="pg.jsp" >ENGINEERING</a></div>
    </div>
        </div>
            <div class="con1"><img src="SCIENCE.jpg" width="250" height="200"/>
	 <div class="overlay">
    <div class="text"><a href="science.jsp" >SCIENCE</a></div>
    </div>
                         </div>
            <div class="con1"><img src="OTHER PROFESSIONAL COURSES1.jpg" width="250" height="200"/>
	 <div class="overlay">
    <div class="text"><a href="other.jsp">OTHER PROFESSIONAL COURSES</a></div>
    </div>
                         </div>
            
        </div>
        
            
            
        </div>	
	</div>
        
       
		<div id="column2">
				
				
				
				
			</div>
			
		</div>
		
		<div id="footer">
			
		</div>
		
	</div>
</div>

</body>
</html>