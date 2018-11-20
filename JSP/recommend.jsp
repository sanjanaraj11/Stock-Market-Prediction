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
a:link {
	color: #000000;
}
a:visited {
	color: #000000;
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
      		ArrayList a1=new ArrayList();
      		
     		 
            
            String query1="select uname FROM user order by uname asc"; 
            Statement st1=connection.createStatement();
            ResultSet rs1=st1.executeQuery(query1);
           
 	   while ( rs1.next() )
 	   {
 			a1.add(rs1.getString("uname"));
 		
 	   }
      		
        
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
<form action="recommend1.jsp" method="post" name="form1">
  <div align="center" class="style1">  
    <p class="style10">Recommend to User</p>
    <p>&nbsp;</p>
    <table width="465" border="0">
      <tr>
        <td width="245"><span class="style9">Company  ID </span></td>
        <td width="210"><label>
          <input required type="text" name="t1" value="<%=i%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td><span class="style9">Comapny Name </span></td>
        <td><label>
          <input required type="text" name="t2" value="<%=s3%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td><span class="style9">Select the User to Recommend </span></td>
        <td><label>
          <select name="t3">
          <option>--Select--</option>
        <% for(int l=0;l<a1.size();l++)
        	  {
        	  %>
           <option><%= a1.get(l)%></option>
           
           <%}%>
          </select>
        </label></td>
      </tr>
      <tr>
        <td><span class="style9">Details</span></td>
        <td><textarea name="t4"></textarea></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><label>
          <input type="submit" name="Submit" value="Recommend">
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