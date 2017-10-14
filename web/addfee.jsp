<%@page import="java.sql.*"%>
<%!
Connection con;
PreparedStatement pst1;
ResultSet rs;
String col_nm,co_nm,dep,cour_du,add1,dp,aft,place,infra,cont;
int fee;
%>

<%
    
    
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","gocareer","gocareer"); 

cont=request.getParameter("cont");
fee=Integer.parseInt(request.getParameter("fee"));
col_nm=request.getParameter("col_nm");
co_nm=request.getParameter("co_nm");
dep=request.getParameter("dep");
cour_du=request.getParameter("cour_du");
add1=request.getParameter("add1");
dp=request.getParameter("dp");
aft=request.getParameter("aft");
place=request.getParameter("place");
infra=request.getParameter("infra");
//iyoe=Integer.parseInt(request.getParameter("iyoe"));


pst1=con.prepareStatement("insert into fees values(?,?,?,?,?,?,?,?,?,?,?)");

pst1.setString(1,col_nm);
pst1.setString(2,co_nm);
pst1.setString(3,dep);
pst1.setInt(4,fee);
pst1.setString(5,cour_du);
pst1.setString(6,add1);
pst1.setString(7,dp);
pst1.setString(8,cont);
pst1.setString(9,aft);
pst1.setString(10,place);
pst1.setString(11,infra);


pst1.executeUpdate();
out.println("<center>FEES DETAILS ADDED SUCCESSFULLY WITH ID </center>");

%>
<jsp:include page="addfee.html"/>
