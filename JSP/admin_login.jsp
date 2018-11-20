<style type="text/css">
<!--
body,td,th {
	color: #000000;
}
body {
	background-color: #999999;
}
-->
</style><%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%
    
        String username=request.getParameter("adminid");      

        String Password=request.getParameter("pass");
        


	    
try
{
	   String sql="SELECT * FROM admin where username='"+username+"' and password='"+Password+"'";
        Statement stmt = connection.createStatement();
	    ResultSet rs =stmt.executeQuery(sql);
		String utype="";
	   if(rs.next())
	    {
	    response.sendRedirect("AdminMenu.htm");
           }
	    else
	    {
	    response.sendRedirect("wronglogin.html");
          }
}

catch(Exception e)
{out.print(e);}
%>

