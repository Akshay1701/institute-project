<%@page import="java.sql.*"%>
<%@page import="com.mygo.connection.*"%>

<%!
String str;
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
//frm=(String)session.getAttribute("");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","gocareer","gocareer");
stmt=con.createStatement();
rs=stmt.executeQuery("select distinct(course_name) from fees where deparment='ENGINEERING'");
}catch(Exception e){
            out.println(e);}
//rs=stmt.executeQuery(str);
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
	
			<div id="column1">
				
		<CENTER><H3 style="color:#f4511e; font-size: 28px;">INSTITUTE NAMES</H3></CENTER>
 <center> <table width="700" align="center">
         
                    
                    <%

            while(rs.next())
            {
               //String iid=rs.getString("iid");
                // String college_name=rs.getString("college_name");
                //String activate=rs.getString("activate");
//String status=null;
            %>
            
            <tr>
               
                <td style="color:#f4511e; font-size: 18px;">&nbsp;&nbsp;<a href="pginst.jsp"><%=rs.getString("course_name")%></a>&nbsp;&nbsp;</td>
               
                
            
            <%
            }
            
            %> 
            </tr>
        </table>
    </center>


				
				
				
				
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