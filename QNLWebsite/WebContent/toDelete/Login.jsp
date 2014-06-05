<%@ page language="java" contentType="text/html; UTF-8"    pageEncoding="UTF-8" import="com.qnl.facade.*,com.qnl.core.*"%>

<%
	UserFacade uF = new UserFacade();
	User u = uF.findByID(11);
	session.setAttribute("loggedInUser",u);
	
%>
User Logged in.