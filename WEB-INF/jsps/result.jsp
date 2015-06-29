<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/stylesxx.css">
    <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpg");
}
.lead{
	padding-left: 80px;
}
.LX img{

	height: 130px;
	width: 130px;
}
.CXX {

	position:relative;
	right:195px;
}
.VVV {
	position: relative;
	left:130px;
}
</style>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
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

<link rel="stylesheet" href="CSS/animate.css">
<script src="js/wow.min.js"> </script>
<script> new WOW().init();</script>
</head>
<body>
<div style="position:absolute;left:500px;top:70px">
<div class="container CXX">
<div class="row">
<div class="col-lg-7">
<div class="well">
<h3 align="center">Quiz Result</h3>

<table class="table table-hover fadeInDown animated">
        <tr class="danger">
            <td class="head warning lead">
                Quiz :
            </td>
            <td class=" lead">
                <span id="lblSubject" class="lead ">${sessionScope.exam}</span></td>
        </tr>
        <tr class="danger">
            <td class="head warning lead">
                Starting Time :
            </td>
            <td >
                <span id="lblStime" class="lead">${sessionScope.started}</span></td>
        </tr>
        
              
                <tr class="danger">
            <td class="head warning lead">
               No. of Questions :
            </td>
            <td>
                <span id="lblNquestions" class="lead">10</span></td>
        </tr>
                <tr class="danger">
            <td class="head warning lead">
                No. of correct answers :
            </td>
            <td class="warning">
                <span id="lblNcans " class="lead">${requestScope.result}</span></td>
        </tr>
     </table>
</div>
<c:if test="${requestScope.result >= 5}">
 						 <%
						 session=request.getSession();
                   		String ss=(String) session.getAttribute("xadmin");
						if(ss!=null){
                     %>
   <h3 align="center" class="LX">
    <nav>
  <ul class="pager fadeInDown animated">
  <h2><li class="flash animated">
  <strong> Congo..!</strong> <a href="#"><%=ss %></a>
   <strong>Passed.</strong> !</li></h2>
    </ul>
    </nav>
   <img src="images/appy.png" class="bounce animated"><br/>
 
   </h3> <%} %>
    					<%
						 session=request.getSession();
                   		String ss11=(String) session.getAttribute("xuser1");
						if(ss11!=null){
                     %>
   
     <h3 align="center" class="LX">
    <nav>
  <ul class="pager fadeInDown animated">
  
  	 					
                     
    <h2><li class="flash animated"><a href="#">
 <strong>Congo ..!</strong> <a href="#"><%=ss11 %></a>
   <strong>Passed</strong> !</a></li></h2>
    </ul>
    </nav>
   <img src="images/appy.png" class="bounce animated"><br/>
 
   </h3> <%} %>
  
  <%
						 session=request.getSession();
                   		String ssx=(String) session.getAttribute("xuser2");
						if(ssx!=null){
                     %>
   
     <h3 align="center" class="LX">
    <nav>
  <ul class="pager fadeInDown animated">
  
  	 					
                     
    <h2><li class="flash animated"><a href="#">
 <strong>Congo ..!</strong> <a href="#"><%=ssx %></a>
   <strong>Passed</strong> !</a></li></h2>
    </ul>
    </nav>
   <img src="images/appy.png" class="bounce animated"><br/>
 
   </h3> <%} %>
  
</c:if>


<c:if test="${requestScope.result < 5}">
 
  						 <%
						 session=request.getSession();
                   		String ss=(String) session.getAttribute("xadmin");
						if(ss!=null){
                     %>
   <h3 align="center" class="LX">
    <nav>
  <ul class="pager fadeInDown animated">
  
  	 					
                     
    <h2><li class="flash animated">
   <mark> Sorry ..!</mark><a href="#"><%=ss %></a>
   <mark>Failed !Try Again!</mark></a></li></h2>
    </ul>
    </nav>
   <img src="images/sad.png" class="bounce animated"><br/>
 
   </h3> <%} %>
    					<%
						 session=request.getSession();
                   		String ss11=(String) session.getAttribute("xuser1");
						if(ss11!=null){
                     %>
   
     <h3 align="center" class="LX">
    <nav>
  <ul class="pager fadeInDown animated">
  
  	 					
                     
    <h2><li class="flash animated">
    <mark> Sorry ..!</mark><a href="#"><%=ss11 %></a>
   <mark>Failed ! Try Again!</mark></a></li></h2>
    </ul>
    </nav>
   <img src="images/sad.png" class="bounce animated"><br/>
 
   </h3> <%} %>
   
    					<%
						 session=request.getSession();
                   		String ssx=(String) session.getAttribute("xuser2");
						if(ssx!=null){
                     %>
   
     <h3 align="center" class="LX">
    <nav>
  <ul class="pager fadeInDown animated">
  
  	 					
                     
    <h2><li class="flash animated">
    <mark> Sorry ..!</mark><a href="#"><%=ssx %></a>
   <mark>Failed ! Try Again!</mark></a></li></h2>
    </ul>
    </nav>
   <img src="images/sad.png" class="bounce animated"><br/>
 
   </h3> <%} %>
</c:if>

<div class="row">
<div class="col-lg-6">
<ul class="nav nav-pills nav-stacked VVV">
<li role="presentation" class="active lead fadeInDown animated"><a href="home.jsp">Take Another Exam</a></li>
</ul></div></div>
</div></div></div>
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
