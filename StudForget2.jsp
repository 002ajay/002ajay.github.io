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
String px1=request.getParameter("pass1");
String px2=request.getParameter("pass2");
String px3=request.getParameter("pass3");
String px4="";


try{
		Class.forName("com.mysql.jdbc.Driver");
		con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
		st1="select * from user where pass='"+px1+"'";
		ps1=con1.prepareStatement(st1);
		ResultSet rs1=ps1.executeQuery();
		if(rs1.next()) {
			px4=rs1.getString("pass");
		}
		if(px2.equals(px3)){
			if(px4.equals(px1)){
			String str1="update user set pass=?";
			ps1=con1.prepareStatement(str1);
			ps1.setString(1, px2);
			int i=ps1.executeUpdate();
			if(i>0){
				RequestDispatcher rd= request.getRequestDispatcher("Changed.jsp");
				rd.forward(request, response);
		}
		else {
				out.println("<html> <body> <h1>  Invalid User </h1> </body> </html>");
				RequestDispatcher rd= request.getRequestDispatcher("Login1.jsp");
				rd.include(request, response);
			}
			}
		}
}catch(Exception e) {System.out.println(e); }
%>




</body>
</html>