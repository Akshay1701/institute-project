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
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #f4511e;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 20px;
}

input[type=submit]:hover {
    background-color: #f4511e;
    font-size: 20px;
}

.column1{
    border-radius: 5px;
    background-color: #f2f2f2;
    height: auto;
    padding: 20px;
    width: 500px;
    alignment-adjust: central
}
</style>
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
				<li><a href="home.html" id="hm">Back</a></li>
				<li><a href="aboutus.html" id="ab">About Us</a></li>
                                <li><a href="contact.jsp" id="con">Contact Us</a></li>
				<li><a href="help.jsp" id="hl">Help</a></li>
                                <li style="float:right;"><a href="user_reg.jsp">New User? Register</a></li>
				
				
				
				
				
			</ul>
		</div>
		
            <div class="content" style="width:1000px;margin-left:150px; padding:30px;">
	
                <center><div class="column1" style="">
			 
                        <h2 style="color:#f4511e"><u>Login Page</u></h2>
				&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;
                                <form action="adminaction.jsp" class="register-form" onsubmit="return fun()">
                             <label for="name" style='align:left'>Name</label>
			
			<input type="text" name="gname">
			
			<label for="password">Password</label>
	
			<input type="password" name="gpassword">
			
                       <label for="Authentication_id">Authentication Type</label>
                        <t><select name="aid">
                            <option value="000">--select--</option>
                            <option value="Admin">Admin</option>
                                <option value="Institute">Institute</option>
                                <option value="Student">Student</option>
                        </select>            
                        
			
			
			
			
			
                  <input type="submit" name="submit" value="Login" class="btn" >
				
			</form>
			
							
			</div></center>
   
                <script type="text/javascript">
    fuction fun()
    {
        var a=f.gname.value();
        if(a.length==0)
        {
            alert("plz enter valid name");
            f.gname.focus();
            return false;
        }
         var b=f.gpassword.value();
        if(b.length==0)
        {
            alert("plz enter valid password");
            f.gpassword.focus();
            return false;
        }
         var c=f.aid.value();
        if(c.length==0)
        {
            alert("plz enter valid authentication type");
            f.aid.focus();
            return false;
        }
        
        </script>
        
			
			
		</div>
		
		<div id="footer">
			
		</div>
		
	</div>
</div>

</body>
</html>