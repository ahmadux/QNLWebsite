<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<title>Login</title>
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="../scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<script src="../scripts/jquery.validate.min.js"></script>
</head>
<body>
<br />
<br />
<form id="loginForm" name="loginForm" action="../Login.do" method="POST">
<div class="img-rounded span3 offset3" style="border:solid 1px #cccccc;padding-left: 8px;padding-right: 8px;padding-bottom:5px">
	<h4>Login Form</h4>
	<input type="text" id="forwardURL" name="forwardURL" value="${requestScope.forwardURL}" >
	<div class="control-group">
		<div class="pull-left span3">
			<label>User Name</label>
		</div>
		<div class="pull-left span3">
			<input type="text" id="_userName" name="_userName" maxlength="15" placeholder="User Name" />
		</div>		
	</div>
	<div class="control-group">
		<div class="pull-left span3">
			<label>Password</label>
		</div>
		<div class="pull-left span3">
			<input type="text" id="_password" maxlength="15"  name="_password" placeholder="Password" />
		</div>		
	</div>
	<div class="control-group">
		<div style="text-align:right">
			<input type="submit" value="Login" class="btn btn-primary">
		</div>
	</div>
	<div class="control-group">
		<font color="red">${param.msg}</font>
	</div>
</div>
</form>
</body>
</html>