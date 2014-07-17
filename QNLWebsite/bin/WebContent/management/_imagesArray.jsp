<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
${LibImageFacade.loadImages(param.f)}
<% int i = 0; %>
{
<c:forEach items="${LibImageFacade.getLibImages()}" var="img">
	<% if(i++ >0){%>,<%}%>	
	"${img.imageName}": {"height": ${img.imageHeight}, "width": ${img.imageWidth}, "location": "${img.imageLocation}" }	
</c:forEach>
}