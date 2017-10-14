<%@page import="java.sql.*"%>
<page include page="addinstitute.jsp"/>
<%!
String frm1,toadd1,da1,desc1;
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
toadd1=(String)session.getAttribute("gname");

Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","gocareer","gocareer");
stmt=con.createStatement();

String str="select frm1,da1,desc1 from smsg where toadd1='"+toadd1+"'"; 

rs=stmt.executeQuery(str);
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
	
		<div id="content">
	
		
				
		
<CENTER><H3 style="color:white; font-size: 28px;" >MESSAGES</H3></CENTER>
<br>
 <center> <table width="700" align="center">
         <tr><td style="color:#f4511e; font-size: 18px;" ><b>Institute</b></td>
                    <td style="color:#f4511e; font-size: 18px;" ><b>Date</b></td>
                    <td style="color:#f4511e; font-size: 18px;" ><b>Description</b></td></tr>
         <br>
                    <%
            while(rs.next())
            {
            %>
            
            <tr><td style="color:white; font-size: 18px;" >&nbsp;&nbsp;<%=rs.getString("frm1")%>&nbsp;&nbsp;</td>
                <td style="color:white; font-size: 18px;" >&nbsp;&nbsp;<%=rs.getString("da1")%>&nbsp;&nbsp;</td> 
               <td style="color:white; font-size: 18px;" >&nbsp;&nbsp;<%=rs.getString("desc1")%>&nbsp;&nbsp;</td> 
            </tr>
                     
            
            <%
            }
            
            %>  
            
        </table>
    </center>
				
				
			
		</div>
		
		<div id="footer">
			
		</div>
		
	</div>
</div>

</body>
</html>