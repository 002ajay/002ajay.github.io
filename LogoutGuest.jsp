<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
  	
  		
  <%
  String action = (String) request.getParameter("lg");
	
  if (action.equalsIgnoreCase("Logout")) {
  	
  	session.removeAttribute("xguest");
  	if (session != null) {
  		session.invalidate();
  	}
  	
  	out.println("<body><style> .L h2 { font-family:Lato; font-size:1.2em;	padding-top: 5px;height: 20px;width: 300px;background: #000;font-family: Lato;display: block;color: #fff;line-height: 11px;margin: 7px;padding-left: 20px;border-radius: 4px;background: rgba(0,0,0,0.5);position:relative; margin-left: 756px;top:-308px; } </style> <div class=L> <h2>Sorry...! Logged Out!</h2></div>");
	RequestDispatcher rd = request.getRequestDispatcher("Login1.jsp");
  	rd.forward(request, response);

  	}
  else {
  	
  	RequestDispatcher rd = request.getRequestDispatcher("Data.jsp");
  	rd.forward(request, response);
  }
  
  %>

 		
     
</body>
</html>