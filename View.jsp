<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Users</title>
</head>
<%Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
String str="select * from stud2";
PreparedStatement ps=con.prepareStatement(str);
ResultSet rst = ps.executeQuery();
int i=0;
%>
<body>



<h1>Will be deleting an Existing User</h1>
<h4> List of Users</h4>
<form name=myname method=post
action="deleteSuccess.jsp">
<table border="1">
<tr><td>Select</td>
<td>EmployeeID</td><td>FirstName</td><td>LastName</td><td>RoleID</td>
</tr>
<%
while(rst.next()){ %>
<tr>
<td><input type="checkbox" name="check<%=i%>"
value=<%=rst.getString(1)%>></td>
<td><%=rst.getString(1)%></td><td><%=rst.getString(2)%></td><td><%=rst.getString(3)%></td><td><%=rst.getString(4)%></td>
</tr>
<%}%>
</table>
<input type="submit" value="Delete"></form>
</body>
</html>