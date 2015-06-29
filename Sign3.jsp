<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.io.InputStream"  %>
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

    <title>Update</title>

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

		String nm=request.getParameter("nm3");
		String nm5=request.getParameter("nm5");
		String nm6=request.getParameter("nm6");
		String nm7=request.getParameter("nm7");
		String nm8=request.getParameter("nm8");
		String nm9=request.getParameter("nm9");
		String nm10=request.getParameter("nm10");
		String nm11=request.getParameter("nm11");
		String nm12=request.getParameter("nm12");
		String nm13=request.getParameter("nm13");
		String nm15=request.getParameter("nm15");
		String nm16=request.getParameter("nm16");
		String nm17=request.getParameter("nm17");
		String nm18=request.getParameter("nm18");
		String nm19=request.getParameter("nm19");
		String nm20=request.getParameter("nm23");
		String nm21=request.getParameter("nm24");
		int x=Integer.parseInt(nm21);
		
		
		
try 
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
	st="update profile set maritalstatus=?,mail=?,streeet=?,localaddress=?,pin=?,city=?,state=?,qualification=?,experience=?,languageknown=?,dateofjoining=?,dateofleaving=?,researcharea=?,specialization=?,post=?,profileid=? where profileid='"+x+"'";
	ps=con.prepareStatement(st);
		
		ps.setString(1,nm);
		ps.setString(2,nm5);
		ps.setString(3, nm6);
		ps.setString(4, nm7);
		ps.setString(5, nm8);
		ps.setString(6, nm9);
		ps.setString(7,nm10);
		ps.setString(8,nm11);
		ps.setString(9,nm12);
		ps.setString(10,nm13);
		ps.setString(11, nm15);
		ps.setString(12, nm16);
		ps.setString(13, nm18);
		ps.setString(14, nm19);
		ps.setString(15, nm20);
		ps.setInt(16, x);
		
	int i=ps.executeUpdate();
	if(i>0) {
		out.println("<body><style> .L h2 { font-family:Lato; font-size:1.9em;	padding-top: 15px;height:50px;width: 280px;background: #000;font-family: Lato;display: block;color: #fff;line-height: 21px;margin: 7px;padding-left: 20px;border-radius: 4px;background: rgba(0,0,0,0.5);position:relative; margin-left: 480px;top:-660px; } </style> <div class=L> <h2>Profile Upadated!</h2></div>");
		request.getRequestDispatcher("ManageFaculty.jsp").include(request, response);
	} else {
		out.println("Fill all Fields");
		request.getRequestDispatcher("UpdateFac.jsp").include(request, response);
		
	}
	con.close();
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