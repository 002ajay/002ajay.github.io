<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.*" %>
    <%@ page import= "java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int img_id =Integer.parseInt(request.getParameter("imgid"));
Connection con =null;
ResultSet rs = null;
PreparedStatement pstmt = null;
OutputStream oImage;
String query="Select * from stud2 where sid=?";
try {
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
pstmt = con.prepareStatement(query);
pstmt.setInt(1, img_id);
rs = pstmt.executeQuery();
    if(rs.next()) {
        byte barray[] = rs.getBytes(19);
        response.setContentType("image/gif");
        oImage=response.getOutputStream();
        oImage.write(barray);
        oImage.flush();
        oImage.close();
      }
}
catch(Exception ex){
    //ex.printStackTrace();
}finally {
    try{
    if(con!=null)
       con.close();
    }catch(Exception ex){
       // ex.printStackTrace();
    }
}
%>
</body>
</html>