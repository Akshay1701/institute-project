
<%@page import="java.sql.*"%>

<%!
String frm1,toadd1,da1,sub1,desc1;
Connection con;
Statement stmt;
%>
<%
frm1=(String)session.getAttribute("iname");
da1=request.getParameter("da1");
toadd1=request.getParameter("desg");
sub1=request.getParameter("txt");

desc1=request.getParameter("mesg");
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","gocareer","gocareer");
stmt=con.createStatement();

String str="insert into smsg(frm1,sub1,da1,desc1,toadd1) values('"+frm1+"','"+sub1+"','"+da1+"','"+desc1+"','"+toadd1+"')"; 
stmt.execute(str);
stmt.close();

out.println("successfully sent");
con.close();

%>
<jsp:include page="sendmsg.jsp"/>


