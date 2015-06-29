<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
 <%@ page import="java.io.*" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
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
      <link href="CSS/Style.css" rel="stylesheet">

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
  .JT {
  height: 340px;
  }
  .VV {
  padding-left: 150px;
  }
  .lead  {
  padding-left: 20px;
  }
  
  .XZ {
  position:relative;
  right:100px;
  top:-50px;
  margin-left: 185px;

  }
    .Nm h3 {
  color: #F43059;
  
  }
  .Nm h4 {
  color: #F43059;
  
  }
  .CXC {
  position:relative;
  top: -60px;
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
  .FM {
  position: relative;
  top:-40px;
  }
.NM {
  top:-45px;
  position: relative;
  left:45px;
  }

  .NM {
  top:-45px;
  position: relative;
  left:45px;
  }
    .NM1 {
  top:-35px;
  position: relative;
  left:55px;
   text-decoration: none;
  }
  .NM1{
  font-size: 18px;
  color: #000;
  text-decoration: none;
  font-family: Lato;
  }
  .NM1:hover{
  font-size: 18px;
  color: #000;
  text-decoration: none;
  font-family: Lato;
  }
  .DP {
  width: 210px;
  text-decoration: none;
  height:8px;
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
					
					 <li> <a href="Home2.jsp">Home</a></li>
					<li > <a href="Course.jsp">Course</a></li>
						 <%
						 session=request.getSession();
                   		String ssx1=(String) session.getAttribute("xuser1");
                   		String ssx2=(String) session.getAttribute("xuser2");
                   		String ssx3=(String) session.getAttribute("xadmin");
						if(ssx1==null && ssx2==null&& ssx3==null){
                     %>
                    
                     <li> <a href="Owner1.jsp">Owner</a></li>
                       <li> <a href="Login1.jsp">Login</a></li>
					<%}%>
					
					<%
					if(ssx1==null && ssx3!=null && ssx2==null){%>
						
									<%
				Connection conn9xix=null;
				PreparedStatement ps9xix=null;
				ResultSet rs9xix=null;
				OutputStream oImagexix;
				
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn9xix=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
		String query9xix="Select * From admin1";
		ps9xix=conn9xix.prepareStatement(query9xix);
		rs9xix=ps9xix.executeQuery();
	
		%>
	
		<% if(rs9xix.next())
		{%>
		<% int g=rs9xix.getInt(9);
		
		%>
		<tr style="border-bottom-style:solid;">
		<td>
		<a href="Owner1.jsp"><input type="image" src="imgx.jsp?imgid=<%=g%>" class="fadeInDown animated img-circle" width="45" height="45"></a>
		
		<li class="NM"></li></td>
		</tr>
					<li class="dropdown ">
						<a href="Owner1.jsp" data-toggle="dropdown" class="dropdown-toggle"><%=ssx3 %> <span class="caret"></span></a>
						<ul class="dropdown-menu ">
						<tr style="border-bottom-style:solid;"><td>
						<a href="Owner1.jsp"><input type="image" src="imgx.jsp?imgid=<%=g%>" class="fadeInDown animated img-circle" width="45" height="45"></a>
						<div class="DP">
						<li class="NM1"> <a href="Owner1.jsp"><%=ssx3%></a> </li></div>
						<li class="divider"></li>
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
						<li><a href="Forgot1.jsp">Setting</a></li>
						<li class="divider"></li>
						<li><a href="Msg2.jsp">Message <span class="badge"> <%=count %> </span></a></li>
						<li class="divider">
						<li> <a href="Logout.jsp">Logout</a> </li>
						<%conn9xix.close();%>
						<%}%>
						<% }catch(Exception e)
						{
						out.println(e);
						}%><%} %>
					
		
					<%
					if(ssx1==null && ssx3==null && ssx2!=null){%>
					<%
					Connection conn9xx=null;
					PreparedStatement ps9xx=null;
					ResultSet rs9xx=null;
					OutputStream oImagexx;
				
					try
					{
						Class.forName("com.mysql.jdbc.Driver");
						conn9xx=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
						String query9xx="Select * From admin1";
						ps9xx=conn9xx.prepareStatement(query9xx);
						rs9xx=ps9xx.executeQuery();
						%>
						<% if(rs9xx.next())
						{%>
						<% int g=rs9xx.getInt(9);
						%>
						<tr style="border-bottom-style:solid;"><td>
						<a href="Owner.jsp"><input type="image" src="imgx.jsp?imgid=<%=g+2%>" class="fadeInDown animated img-circle" width="45" height="45"></a>
						<li class="NM"></li></td>
						</tr>
						<li class="dropdown ">
						<a href="Owner.jsp" data-toggle="dropdown" class="dropdown-toggle"><%=ssx2 %> <span class="caret"></span></a>
						<ul class="dropdown-menu ">
						<tr style="border-bottom-style:solid;"><td>
						<a href="Owner.jsp"><input type="image" src="imgx.jsp?imgid=<%=g+2%>" class="fadeInDown animated img-circle" width="45" height="45"></a>
						<div class="DP">
						<li class="NM1"> <a href="Owner.jsp"><%=ssx2 %></a> </li></div>
						<li class="divider"></li>
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
						<li><a href="Forgot1.jsp">Setting</a></li>
						<li class="divider"></li>
						<li><a href="Msg2.jsp">Message <span class="badge"> <%=count %> </span></a></li>
						<li class="divider">
					
						<li> <a href="Lout.jsp">Logout</a> </li>
						
						<%conn9xx.close();%>
		

		<%}%>

	<% }catch(Exception e)
	{
		out.println(e);
		
	}%><%} %>
						
						
									<%if(ssx1!=null && ssx3==null && ssx2==null){%>
						
									<%
				Connection conn9xxx=null;
				PreparedStatement ps9xxx=null;
				ResultSet rs9xxx=null;
				OutputStream oImagexxx;
				
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn9xxx=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
		String query9xxx="Select * From admin1";
		ps9xxx=conn9xxx.prepareStatement(query9xxx);
		rs9xxx=ps9xxx.executeQuery();
	
		%>
	
		<% if(rs9xxx.next())
		{%>
		<% int g=rs9xxx.getInt(9);
		
		%>
		<tr style="border-bottom-style:solid;">
		<td>
		<a href="Owner2.jsp"><input type="image" src="imgxx.jsp?imgid=<%=g+1%>" class="fadeInDown animated img-circle" width="45" height="45"></a>
		
		<li class="NM"></li></td>
		</tr>
	
 			
		
					<li class="dropdown ">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle"><%=ssx1 %> <span class="caret"></span></a>
						<ul class="dropdown-menu ">
							<tr style="border-bottom-style:solid;">
		<td>
		
		<a href="Owner1.jsp"><input type="image" src="imgxx.jsp?imgid=<%=g+1%>" class="fadeInDown animated img-circle" width="45" height="45"></a>
		
						<div class="DP">
						<li class="NM1"> <a href="Owner1.jsp"><%=ssx1 %></a> </li></div>
						<li class="divider"></li>
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
						<li><a href="Forgot1.jsp">Setting</a></li>
						<li class="divider"></li>
						<li><a href="Msg2.jsp">Message <span class="badge"> <%=count %> </span></a></li>
						<li class="divider">
					
						<li> <a href="Lout.jsp">Logout</a> </li>
							<%conn9xxx.close();%>
		

		<%}%>

	<% }catch(Exception e)
	{
		out.println(e);
		
	}%><%} %>
				
					</ul>
	          </div> 
	      </div>
	  </div>
