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
<div align="center" class="style1 style7">Update Comapany  Details</div>
<p align="center">&nbsp;</p>


<%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
        
           String query="select * from posts "; 
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
    <td width="179"><div align="left" class="style6">Company Nmae </div></td>
    <td width="480"><%=s2%></td>
  </tr>
  <tr>
    <td><div align="left" class="style6">Sector</div></td>
    <td><%=s3%></td>
  </tr>
  <tr>
    <td><div align="left" class="style6">Company Details </div></td>
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
    <td><div align="center">
      <input required name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
    </div></td>
  </tr>
  <tr>
    <td><div align="left" class="style6">Update</div></td>
    <td><a href="updateconfirmation.jsp?mid=<%=i%>"> Update &nbsp;</a></td>
  </tr>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">

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
</p>
<p>&nbsp;</p>
</body>
</html>