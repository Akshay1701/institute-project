<%@page import="java.sql.*"%>
<%!
Connection con;
Statement stmt;
String add1,dp,cour,aft,place,infra,des,col_nm1;
int cont;

%>

<%
   col_nm1=(String)session.getAttribute("iname");
   
   add1=request.getParameter("add1");
dp=request.getParameter("dp");
cont=Integer.parseInt(request.getParameter("cont"));
cour=request.getParameter("cour");
aft=request.getParameter("aft");
place=request.getParameter("place");
infra=request.getParameter("infra");
des=request.getParameter("des");
//rank=Integer.parseInt(request.getParameter("rank"));
    
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","gocareer","gocareer"); 

stmt=con.createStatement();

String str="insert into inst_det(col_nm1,add1,dp,cont,cour,aft,place,infra,des) values('"+col_nm1+"','"+add1+"','"+dp+"','"+cont+"','"+cour+"','"+aft+"','"+place+"','"+infra+"','"+des+"')"; 
stmt.execute(str);
stmt.close();

out.println("successfully added");
con.close();

%>
<jsp:include page="addcourse.html"/>

