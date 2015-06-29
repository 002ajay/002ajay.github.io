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
String username=request.getParameter("xmail");
String password=request.getParameter("xpass");
Connection conn=null;
PreparedStatement ps=null;
ResultSet rs=null;
String query="Select * from admin1 where mail=? and pass=?";
try
{
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost/mystore","root","root");
	ps=conn.prepareStatement(query);
	ps.setString(1, username);
	ps.setString(2, password);
	rs=ps.executeQuery();
	if(rs.next())
	{
		String access_type=rs.getString(9);
		HttpSession login=request.getSession(true);
		if(access_type.equals("1")) {
			session.setAttribute("xadmin",rs.getString(2));
			session.setAttribute("xmail",rs.getString(9));
			session.setAttribute("xad",rs.getString(3));
		}
		if(access_type.equals("2")) {
			session.setAttribute("xuser1",rs.getString(2));
			session.setAttribute("xuser",rs.getString(9));
			session.setAttribute("xu1",rs.getString(3));
		}
		if(access_type.equals("3")) {
			session.setAttribute("xuser2",rs.getString(2));
		session.setAttribute("xguest",rs.getString(9));
		session.setAttribute("xu2",rs.getString(3));
		}
		RequestDispatcher rd= request.getRequestDispatcher("Data1.jsp");
		rd.include(request,response);
	}
	else
	{
		session.setAttribute("Error", "Invalid Password");
		out.println("<body><style> .L h2 { font-family:Lato; font-size:1.2em;	padding-top: 5px;height: 20px;width: 360px;background: #000;font-family: Lato;display: block;color: #fff;line-height: 11px;margin: 7px;padding-left: 20px;border-radius: 4px;background: rgba(0,0,0,0.5);position:relative; margin-left: 756px;top:-308px; } </style> <div class=L> <h2>Sorry...! Invalid User ID and Password!</h2></div>");
		RequestDispatcher rd= request.getRequestDispatcher("Login1.jsp");
		rd.include(request, response);
		
			
	}
	conn.close();	
}
catch(Exception e)
{
	out.println(e);
}

%>




</body>
</html>