
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
  <%
       if(rs1.next())
        {
        %>
        <tr>
           <%=rs1.getString(1)%>
           <%=rs1.getString(2)%>
           <%=rs1.getString(3)%>
           <%=rs1.getString(4)%>
           <%=rs1.getString(5)%>
          
        </tr>
        <%
        }
        %>