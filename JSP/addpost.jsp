<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>


    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style4 {
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
.style5 {
	font-size: 24px;
	font-weight: bold;
	color: #000000;
	font-family: "Times New Roman", Times, serif;
}
.style7 {font-size: 18px; font-weight: bold; color: #000000; }
-->
</style>
</head>
<script language="javascript" type="text/javascript">

function valid()
{

if(document.s.s1.selectedIndex==0)
{
alert("Select the Keyword");
return false;
}



var na3=document.s.t1.value;
if(na3=="")

{
alert("please Enter Title name");
document.s.t1.focus();
return false;
}

var na5=document.s.t2.value;
if(na5=="")

{
alert("please Enter Title Description");
document.s.t2.focus();
return false;
}

var na6=document.s.t3.value;
if(na6=="")

{
alert("please Enter City");
document.s.t3.focus();
return false;
}

var na7=document.s.t4.value;
if(na7=="")

{
alert("please Enter Address");
document.s.t4.focus();
return false;
}

var na4=document.s.image.value;
if(na4=="")

{
alert("please choose image");
document.s.image.focus();
return false;
}

}

</script>

<body>

<%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select cname FROM category"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("cname"));
		
	   }
	   
		
		
%>

<form name="s" method="post" enctype="multipart/form-data" action="addpost1.jsp"  onSubmit="return valid()">
  <p align="center" class="style5">Add Company Details </p>
  <p align="center" class="style4">&nbsp;</p>
  <table width="619" border="0" align="center">
    <tr>
      <td width="268"><span class="style7">Select the Company </span></td>
      <td width="341"><label>
        <select id="s1" name="s1">
         <option>--Select--</option>
        <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
           <option><%= a1.get(i)%></option>
           
           <%}%>
        </select>
      </label></td>
    </tr>
    <tr>
      <td><strong class="style7">Sector</strong></td>
      <td><label>
        <input required type="text" id="t1" name="t1">
      </label></td>
    </tr>
    <tr>
      <td><span class="style7">Company Details </span></td>
      <td><label>
        <textarea name="t2" id="t2"></textarea>
      </label></td>
    </tr>
    <tr>
      <td><span class="style7">Location </span></td>
      <td><label>
        <input required type="text" id="t3" name="t3">
      </label></td>
    </tr>
   
    <tr>
      <td><span class="style7">Address </span></td>
      <td><textarea name="t4" id="t4"></textarea></td>
    </tr>
    <tr>
      <td><span class="style7">Logo</span></td>
      <td><input required type="file" id="userImage" name="image" style="width:100%"  ></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><label>
        <div align="right">
          <input type="submit" name="Submit" value="Submit">
        </div>
      </label></td>
      <td><label>
        <div align="left">
          <input type="reset" name="Submit2" value="Reset">
        </div>
      </label></td>
    </tr>
  </table>
</form>
<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

</body>
</html>