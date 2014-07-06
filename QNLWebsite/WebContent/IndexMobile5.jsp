<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="includes/common_header.jsp"><jsp:param value="Home" name="title"/></jsp:include>
	<div class="body_slider active  col-xs-12 landing pull-left ">
		<jsp:include page="includes/home_content.jsp"><jsp:param value="${LP.getId()}" name="page_id"/></jsp:include>			
	</div>
	<div id="" class=" body_slider inactive"></div>
<jsp:include page="includes/common_footer.jsp" />