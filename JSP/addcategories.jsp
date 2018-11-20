<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style3 {font-size: 18px; font-weight: bold; color: #000000; }
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
.style5 {font-size: 24px; font-weight: bold; color: #000000; }
-->
</style>
</head>
<body>
<form name="form1" method="post" action="addcategories1.jsp">
  <p align="center" class="style5"> Add Company	</p>
  <p align="center" class="style4"><img src="AddCategory.jpg" width="235" height="140"></p>
  <table width="619" border="0" align="center">
    <tr>
      <td width="268"><span class="style3">Enter the Company Name:- </span></td>
      <td width="341"><label>
        <input required type="text" name="t1">
      </label></td>
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
</body>
</html>