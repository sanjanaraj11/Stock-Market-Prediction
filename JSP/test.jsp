<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style3 {color: #0000FF; font-weight: bold; font-size: 18px; }
body,td,th {
	color: #000000;
}
body {
	background-color: #999999;
}
a:link {
	color: #000000;
}
-->
</style>

<body >
<form name="form1" method="post" action="test.jsp">
  <table width="377" border="0">
    
    <tr>
      <td><span class="style7">Enter the Company name </span></td>
      <td><label>
       <input required name="image" type="image" src="Gallery/6.png" width="170" height="30" >
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label>
        <input type="submit" name="Submit" value="Search">
      </label></td>
    </tr>
  </table>
  <br>
  <br>
  <br>
</form>
</body>
</html>



<table width="1092" border="1">
  <tr>
    <td width="179"><div align="center"><span class="style3">RELATED IMAGE </span></div></td>
    <td width="175"><div align="center"><span class="style3">URL </span></div></td>
    <td width="134"><div align="center"><span class="style3">DOMAIN</span></div></td>
    <td width="98"><div align="center"><span class="style3">TITLE</span></div></td>
    <td width="173"><div align="center"><span class="style3">DESCRIPTION</span></div></td>
    <td width="219"><div align="center"><span class="style3">USES</span></div></td>
    <td width="68"><div align="center"><span class="style3">RANKS </span></div></td>
  </tr>

<%



String keyword= request.getParameter("s2");	
      	
	//String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	//int i=0,j=0;

      	try 
	{
        
      		if(keyword.equalsIgnoreCase(""))
    		{
      			
    		}
      		else
      		{
      		
      			 Statement stmt=connection.createStatement();
 			    String strQuery = "select * from images where url LIKE '%"+keyword+"%' ORDER BY Rand() ";
 			    ResultSet rs = stmt.executeQuery(strQuery);
 			    while(rs.next()){
 			    	
 			    	int i=rs.getInt(1);
 					String s2=rs.getString(2);
 					String s3=rs.getString(3);
 					String s4=rs.getString(4);
 					String s5=rs.getString(5);
 					String s6=rs.getString(6);
 					String s7=rs.getString(10);
 					int j=rs.getInt(8);
%>


  <tr>
    <td><div align="center">
      <input  name="image" type="image" src="Gallery/<%=s7%>" width="100" height="100" >
    </div></td>
    <td><div align="center"><%=s2%></div></td>
    <td><div align="center"><%=s3%></div></td>
    <td><div align="center"><%=s4%></div></td>
    <td><div align="center"><%=s5%></div></td>
    <td><div align="center"><%=s6%></div></td>
    <td><div align="center"><%=j%></div></td>
  </tr>

<%

	   }
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>


</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
