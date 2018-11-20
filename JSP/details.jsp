<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style1 {
	color: #FF3300;
	font-weight: bold;
	font-size: 24px;
}
body,td,th {
	color: #000000;
}
body {
	background-color: #999999;
}
a:link {
	color: #000000;
}
.style6 {font-size: 18px; font-weight: bold; color: #000000; }
.style7 {color: #000000}
-->
</style>
</head>
<body>
<div align="center" class="style1 style7">Query Details</div>
<p>&nbsp;</p>


<%

int one= Integer.parseInt(request.getParameter("id"));	  	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
      		
      		
        
           String query="select * from posts where id ="+one+" "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		j=rs.getInt(8);
		
		
	
		   %>

<table width="669" border="0" align="center">
  <tr>
    <td width="179"><div align="left" class="style6">Company Name </div></td>
    <td width="480"><%=s2%></td>
  </tr>
  <tr>
    <td><div align="left" class="style6">Sector</div></td>
    <td><%=s3%></td>
  </tr>
  <tr>
    <td><div align="left" class="style6">Company Details</div></td>
    <td><%=s4%></td>
  </tr>
  <tr>
    <td><div align="left" class="style6">Location</div></td>
    <td><%=s5%></td>
  </tr>
  <tr>
    <td><div align="left" class="style6">Address</div></td>
    <td><%=s6%></td>
  </tr>
  <tr>
    <td><div align="left" class="style6">Logo</div></td>
    <td>
      <div align="left">
        <input required  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
      </div></td></tr>
  <tr>
    <td><div align="left" class="style6">Ratings</div></td>
    <td><% 
    if(j==3)
    {
    	%>
    	<input required  name="image" type="image" src="Gallery/1.png" width="30" height="30" >
    	<%
    }
    if(j>3 && j<=6)
    {
    	%>
    	<input required  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
    	<%
    }
    if(j>6 && j<=9)
    {
    	%>
    	<input required name="image" type="image" src="Gallery/3.png" width="100" height="30" >
    	<%
    }
    if(j>9 && j<=12)
    {
    	%>
    	<input required name="image" type="image" src="Gallery/4.png" width="120" height="30" >
    	<%
    }
    if(j>12 && j<=15)
    {
    	%>
    	<input required name="image" type="image" src="Gallery/5.png" width="140" height="30" >
    	<%
    }
    if(j>15 && j<=30)
    {
    	%>
    	<input required  name="image" type="image" src="Gallery/6.png" width="170" height="30" >
    	<%
    }
    %></td>
  </tr>
  <tr>
    <td><div align="left" class="style6">Recommend to Friend</div></td>
    <td><div align="left"><a href="recommend.jsp?id=<%=i%>"><strong>Recommend&nbsp;</strong></a></div></td>
  </tr>
  <tr>
    <td><div align="left" class="style6">Review Company </div></td>
    <td><div align="left"><a href="review.jsp?id=<%=i%>"><strong>Review&nbsp;</strong></a></div></td>
  </tr>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">

  <%

	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</p>
<p>&nbsp;</p>
</body>
</html>