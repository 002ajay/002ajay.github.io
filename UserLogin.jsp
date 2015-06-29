<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

<%
Connection con1=null;
PreparedStatement ps1=null;
String st1=null;
String fn=null;
String xuser=request.getParameter("xmail");
String xpass=request.getParameter("xpass");
String mail=null;

try{
		Class.forName("com.mysql.jdbc.Driver");
		con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
		st1="select * from user where mail =? and pass=?";
		ps1=con1.prepareStatement(st1);
		ps1.setString(1, xuser);
		ps1.setString(2, xpass);
	
		ResultSet rs1=ps1.executeQuery();
		if(rs1.next()) 
		{
			
			session.setAttribute("xuser",xuser);
			RequestDispatcher rd= request.getRequestDispatcher("Course.jsp");
			rd.forward(request, response);
			
			
		}
		else {	
				session.setAttribute("Error", "Invalid Password");
				out.println("<body><style> .L h2 { font-family:Lato; font-size:1.2em;	padding-top: 5px;height: 20px;width: 300px;background: #000;font-family: Lato;display: block;color: #fff;line-height: 11px;margin: 7px;padding-left: 20px;border-radius: 4px;background: rgba(0,0,0,0.5);position:relative; margin-left: 80px;top:-337px; } </style> <div class=L> <h2>Sorry...! Invalid User ID and Password!</h2></div>");
				RequestDispatcher rd= request.getRequestDispatcher("UserLogin1.jsp");
				rd.include(request, response);
		}
}catch(Exception e) {System.out.println(e); }
%>




</body>
</html>