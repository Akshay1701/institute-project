
<%@page import="java.sql.*"%>
<%!
String GNAME,GPASSWORD,GGENDER,GADDRESS,GEMAIL,GTELEPHONE;
int GAGE,GID;
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
GID=Integer.parseInt(request.getParameter("id"));
GNAME=request.getParameter("name");
GPASSWORD=request.getParameter("pwd");
GAGE=Integer.parseInt(request.getParameter("age"));
GGENDER=request.getParameter("gender");
GADDRESS=request.getParameter("address");
GTELEPHONE=request.getParameter("pno");
GEMAIL=request.getParameter("mail");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","gocareer","gocareer");
stmt=con.createStatement();
String str2="select * from register1 where gid='"+GID+"'"; 
rs=stmt.executeQuery(str2);
if(rs.next())
{
    out.println("already registered with this id ");
    %>
    <jsp:include page="user_reg.jsp"/>
     <%       
}
else
{
String str="insert into register1 values('"+GID+"','"+GNAME+"','"+GPASSWORD+"','"+GAGE+"','"+GGENDER+"','"+GADDRESS+"','"+GTELEPHONE+"','"+GEMAIL+"')"; 
//String str1="insert into login values('"+name+"','"+pword+"')";
int rows=stmt.executeUpdate(str);
//stmt.execute(str1);
if(rows>0)
{
out.println("Successfully registered<br>");


%>
<jsp:forward page="admin.jsp"/>
<%

}
else
{
    %>
    <jsp:forward page="user_reg.jsp"/>
<%
    
}
}

}
catch(Exception e)
        {
System.out.println("Error:"+e);
        }
//else
//{
//out.println("<br><br>already register");    
  %>

 

