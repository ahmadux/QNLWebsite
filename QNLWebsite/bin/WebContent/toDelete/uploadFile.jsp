<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Upload Files</title>



</head>
<body>
<form id="uploadForm" method="post" action="FileUploadController.do" enctype="multipart/form-data" >
	<input type="text" name="text" id="text" value="SomeText" />
	<input type="file" name="fileNAme" id="fileName" />
	<input type="submit" value="Upload" />
</form>
</body>



</html>