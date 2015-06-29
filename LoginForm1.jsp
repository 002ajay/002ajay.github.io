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
  String xx= (String) request.getParameter("lgx");
	
  if (xx.equalsIgnoreCase("Logout")) {
  	
  	session.removeAttribute("xuser");
  	if (session != null) {
  		session.invalidate();
  	}
  	

  	RequestDispatcher rd = request.getRequestDispatcher("Login1.jsp");
  	rd.forward(request, response);

  	}
  else {
  	
  	RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
  	rd.forward(request, response);
  }
  
  %>  
 		
     
</body>
</html>