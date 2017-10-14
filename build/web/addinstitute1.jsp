
<%@page import="java.sql.*"%>
<%!
Connection con;
PreparedStatement pst1;
Statement stmt;
ResultSet rs;
String iname,iadd,iphno,idesc,ipwd;
int iid,iyoe,icno;
%>
<%
    
   
iid=Integer.parseInt(request.getParameter("iid"));
iname=request.getParameter("iname");
iadd=request.getParameter("iadd");
iphno=request.getParameter("iphno");
idesc=request.getParameter("idesc");
iyoe=Integer.parseInt(request.getParameter("iyoe"));
ipwd=request.getParameter("ipwd");
icno=Integer.parseInt(request.getParameter("icno"));
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","gocareer","gocareer");
stmt=con.createStatement();
String str2="select * from institute where iname='"+iname+"'"; 
rs=stmt.executeQuery(str2);
if(rs.next())
{
    out.println("already registered with this name ");
    %>
    <jsp:include page="registerinst.jsp"/>
     <%       
}
else
{
String str="insert into institute values('"+iid+"','"+iname+"','"+iadd+"','"+iphno+"','"+idesc+"','"+iyoe+"','"+ipwd+"','"+icno+"')"; 
//String str1="insert into login values('"+name+"','"+pword+"')";
int rows=stmt.executeUpdate(str);
//stmt.execute(str1);
if(rows>0)
{
out.println("Successfully registered<br>");
session.setAttribute("iname",iname);

%>
<jsp:forward page="registerinst.jsp"/>
<%

}
else
{
    %>
    <jsp:forward page="addinstitute.html"/>
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

 

