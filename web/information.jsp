
<%@page import="java.sql.*"%>
<%@page import="com.mygo.connection.*"%>

<%!
Connection con;
PreparedStatement pst1;
ResultSet rs1;
String college_name;
%>




  <%
        
try
{
college_name=request.getParameter("college_name");   
       Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","gocareer","gocareer");   
        pst1=con.prepareStatement("select * from fees where college_name=?");
        pst1.setString(1,college_name);
        rs1=pst1.executeQuery();
        }catch(Exception e){
            out.println(e);}
%>

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
				<li><a href="home.html">Logout</a></li>
                                <li><a href="viewmsg.jsp">View messages</a></li>
			</ul>
               
		</div>
	  <div class="content" style="width:1000px;margin-left:150px; padding:30px;">
	
               <div class="column1" style="">
			 
                       

			


         
                    
           <%
       if(rs1.next())
        {
        %>
        
        <center> <h2 style="color:white"><u> <%=rs1.getString(1)%></u></h2> </center>
				&nbsp;&nbsp;&nbsp;
		`		&nbsp;&nbsp;&nbsp;
                                
                                <div style="float: left;"> 
                           <br>
                          <img src="col123.jpg" width="400" height="250px">
                        </div>
        
                                <div style="float: right; color: white;">
          <br> <b>Course Name </b>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString(2)%> 
          <br> <b>Department</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString(3)%>
          <br><b>Fees</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString(4)%>
          <br><b>Course Duration</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString(5)%>
          <br><b>Address</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString(6)%>
          <br><b>Director/Principal</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString(7)%>
          <br><b>Contact no</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString(8)%>
          <br><b>Affiliated from</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString(9)%>
          <br><b>Placements Offered</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString(10)%>
          <br><b>Infrastructure</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs1.getString(11)%>
          
        </div>
        <%
        }
        %>
            		
				
				
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