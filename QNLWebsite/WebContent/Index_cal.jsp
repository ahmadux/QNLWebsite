<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Qatar National Library - Home Page</title>

<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro'	rel='stylesheet' type='text/css'>

 
<customTags:linkCSS alsoInclude="fontawesome, bootstrap, datepicker" />


<customTags:script alsoInclude="jqueryui, bootstrap"/>

</head>
<body class="en">
	<div class="fullpage">
		<customTags:header />
		<div id="childrenCalendar"></div>		
	</div>	
	<customTags:footer />
</body>
<script>
$(function() {
    $( "#childrenCalendar" ).datepicker({numberOfMonths: 2});
  });
</script>
</html>