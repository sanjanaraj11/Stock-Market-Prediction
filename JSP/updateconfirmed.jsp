<%@ page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<html><style type="text/css">
<!--
body {
	background-color: #999999;
}
body,td,th {
	color: #000000;
}
a:link {
	color: #000000;
}
-->
</style>
<body>
<center>&nbsp;</center>
<br><br><br>
  <%
  		   int mid = Integer.parseInt(request.getParameter("s1"));
		   String aname = request.getParameter("s2");
           String pname = request.getParameter("s3");
           String dt = request.getParameter("s4");
           String ti = request.getParameter("s5");
           String topic = request.getParameter("s6");
         
          
  
  
   try {
     
       Statement st1 = connection.createStatement();
      
	
		

       String query1 ="UPDATE posts SET  keyword = '" + aname + "' WHERE id=" + mid;
	   st1.executeUpdate (query1);
	   String query2 ="UPDATE posts SET tname = '" + pname + "' WHERE  id=" + mid;
	   st1.executeUpdate (query2);
	   String query3 ="UPDATE posts SET tdesc = '" + dt + "' WHERE id=" + mid;
	   st1.executeUpdate (query3);
	   String query4 ="UPDATE posts SET city = '" + ti + "' WHERE id=" + mid;
	   st1.executeUpdate (query4);
	   String query5 ="UPDATE posts SET address = '" + topic + "' WHERE id=" + mid;
	   st1.executeUpdate (query5);
	   
	   
           
	   connection.close();




	       
          
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());

          }
		  
		  out.println("Updated");
		  %><p><a href="update.jsp">Back</a></p>

		  </body>
		  </html>

		  	<%
		  
		  
%>



</body></html>