<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Asynchronous file Upload in Java Web Application</title>
<link rel="stylesheet" href="css/qnl2.css" />
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="scripts/ajaxUpload.js"></script>
<script>
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
	<div class="ar">
		مكتبة قطر الوطنية
	</div>
	
	<div class="ar_Medium">
		بسم الله الرحمن الرحيم
	</div>
	
	<div class="ar_Bold">
		بسم الله الرحمن الرحيم
	</div>
	
	
</body>
</html>