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
	font-size: 24px;
	font-weight: bold;
	color: #FF3300;
}
body,td,th {
	color: #000000;
}
body {
	background-color: #999999;
}
.style9 {font-size: 18px; color: #000000; }
.style10 {color: #000000}
-->
</style>
</head>
<body>

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

<form action="review1.jsp" method="post" name="form1">
  <div align="center" class="style1">  
    <p class="style10">Review the Topic </p>
    <p>&nbsp;</p>
    <table width="465" border="0">
       <tr>
        <td width="245"><span class="style9">Company ID </span></td>
        <td width="210"><label>
          <input required type="text" name="t1" value="<%=i%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td><span class="style9">Sector</span></td>
        <td><label>
          <input required type="text" name="t2" value="<%=s3%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td><span class="style9">Company Name </span></td>
        <td><label>
        <input required type="text" name="t3" value="<%=s2%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td><span class="style9">Review</span></td>
        <td><textarea name="t4"></textarea></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><label>
          <input type="submit" name="Submit" value="Review">
        </label></td>
      </tr>
    </table>
    <p>&nbsp;    </p>
  </div>
</form>
</body>
 <%

	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</html>