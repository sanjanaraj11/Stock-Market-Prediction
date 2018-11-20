<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>

<html><style type="text/css">
<!--
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
<body>
<%
     
	     	String cname=request.getParameter("cname");
            String pass=request.getParameter("pass");
            String email=request.getParameter("T3");
            String mobile=request.getParameter("T4");
            String loca=request.getParameter("T5");
            String dob=request.getParameter("T6");
            String add=request.getParameter("T8");
            String gen=request.getParameter("select5");
            String pin=request.getParameter("T9");
            
           
           
            

String ccat="Student";

               

		
		try
		{
	
	if(cname.isEmpty() )
	{
out.print("PLEASE ENTER USER NAME");
		
		%><p><a href="registeruser.jsp">Back</a></p>

</body>
</html>

	<%
	}
	if( pass.isEmpty() )
	{
out.print("PLEASE ENTER PASSWORDS");
		
		%><p><a href="registeruser.jsp">Back</a></p>

</body>
</html>

	<%
	}
	if( email.isEmpty()  )
	{
out.print("PLEASE ENTER EMAIL");
		
		%><p><a href="registeruser.jsp">Back</a></p>

</body>
</html>

	<%
	}
	if( mobile.isEmpty()  )
	{
out.print("PLEASE ENTER MOBILE");
		
		%><p><a href="registeruser.jsp">Back</a></p>

</body>
</html>

	<%
	}
	if( loca.isEmpty()  )
	{
out.print("PLEASE ENTER LOCATION");
		
		%><p><a href="registeruser.jsp">Back</a></p>

</body>
</html>

	<%
	}
	if(  dob.isEmpty() )
	{
out.print("PLEASE ENTER DOB");
		
		%><p><a href="registeruser.jsp">Back</a></p>

</body>
</html>

	<%
	}
	if(  add.isEmpty()  )
	{
out.print("PLEASE ENTER ADDRESS");
		
		%><p><a href="registeruser.jsp">Back</a></p>

</body>
</html>

	<%
	}
	if( pin.isEmpty() )
	{
out.print("PLEASE ENTER PINCODE");
		
		%><p><a href="registeruser.jsp">Back</a></p>

</body>
</html>

	<%
	}
	else
	{
 Statement st=connection.createStatement();

st.executeUpdate("insert into  user (uname,password,email,mobile,location,dob,address,gender,pincode,sk) values ('"+cname+"','"+pass+"','"+email+"','"+mobile+"','"+loca+"','"+dob+"','"+add+"','"+gen+"','"+pin+"','Rejected')");





		out.print("USER REGISTERED SUCCESSFULLY");
		
		%><p><a href="index.html">Back</a></p>

</body>
</html>

	<% 	}
		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
