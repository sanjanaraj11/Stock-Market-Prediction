<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {font-size: 18px}
.style2 {color: #0000FF}
.style3 {
	font-size: 24px;
	font-weight: bold;
	color: #FF6600;
}
body,td,th {
	color: #000000;
}
body {
	background-color: #999999;
}
.style4 {font-size: 24px; font-weight: bold; color: #000000; }
.style5 {color: #000000}
-->
</style>

<body >



<p align="center" class="style4">LIST OF ALL USERS </p>
<p align="center" class="style3"><img src="Users.jpg" width="265" height="118"></p>
<p>
  <%
 
      	
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;

      	try 
	{
           
           String query="select * from user"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
		s9=rs.getString(9);
		s10=rs.getString(10);
	
		
		
		
%>
</p>
<table width="669" border="0" align="center">
  <tr>
    <td width="179"><div align="left" class="style1 style5"><strong>UID</strong></div></td>
    <td width="480"><%=s1%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>User Name </strong></div></td>
    <td><%=s2%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>E-Mail </strong></div></td>
    <td><%=s4%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Mobile</strong></div></td>
    <td><%=s5%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Location</strong></div></td>
    <td><%=s6%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>DOB</strong></div></td>
    <td><%=s7%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Address</strong></div></td>
    <td><%=s8%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Gender</strong></div></td>
    <td><%=s9%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Pincode</strong></div></td>
    <td><%=s10%></td>
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
  
  
  </form>
</strong></div>
</body>
</html>