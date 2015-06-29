<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
     <%@ page import= "java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Admission Details</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="nav/css/styles.css">
</head>
<body>
<table width="1330" border="0" align="center">

<!--Header-->
<tr>
<td colspan="2" height="100">
</td>
</tr>
<!-- Ad rotator-->

<tr height="400">
	<td colspan="2"> 
		</td>
</tr>

<!--menu-->
<tr height="50">
	<td colspan="2">
	</td>
</tr>
<!-- Content Area -->
<tr height="100">
	<td>
	<br>
	<br>
	
<%

	Connection conn9=null;
	PreparedStatement ps9=null;
	ResultSet rs9=null;
	OutputStream oImage;
	String query9="Select * From admin1";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn9=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
		ps9=conn9.prepareStatement(query9);
		rs9=ps9.executeQuery();
		%>
		<table class="table table-striped" border="1">
		<tr style=border-bottom-style:solid;>
		<th>Reference Number</th>
		<th>Student Admission Number</th>
		<th>Student Photo</th>
		</tr>
		
		<% while(rs9.next())
		{%>
		<tr style="border-bottom-style:solid;">
		<td><%=rs9.getInt(1)%></td>
		<td><%=rs9.getString(2)%></td>
		<td><input type="image" src="imageDisplayx.jsp?imgid=<%=rs9.getInt(1)%>" width="140" height="170"></td>
	
		</tr>
	
		<%}%>
</table>
	<% }catch(Exception e)
	{
		out.println(e);
		
	}%>
</td>
</tr>
<!-- Footer -->
<tr height="50">
<td colspan="2"><p class="footer">Copyright by Deep Chandra Sati 2015-2016</p></td>
</tr>
</table>
</body>

</html>