<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@attribute name="alsoInclude" type="String" required="false" %>

<% if(alsoInclude.toLowerCase().contains("bootstrap")) {%>
<link rel="stylesheet" href="${BaseServerPath}/css/bootstrap.min.css" />
<%} %>

<link rel="stylesheet" href="${BaseServerPath}/css/qnl2.css" />
<link rel="stylesheet" href="${BaseServerPath}/css/customNavbars.css" />

<% if(alsoInclude.toLowerCase().contains("fontawesome")) {%>
<link	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" />
<%} %>
<% if(alsoInclude.toLowerCase().contains("weather")) {%>
<link rel="stylesheet" href="${BaseServerPath}/css/weather.css" />
<%} %>
