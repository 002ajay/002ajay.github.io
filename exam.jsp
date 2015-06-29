
<%@ page language="java" import="jsp.cms.quiz.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quiz</title>
 <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpg");
}
.BB {
	margin-left: 32px;
}
</style>

</head><br/>
<body>
<div style="position:absolute;left:50px;top:20px">
<ul class="nav nav-pills nav-stacked BB">
<%
  int currentQuestion=((Exam)request.getSession().getAttribute("currentExam")).getCurrentQuestion();
 // System.out.println("Question Number "+currentQuestion+ " retrieved ");
 %>
 <li role="presentation" class="active"><a href="#">
Current Question ${sessionScope.quest.questionNumber+1} / 10</a></li></ul>
</div><br/>

<div class="container">


  <div class="well">
<span>${sessionScope.quest.question}</span><br/><br/>
<form action="exam" method="post" >
 <c:forEach var="choice" items="${sessionScope.quest.questionOptions}" varStatus="counter">
 <input type="radio" name="answer" value="${counter.count}" >${choice}  <br/>
 </c:forEach> 
 
 <%
   if(currentQuestion > 0)
   {
 %>
 
 
 <button type="submit"class="btn btn-info pull-right fadeInRight animated" name="action" value="Previous"> Previous</button>
 <%} %>
 
 <%
   if(currentQuestion < 9)
   {
 %>
 <button type="submit"class="btn btn-info pull-right  bounce animated" name="action" value="Next"> Next</button> 
 <%} %>
  <button type="submit"class="btn btn-primary btn-xsm pull-right fadeInLeft animated" name="action" value="Finish Exam"> Finish Exam</button> <br/>
 <br/>

 </form>
</div>
</div></div>
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
