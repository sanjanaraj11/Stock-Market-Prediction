<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
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
</style></head>
<body>
<%

ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("Gallery/");
		String paramname=null;
		String file=null;
		String a=null,b=null,c=null,d=null,ee=null,fg=null,image=null;
	
		FileInputStream fs=null;
 
		File file1 = null;
			
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				if(paramname.equalsIgnoreCase("s1"))
				{
					a=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("t1"))
				{
					b=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("t2"))
				{
					c=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("t3"))
				{
					d=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("t4"))
				{
					ee=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("userImage"))
				{
					image=multi.getParameter(paramname);
				}
				
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			
			image = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("Gallery\\"+image);
			file1 = new File(fPath);
			fs = new FileInputStream(file1);
			list.add(fs);
			
			
						
		
			
			
			
			
			
			
		}		
	}
	
	        FileInputStream fs1 = null;
            //name=dirName+"\\Gallery\\"+image;
			int lyke=0;
			//String as="0";
			
 
 PreparedStatement ps=connection.prepareStatement("insert into posts(keyword,tname,tdesc,city,address,imagess,count) values(?,?,?,?,?,?,?)");
				ps.setString(1,a);
               	ps.setString(2,b);
				ps.setString(3,c);	
       			ps.setString(4,d);
       			ps.setString(5,ee);
       			ps.setBinaryStream(6, (InputStream)fs, (int)(file1.length()));
				ps.setInt(7,lyke);
				
				
				
       if(f == 0)
			ps.setObject(6,null);
		else if(f ==7)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(6,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
			
			
		
			out.println("Posts Added Successfully......");
			  %><p><a href="addpost.jsp">Back</a></p>

			  </body>
			  </html>
			  <%
			
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>

