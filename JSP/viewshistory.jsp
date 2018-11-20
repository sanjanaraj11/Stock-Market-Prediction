<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {color: #0000FF}
.style2 {font-size: 18px}
.style3 {
	color: #FF6600;
	font-weight: bold;
	font-size: 24px;
}
body,td,th {
	color: #000000;
}
body {
	background-color: #999999;
}
.style4 {color: #000000; font-weight: bold; font-size: 24px; }
.style5 {color: #000000}
-->
</style>

<body >




<p align="center" class="style4">ALL USERS SEARCH HISTORY </p>
<p align="center" class="style3"><img src="Browsing History.png" width="300" height="127"></p>
<p>
  <%
 

	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;

      	try 
	{
      		
      		
           
           String query="select * from search  "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		
		s2=rs.getString(1);
		s3=rs.getString(2);
		s4=rs.getString(3);
		s5=rs.getString(4);
	
		
		
		
%>
  
</p>
<table width="669" border="0" align="center">
  <tr>
    <td width="179"><div align="left" class="style2 style5"><strong>User Name</strong></div></td>
    <td width="480"><%=s2%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Field Searched </strong></div></td>
    <td><%=s3%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Keyword Used </strong></div></td>
    <td><%=s4%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style1 style2"><strong>Date & Time</strong></div></td>
    <td><%=s5%></td>
  </tr>
</table>


<p>&nbsp;</p>
<div align="center">
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
</div>
</body>
</html>