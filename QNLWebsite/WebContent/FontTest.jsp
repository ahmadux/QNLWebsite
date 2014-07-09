<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Asynchronous file Upload in Java Web Application</title>
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="scripts/ajaxUpload.js"></script>
<script language="Javascript">
	$(document).ready(function(){
	  $('input[type="file"]').ajaxfileupload({
	       'action': 'fileUpload.do',           
	   'onComplete': function(response) {        
	         $('#upload').hide();
	         alert("File SAVED!!");
	       },
	       'onStart': function() {
	         $('#upload').show();
	       }
	  });
	});
</script>
</head>
<body>
	<form>
		<div>                                
		 <input type="file" name="datafile" />  
		 <div id="upload" style="display:none;">Uploading..</div>
		</div>
	</form>
</body>
</html>