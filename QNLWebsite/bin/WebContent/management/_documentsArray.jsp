<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
${LibDocumentFacade.loadDocuments(param.f)}
<% int i = 0; 
   String s = "."; 
%>
{
<c:forEach items="${LibDocumentFacade.getLibDocuments()}" var="doc">
	<% if(i++ >0){%>,<%}%>	
	"${doc.documentName}": {"size": "${doc.documentSize}", "location": "${doc.documentLocation}", "dType": "${doc.documentType}" }	
</c:forEach>
}

