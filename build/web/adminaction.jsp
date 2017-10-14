
<%@page import="java.sql.*,com.mygo.connection.*"%>
<%!
Connection con;
PreparedStatement pst,ps;
ResultSet rs,rs1;
String gname,gpassword,atype;
int contact,i=0;
%>
<%
 
gname=request.getParameter("gname");
gpassword=request.getParameter("gpassword");
atype=request.getParameter("aid");
System.out.println(gname+","+gpassword+","+atype);

con=Dbcon.getConnection();

if(atype.equals("Admin"))
{
  if(gname.equals("admin") && gpassword.equals("admin"))
  {
  %>
     <jsp:forward page="adminpage.jsp"/>
  <%
  }
   else
        {
         out.println("<center>INVALID USER NAME OR PASSWORD</center>");
         %>
           <jsp:include page="admin.jsp"/>
         <%
        }      
}


else if(atype.equals("Student"))
 {
     
    if((con=Dbcon.getConnection())!=null)
    {    
        
pst=con.prepareStatement("select * from register1 where gname=? and gpassword=?");
pst.setString(1,gname);
pst.setString(2,gpassword);
rs=pst.executeQuery();
        if(rs.next())
                {
            session.setAttribute("gname", gname);
                %>
                <jsp:forward page="userpage.jsp"/>
                <%
                }
                 else
        {
        out.println("Enter valid Authentication Type");
        %>
        <jsp:include page="admin.jsp"/> 
        <%
        }      
    }
 }


else if(atype.equals("Institute"))
 {
    if((con=Dbcon.getConnection())!=null)
    {    
        pst=con.prepareStatement("select * from institute where iid=? and iname=? ");
        pst.setString(1,gname);
        pst.setString(2,gpassword);
        rs=pst.executeQuery();
        
        if(rs.next())
       {
            System.out.println("institute login1");
           session.setAttribute("iname",gpassword);
                %>
                <jsp:forward page="institute.jsp"/>
                <%
        }
        else
        {
         out.println("<center>User Name and Password are Mismatched</center>");
         %>
           <jsp:include page="admin.jsp"/>
         <%
        }      
    }
 }
  else
  {
      out.println("<center>INVALID USER NAME OR PASSWORD</center>");
   %>
   <jsp:include page="admin.jsp"/>
   <%
  }    
%>






      
