<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="alsoInclude" required="false" type="String"%>
<% if(alsoInclude.toLowerCase().contains("fontawesome")) {%><link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" /><%} %>
<link rel="stylesheet" href="http://localhost:8080/LocalQNLWebsite/css/customNavbars.css" />
<link rel="stylesheet" href="http://localhost:8080/LocalQNLWebsite/css/qnl2.css" />
<% if(alsoInclude.toLowerCase().contains("weather")) {%><link rel="stylesheet" href="http://localhost:8080/LocalQNLWebsite/css/weather.css" /><%} %>

<% if(alsoInclude.toLowerCase().contains("datepicker")) {%>
<link rel="stylesheet" href="css/datepicker.css" />
<%} %>


<% if(alsoInclude.toLowerCase().contains("bootstrap")) {%>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<%} %>


<% if(alsoInclude.toLowerCase().contains("jqueryui")) {%>
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css" />
<%}%>