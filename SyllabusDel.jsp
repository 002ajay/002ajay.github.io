<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 	 <%
try{
	    	    Class.forName("com.mysql.jdbc.Driver");
   		    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
				String n=request.getParameter("name");
				String str="delete from files where id='"+n+"'";
			    PreparedStatement ps=con.prepareStatement(str);
			    int i=ps.executeUpdate();
			    if(i>0) {
			    System.out.println("Deleted");
				RequestDispatcher rd=request.getRequestDispatcher("Syllabus1.jsp");
				rd.forward(request,response);
			    } else {
			    	System.out.println("Record Not Deleted");
			    }
			     con.close();
	    	}              catch(Exception e) {
    System.out.println(e); 
}
		




%>
</body>
</html>