<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style1 {
	color: #0000FF;
	font-weight: bold;
	font-size: 18px;
}
.style2 {color: #2A0000; font-weight: bold; }
.style3 {
	font-size: 18px;
	color: #000000;
}
.style4 {color: #000000}
body,td,th {
	color: #000000;
}
body {
	background-color: #999999;
}
a:link {
	color: #000000;
}
-->
</style>
</head>
<body>
<%
	
      	
	

      	try 
	{
      		
		
		
%>




<br>
<br>








<%
	
	String one= request.getParameter("t1");	
		String two= request.getParameter("t2");	

		String uname=(String)application.getAttribute("uname");

		SimpleDateFormat sdfDate = new SimpleDateFormat(
				"dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat(
				"HH:mm:ss");

		Date now = new Date();

		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;

		Statement st3 = connection.createStatement();
		   String query3 ="insert into search values('"+uname+"','"+one+"','"+two+"','"+dt+"')";
		   st3.executeUpdate (query3); 
      		
      
            
             
            	  String q2="select * from posts where keyword LIKE '%"+two+"%' and tname LIKE '%"+one+"%' "; 
                  Statement st8=connection.createStatement();
                  ResultSet rs8=st8.executeQuery(q2);
       	 while ( rs8.next() )
       	   {
       	
       		 int i=rs8.getInt(1);
       	String	s1=rs8.getString(2);
       	String	s2=rs8.getString(3);
    	String	s3=rs8.getString(5);
    	
    	
               
       	%>

       	
       	
       	<table width="669" border="0" align="center">
  <tr>
    <td width="179"><div align="left" class="style5 style2 style3"><strong>Sector</strong></div></td>
    <td width="480"><%=s2%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2 style4"><strong>View Details </strong></div></td>
    <td><a href="viewdetails.jsp?id=<%=i%>"> View Details &nbsp;</a></td>
  </tr>
</table>


       	<p>&nbsp;</p>
       	<div align="center"><strong>
   	    <%
       	
       	out.println("------------------------------------------------------------------------------------------------------------");
             }
       	  
             
         
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
                </strong></div>
</body>
</html>

