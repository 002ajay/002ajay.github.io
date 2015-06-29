<html>
  <head>
    <meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252"></meta>
    <title>untitled1</title>
  </head>
  <body>
  <form name="uploadForm" action="File.jsp" enctype="multipart/form-data" method="post">
  <input type="file" name="file"/>
  <input TYPE=Button name='Upload' Value='Upload' onClick="uploadForm.Upload.value='Uploading...';document.uploadForm.action='File.jsp';document.uploadForm.submit()">
</form>
  </body>
</html>