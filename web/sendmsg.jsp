<%@page import="java.sql.*"%>
<%!

Connection con;
Statement stmt;
ResultSet rs;
%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","gocareer","gocareer");
stmt=con.createStatement();
rs=stmt.executeQuery("select gname from register1"); 

%>

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
    alignment-adjust: central;
    margin-left: 150px;
}

</style>
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
				<li><a href="home.html">Logout</a></li>
                                <li><a href="addfee.html">Add Institute Details</a></li>
                               
                                <li><a href="viewusers12.jsp">View Users</a></li>
                                <li><a href="sendmsg.jsp">Send Messages</a></li>
			</ul>
               
		</div>
	
		<div id="content">
	
			<div class="column1">
				
		
 <form action="sendmsg1.jsp" method="post" >

<label>To:</label>
    <select size="1" name="desg">
    <option selected>select</option>
    <%
    while(rs.next())
    {
    %>
    
    <option><%=rs.getString(1)%></option>
    <%
    }
        %>  
</select>
<label>Date:</label><input name="da1" type="text" size="20">

<label>Subject:</label><input name="txt" type="text" size="20">
<label>Message:</label><textarea  name="mesg" cols="63"rows="8"></textarea>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="submit">&nbsp;&nbsp;&nbsp;
<input type="reset" value="clear">

</form> 
	

				
				
				
				
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