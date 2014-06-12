<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="alsoInclude" required="false" type="String"%>

<script src="http://code.jquery.com/jquery-1.10.1.js"></script>

<% if(alsoInclude.toLowerCase().contains("bootstrap")) {%>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="scripts/bootstrap.min.js"></script>
<%} %>

<% if(alsoInclude.toLowerCase().contains("slidr")) {%>
<script src="scripts/slidr.js"></script>
<%} %>


<% if(alsoInclude.toLowerCase().contains("googlemaps")) {%>
<script type="text/javascript"	src="http://js.addthisevent.com/atemay.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCYVOugOA98uoJHx9YpG83ui_dga5K4nAo&sensor=false&extension=.js"></script>
<%}%>

<% if(alsoInclude.toLowerCase().contains("addthisevent")) {%>
<script type="text/javascript"	src="http://js.addthisevent.com/atemay.js"></script>
<%}%>