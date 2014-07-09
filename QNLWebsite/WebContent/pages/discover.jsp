<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../includes/common_header.jsp" />
<div class="body_slider active ">
	<jsp:include page="contents/discover_content.jsp"><jsp:param value="${LP.getId()}" name="page_id"/></jsp:include>
</div>
<div id="" class=" body_slider inactive"><div id="main_content"></div></div>
<jsp:include page="../includes/common_footer.jsp" />