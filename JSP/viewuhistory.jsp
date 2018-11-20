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
.style4 {
	font-family: "Times New Roman", Times, serif;
	color: #000000;
}
body,td,th {
	color: #000000;
}
body {
	background-color: #999999;
}
.style5 {color: #000000}
-->
</style>

<body >




<p align="center" class="style3 style4">BROWSING HISTORY </p>
<p>
  <%
 
String uname=(String)application.getAttribute("uname");
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;

      	try 
	{
      		
      		
           
           String query="select * from search where uname='"+uname+"' "; 
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
    <td width="179"><div align="left" class="style1 style5"><strong>User Name</strong></div></td>
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
out.println("*************************************************************************");
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