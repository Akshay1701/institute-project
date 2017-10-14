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
textarea[type=text] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 40%;
    background-color: #f4511e;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 20px;
}

input[type=reset] {
    width: 40%;
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
input[type=reset]:hover {
    background-color: #f4511e;
    font-size: 20px;
}

.column1{
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    width: 500px;
    alignment-adjust: central
}
</style>
</head>

<script>
function fun()
{
var no1=f.name.value;
if(no1.length==0 )
{
alert("plz enter valid user name");
f.name.focus();
return false;
}
var no2=f.pwd.value;
if(no2.length==0)
{
alert("plz enter  password");
f.pwd.focus();
return false;
}
var no3=f.age.value;
if(no3.length==0 || no3<18)
{
alert("plz enter valid age");
f.age.focus();
return false;
}
var no5=f.address.value;
if(no5.length==0 )
{
alert("plz enter valid address");
f.address.focus();
return false;
}
var no6=f.pno.value;
if(no6.length==0)
{
alert("plz enter  valid phone number");
f.pno.focus();
return false;
}
var no7=f.mail.value;
if(no7.length==0 )
{
alert("plz enter valid mail-id");
f.mail.focus();
return false;
}

var no8=f.gid.value;
if(no8.length==0 )
{
alert("plz enter valid uid");
f.mail.focus();
return false;
}
}
</script>


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
                                <li style="float:right;"><a href="registerinst.jsp">New Institute? Register</a></li>
                                <li style="float:right;"><a href="user_reg.jsp">New User? Register</a></li>
				
				
				
				
				
			</ul>
		</div>
		
		<div class="content" style="width:1000px;margin-left:150px; padding:30px;">
	
			 <center><div class="column1">
                           
				<h2 style="color:#f4511e"><u>Registration</u></h2>
				&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;
		    <form action="register.jsp" method="post" name="f" onsubmit="return fun()">
        <label >ID</label>
            <input type=text size=20 name="id"> 
            <label>Name</label>
            <input type=text size=20 name="name">
            <label>Password</label>
            <input type=password size=20 name="pwd">
            <label>Age</label>
            <input type=text size=20 name="age">
            <label >Gender</label>
                <select name="gender"><option>Male <option>Female
            </select>
            <label >Address</label>          
            <textarea name="address" cols="63" rows="4"></textarea>
            <label >Phone no.</label>
            <input type=text size=20 name="pno">
           <label >Email</label>
            <input type=text size=20 name="mail">
        
        <input type=submit value="Submit">&nbsp&nbsp&nbsp
        <input type=reset value="Clear">
    </form>
                            </center>	
							
</div> </center>
                                
	
<script type="text/javascript">
    fuction fun()
    {
        var a=f.id.value();
        if(a.length==0)
        {
            alert("plz enter valid id");
            f.id.focus();
            return false;
        }
         var b=f.name.value();
        if(b.length==0)
        {
            alert("plz enter valid name");
            f.name.focus();
            return false;
        }
         var c=f.pwd.value();
        if(c.length==0)
        {
            alert("plz enter valid password");
            f.pwd.focus();
            return false;
        }
         var d=f.age.value();
        if(d.length==0)
        {
            alert("plz enter valid age");
            f.age.focus();
            return false;
        }
        
         var e=f.gender.value();
        if(e.length==0)
        {
            alert("plz enter valid gender");
            f.gender.focus();
            return false;
        }
        
         var f1=f.address.value();
        if(f1.length==0)
        {
            alert("plz enter valid address");
            f.address.focus();
            return false;
        }
        
         var g=f.pno.value();
        if(g.length==0)
        {
            alert("plz enter valid phone number");
            f.pno.focus();
            return false;
        }
        
         var h=f.mail.value();
        if(h.length==0)
        {
            alert("plz enter valid mail");
            f.mail.focus();
            return false;
        }
        
        
        
        
    }
    
</script>
		</div>
		
		<div id="footer">
			
		</div>
		
	</div>
</div>

</body>
</html>