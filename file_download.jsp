<%@ page import="java.io.*,java.util.*,java.sql.*" %> 
<%
int id=0;
if(request.getParameter("id")!=null && request.getParameter("id")!="")
{
  id = Integer.parseInt(request.getParameter("id").toString());
}
	 String connectionURL = "jdbc:mysql://localhost/mystore";
	  String url=request.getParameter("WEB_URL");
	  String Content=new String("");
	  Statement stmt=null;
      Connection con=null;
try
{
	String filename="data"+id+".pdf || .doc";
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
      con=DriverManager.getConnection(connectionURL,"root","root");      
      stmt=con.createStatement();
	  String qry = "select * from files where id="+id;
	  ResultSet rst= stmt.executeQuery(qry);
			if(rst.next())
			{
				
				Content=rst.getString("file");
			}
			out.println(Content);
		byte requestBytes[] = Content.getBytes();
		ByteArrayInputStream bis = new ByteArrayInputStream(requestBytes);
		response.reset();
		response.setContentType("mystore/text");
		response.setHeader("Content-disposition","attachment; filename=" +filename);
		byte[] buf = new byte[1024];
		  int len;
		  while ((len = bis.read(buf)) > 0){
				  response.getOutputStream().write(buf, 0, len);
				 }
		bis.close();
		response.getOutputStream().flush();  
}
catch(Exception e){
	e.printStackTrace();
}
%>