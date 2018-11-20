<%@ page import="java.sql.*" %>
<%@ page import = "java.text.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
	color: #000000;
}
body {
	background-color: #999999;
}
.style9 {font-weight: bold; color: #000000; font-size: 24px;}
a:link {
	color: #000000;
}
.style12 {font-weight: bold; color: #000000; }
.style13 {
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<p align="center" class="style9">Update  Confirmation  </p>
<form id="form1" name="form1" method="post" action="updateconfirmed.jsp">
  <div align="center">
    <table width="411" height="458" border="0">
      <tr>
	  
	<%  
	   int mid=0,age=0,pin=0;
String aname=null,pname=null,dt=null,ti=null,topic=null,lat=null,lon=null,add=null,gen=null;

	String d1, d2;
	

	int mid1=Integer.parseInt(request.getParameter("mid"));

	  try {
           

           String query="select * from posts  where id="+mid1+""; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	

	   if(rs.next()==true)
		{
 mid=rs.getInt(1);
 aname=rs.getString(2);
pname=rs.getString(3);
dt=rs.getString(4);
ti=rs.getString(5);
topic=rs.getString(6);

lon=rs.getString(8);

		}
   

	String pid1=String.valueOf(mid);  
	  %>
	  
	 <td width="220" height="60"><span class="style12">Id </span></td>
        <td width="144"><label>
          <input type="text" name="s1"  value="<%=pid1%>" readonly>
		  
        </label></td>
<%
}
catch(Exception ex){out.println(ex);}
%>
      </tr>
	  
	  
      <tr>
        <td><span class="style12">Company Nmae </span></td>
        <td><label>
          <input type="text" name="s2" value="<%=aname%>" />
        </label></td>
      </tr>
      
      <tr>
        <td><span class="style13">Sector</span></td>
        <td><label>
          <input type="text" name="s3" value="<%=pname%>" />
        </label></td>
      </tr>
      <tr>
        <td><p class="style12">Company Details</p></td>
        <td><label>
          <input type="text" name="s4"  value="<%=dt%>"/>
        </label></td>
      </tr>
      <tr>
        <td><p class="style12">Location</p>        </td>
        <td><label>
          <input type="text" name="s5" value="<%=ti%>" />
        </label></td>
      </tr>
      <tr>
        <td><span class="style12">Address</span></td>
        <td><label>
          <input type="text" name="s6"  value="<%=topic%>"/>
        </label></td>
      </tr>
      
      
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Update" />
        <input type="reset" name="Submit2" value="Reset" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>
