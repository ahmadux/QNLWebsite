<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="alsoInclude" required="false" type="String"%>

<% if(alsoInclude.toLowerCase().contains("fontawesome")) {%>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" />
<%} %>

<link rel="stylesheet" href="css/customNavbars.css" />
<link rel="stylesheet" href="css/qnl2.css" />

<% if(alsoInclude.toLowerCase().contains("weather")) {%>
<link rel="stylesheet" href="css/weather.css" />
<%} %>