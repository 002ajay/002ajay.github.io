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
int img_id =Integer.parseInt(request.getParameter("imgidx"));
Connection conz =null;
ResultSet rsz = null;
PreparedStatement pstmtz = null;
OutputStream oImage;
String query="Select * from admin1 where sid=?";
try {
	Class.forName("com.mysql.jdbc.Driver");
	conz=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
pstmtz = conz.prepareStatement(query);
pstmtz.setInt(1, img_id);
rsz = pstmtz.executeQuery();
    if(rsz.next()) {
        byte barray[] = rsz.getBytes(8);
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
    if(conz!=null)
       conz.close();
    }catch(Exception ex){
       // ex.printStackTrace();
    }
}
%>
</body>
</html>