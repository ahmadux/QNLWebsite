<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.qnl.facade.FacebookFacade"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Facebook Tests</title>
</head>
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script>
/*
 * 
 function doFacebook()
{
	alert("start");
	$.ajax({
		type : "POST",
		url : "FacebookHandler.do",
		data : $("#facebookForm").serialize(),
		dataType : "text",
		async : false,
		success :function(retStr, status)
		{
			$("#response").text(retStr);
		}
	});
	alert("end");
}
*/
</script>
<body>
	<div id="response"></div>
	<div>
		<form id="facebookForm" name="facebookForm" method="post" action="ExternalServices.do">
			<input type="text" value="Test Message Caption" id="caption" name="caption" /><br />
			<input type="text" value="The Message" id="msg" name="msg" /><br />
			<input type="text" value="http://ides.winnefox.org/sites/ides.winnefox.org/files/resize/QuozioQuote-400x261.jpg" id="imgURL" name="imgURL" /><br />
			<input type="text" value="http://ides.winnefox.org/taxonomy/term/5" id="link" name="link" /><br />
			<input type="text" value="http://www.youtube.com/watch?v=lyRiSg0y2bE" id="videoURL" name="videoURL" /><br />			
			<br />
			<input type="text" value="22/01/2014" id="startTime" name="startTime" /><br />
			<input type="text" value="24/01/2014" id="endTime" name="endTime" /><br />
			<br />
			<br />
			<!-- <select id="op" name="op">
				<option value="post">POST</option>
				<option value="link">LINK</option>
				<option value="image">IMAGE</option>
				<option value="video">VIDEO</option>
				<option value="event">EVENT</option>
			</select>--> 
			<input type="text" id="op" name="op" value="post" />
			<input type="submit" value="Submit" />
		</form>
		
	</div>
</body>
</html>