<br/><br/><br/>
<nav>
	<ul class="pager XZ">  <li class="next"><a href="Home2.jsp"><span >&rarr;</span> Home</a></li>
  </ul>
</nav><br/><br/>
<div class="container CXC">
<div class="row">
<div class="col-lg-1">
</div>
<%
try {
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance ();
conn = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/mystore", "root", "root");
ResultSet rs = null;
Statement st = null;
st = conn.createStatement();
rs=st.executeQuery("select * from stud2 where sid='"+1300115+"'");

//ps.setString(1, id);
while (rs.next()){ %>
	<div class="XXXX">
      <div class="container">
        <div class="row">
          <div class="col-lg-10 FM">
          <div class="panel panel-default ">
            <div class="panel-heading ">
              <h4>Owner Profile</h4>

              
              </div><br/>
                <div class="panel-heading PII">
              <h4>Personal Information</h4>
            
              </div>
              <div class="panel-body">
            <div class="form-inline In">  <div class="well">
              <div class="form-group">
               <div class="row">
               <div class="col-lg-4"> 


		<table class="table table-striped" border="1">
		<tr style=border-bottom-style:solid;>
	 <label class="lead">
	 <div class="Nm"><h3><%=rs.getString("fname") %>
	 </h3></div></label>
		<tr style="border-bottom-style:solid;">
		
		<td><input type="image" src="imageDisplay1.jsp?imgid=<%=rs.getInt(1)%>" class="fadeInDown animated" width="205" height="200"></td>
	
		</tr>
</table>
                
              </div>
         <div class="col-lg-3">
         </div>
              <div class="col-lg-5">
            <div class="form-group Nm"><br/><br/>
              <label for="MyNm" class="fadeInLeft animated"> Name:</label>
               <label class="lead fadeInRight animated"><%=rs.getString("fname") %></label>
               </div><br/>
		
            <div class="form-group Nm">
              <label for="MyNm" class="fadeInLeft animated"> Session:</label>
             <label class="lead fadeInRight animated"><%=rs.getString("session") %></label>
            </div> <br/>
		
            <div class="form-group Nm">
              <label for="MyNm" class="fadeInLeft animated">Admission Date:</label>
               <label class="lead fadeInRight animated"><%=rs.getString("exam") %></label></div> <br/>
            <div class="form-group Nm">
              <label for="MyNm" class="fadeInLeft animated"> Email ID: </label>
               <label class="lead fadeInRight animated"><%=rs.getString("email") %></label> </div> 

            <div class="form-group Nm">
              <label for="MyNm" class="fadeInLeft animated">Gender:</label>
               <label class="lead fadeInRight animated"><%=rs.getString("gender") %></label> </div> 
            <div class="form-group Nm">
          </div>
			</div></div></div></div>
			
          <div class="panel panel-default">
          
                <div class="panel-heading PII">
              <h4>Contact Information</h4>
              
              </div></div>
              <div class="panel-body">
            <div class="form-inline In">  <div class="well">
              <div class="form-group">
                  

           
               <div class="row">
               <div class="col-lg-6">
                <div class="form-group Nm">
              <label for="MyNm"> Father Name</label>
               <label class="lead"><%=rs.getString("ffname") %></label>
               </div><br/>
            <div class="form-group Nm">
              <label for="MyNm"> Nation:</label>
               <label class="lead"><%=rs.getString("nation") %></label>
               </div><br/>
		
            <div class="form-group Nm">
              <label for="MyNm"> religion:</label>
             <label class="lead"><%=rs.getString("religion") %></label>
            </div> <br/>
		
            <div class="form-group Nm">
              <label for="MyNm">Father Occuption:</label>
               <label class="lead"><%=rs.getString("foccu") %></label></div> 
           </div> 
            <div class="col-lg-3">
            </div>
            <div class="col-lg-6">
            <div class="form-group Nm">
              <label for="MyNm"> Phone: </label>
               <label class="lead"><%=rs.getString("fone") %></label>
				</div>
            <div class="form-group Nm">
              <label for="MyNm">Address:</label>
               <label class="lead"><%=rs.getString("address") %></label> </div> 
           </div>
			</div>
			
			</div></div></div></div>
			</div></div></div></div></div></div></div></div></div></div>
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
			</div>
				
<%
}
conn.close();
}catch(Exception e) { out.println(e); }
%>                 
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
