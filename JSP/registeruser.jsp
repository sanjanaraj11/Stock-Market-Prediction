
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Welcome Registration Page</title>
<style type="text/css">
<!--
body {
	background-color: #666666;
}
.style8 {	color: #000000;
	font-weight: bold;
}
.style7 {
	font-size: 24px;
	color: #efeeee;
}
.style9 {color: #0000FF}
.style10 {
	font-size: 24px;
	color: #000000;
	font-weight: bold;
}
-->
</style></head>


<body>


<div align="center">
  <p class="style8">&nbsp; <u><font size="5">New User Registration Details</font><font size="5"></font></u></p>
</div>
<form  name="form1" method="post"  action="customerregster.jsp" >
  <div align="center">
    <table width="431" height="610" border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" bgcolor="#666666" style="border-collapse: collapse">
      <tr>
        <td height="23" colspan="2" bgcolor="#666666"><div align="center"><img src="SignUp.jpg" width="500" height="153"></div></td>
      </tr>
      <tr>
        <td width="157" height="23" bgcolor="#666666"><div align="left" class="style8"> User Name </div></td>
        <td width="173" height="23" bgcolor="#666666"><label>
          <div align="left">
            <input required type="text" id="cname" name="cname" size="20" />
            </label>
        </div></td>
      </tr>
      <tr>
        <td height="23" bgcolor="#666666"><div align="left" class="style8">Password</div></td>
        <td height="23" bgcolor="#666666"><label>
          <div align="left">
            <input required type="password" id="pass" name="pass" size="20" />
            </label>
        </div></td>
      </tr>
      
      <tr>
        <td height="36" bgcolor="#666666"><div align="left" class="style8">E-Mail</div></td>
        <td height="36" bgcolor="#666666"><div align="left">
          <div align="left">
            <input  type="text"  title="E-MAIL Cannot Be Blank" id="T3" name="T3" size="20">
          </div>
        </div></td>
      </tr>
      <tr>
        <td height="31" bgcolor="#666666"><div align="left" class="style8">Mobile NO(10 Digits)</div></td>
        <td height="31" bgcolor="#666666"><div align="left">
          <input  type="text" pattern=[0-9]{10} title="Please Enter 10 Digit Mobile No." id="T4" name="T4" size="20">
        </div></td>
      </tr>
      <tr>
        <td height="33" bgcolor="#666666"><div align="left" class="style8">Location</div></td>
        <td height="33" bgcolor="#666666"><div align="left"><span class="style9"></span>
          <label></label>
          <input  type="text"  id="T5" name="T5" size="20">
        </div></td>
      </tr>
      <tr>
        <td height="33" bgcolor="#666666"><div align="left" class="style8">DOB(mm/dd/yyyy)</div></td>
        <td height="33" bgcolor="#666666"><div align="left"><span class="style9"></span>
          <input  type="date" id="T6" name="T6" size="20">
        </div></td>
      </tr>
      
      <tr>
       <td height="45" bgcolor="#666666"><div align="left" class="style8">Address</div></td>
        <td height="45" bgcolor="#666666"><div align="left"><span class="style9"></span>
            <textarea   id="T8" name="T8" cols="20"></textarea>
        </div></td>
      </tr>
      <tr>
       <td height="38" bgcolor="#666666"><div align="left" class="style8">Gender</div></td>
        <td height="38" bgcolor="#666666"><div align="left"><span class="style9"></span>
          <select id="select5" name="select5">
           
           <option>Male</option>
		    <option>Fe-Male</option>
          </select>
        </div></td>
      </tr>
	  <tr>
       <td height="39" bgcolor="#666666"><div align="left" class="style8">Pin Code</div></td>
        <td height="39" bgcolor="#666666"><div align="left"><span class="style9"></span>
          <input  type="text"  id="T9" name="T9" size="20">
        </div></td>
      </tr>
      <tr bgcolor="#57614e">
        <td height="26" colspan="2" bgcolor="#666666"><span class="style9"><strong>
          <div align="center"><strong>
            <input type="submit" name="Submit" value="Register" />
            <input type="reset" name="Submit2" value="Reset" />
            </strong>          </div>
          <div align="center" class="style9">
            <p align="center"><a href="index.html" class="style10">Home</a></p>
          </div>
        <p align="center" class="style9"><a href="index.html" class="style7"></a></p></td>
      </tr>
    </table>
  </div>
  </form>

</body>
</html>