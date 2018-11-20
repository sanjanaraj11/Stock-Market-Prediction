<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
body,td,th {
	color: #000000;
}
body {
	background-color: #999999;
}
.style3 {font-weight: bold; font-family: "Times New Roman", Times, serif; font-size: 24px; color: #000000;}
-->
</style>

<body >

<p>&nbsp;</p>
<p align="center" class="style3"> MY PERSONAL DETAILS</p>
<p align="center" class="style1"><img src="Personal.png" width="193" height="192"></p>
<table width="993" border=0 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
 <td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0"><div align="center"><b>UID</b></div></td>
  <td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0"><div align="center"><b>Username</b></div></td>
  
  <td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0"><div align="center"><b>E-Mail</b></div></td>
   <td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0"><div align="center"><b>Mobile</b></div></td>
   <td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0"><div align="center"><b>Location</b></div></td>
   <td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0"><div align="center"><b>DOB</b></div></td>
  
   <td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0"><div align="center"><b>Address</b></div></td>
   <td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0"><div align="center"><b>Gender</b></div></td>
   <td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0"><div align="center"><b>Pincode</b></div></td>
  

  </tr>





<%
 String uname=(String)application.getAttribute("uname");
      	
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;

      	try 
	{
           
           String query="select * from user where uname='"+uname+"'"; 
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

<tr>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s1);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
	
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s4);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s5);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s6);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s7);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s8);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s9);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="180" valign="baseline" height="0"><%out.println(s10);%>&nbsp;</td>
	
    
</tr>


<%

	   }

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

<tr>
	<td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#999999" width="180" valign="baseline" height="0">&nbsp;</td>
	
   
</tr>


</table>
</form>
</body>
</html>