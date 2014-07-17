<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.qnl.core.LibPage,com.qnl.facade.LibPageFacade,com.qnl.management.HelperFunctions,java.io.File"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	if (request.getParameter("id") != null) {
		LibPage lp = ((LibPageFacade) application
				.getAttribute("LibPageFacade")).findByID(Integer
				.parseInt(request.getParameter("id")));
		pageContext.setAttribute("lp", lp);
		pageContext.setAttribute("lpContent", HelperFunctions.readFile(	request.getServletContext().getAttribute("FileStoragePath").toString() + File.separator + HelperFunctions.webPageDirectory + File.separator + lp.getContentFile().toLowerCase()));
		pageContext.setAttribute("lpContentAr", HelperFunctions.readFile(request.getServletContext().getAttribute("FileStoragePath").toString() + File.separator + HelperFunctions.webPageDirectory + File.separator + lp.getContentFileAr().toLowerCase()));
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<title>Manage Page(s)</title>
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="../scripts/bootstrap.min.js"></script>

<link rel="stylesheet" href="../css/bootstrap.min.css" />
<script src="../scripts/ckeditor/ckeditor.js"></script>
<script src="../scripts/select2/select2.min.js"></script>

<script src="../scripts/jquery.validate.min.js"></script>
<link href="../scripts/select2/select2.css" rel="stylesheet" />
<link href="../css/qnl2.css" rel="stylesheet" />
</head>

<script>
	function format(txt) {
		return $(txt.element).data('img') != null ? "<img src='../images/"
				+ $(txt.element).data('img')
				+ "' width='16px' height='16px' align='absmiddle' border='0' />  "
				+ txt.text
				: txt.text;
	}

	function editPage(x) {
		window.location.href = "pageManagement.jsp?id=" + x;
	}

	function getFileExt() {
		var x = $("#imgFile").val();
		
	}
	
	$(function() {

		$("#pg_Keywords").select2({
			tags : [],
			multiple : true,
			tokenSeparators : [ "," ]
		});
		$("#pg_KeywordsAr").select2({
			tags : [],
			multiple : true,
			tokenSeparators : [ "," ]
		});

		//$("#objLibMenu").select2();		
		//$("#objLibMenu").select2("val", "1");
		
		$("#Page_setTitle").change(function() {
			$("#Page_setTitleAr").val($("#Page_setTitle").val());
			$("#CustomUrl_setFriendlyName").val($("#Page_setTitle").val().replace(" ", ""));
		});
	});

	function createPage() {
		
		$("#action").val("doRoute_Create");
		$("#Page_x").val(getHTML("editor_EN"));
		$("#Page_xAR").val(getHTML("editor_AR"));

		$("#Page_setSummary").val($("#pg_Summary").val());
		$("#Page_setSummaryAr").val($("#pg_SummaryAr").val());
		$("#Page_setKeywords").val($("#pg_Keywords").val());
		$("#Page_setKeywordsAr").val($("#pg_KeywordsAr").val());
		
		$("#CustomUrl_id").val($("#Page_objLibMenu :selected").attr("data-cUrlID"));		
		
		$("#Page_setContentFile").val($("#CustomUrl_setFriendlyName").val() + ".jsp");
		$("#Page_setContentFileAr").val($("#CustomUrl_setFriendlyName").val() + "_ar.jsp");
		
		$("#CustomUrl_setUrl").val("pages/" + $("#Page_setContentFile").val());
		$("#CustomUrl_setUrlAr").val("pages/" + $("#Page_setContentFileAr").val());

		$("#oName").val("LibPage");
		
		
		
		$.ajax({
					type : "POST",
					url : "../AjaxToDB.do",
					data : $("#pg").serialize(),
					dataType : "text",
					async : false,
					success : function(objID, status) {
						alert("Page item created!");
						location.reload();
					},
					error : function() {
						alert("Error in creating Page data!");
					}
				});
	}

	function updatePage() {
		$("#action").val("doRoute_Update");
		$("#Page_x").val(getHTML("editor_EN"));
		$("#Page_xAR").val(getHTML("editor_AR"));

		$("#Page_setSummary").val($("#pg_Summary").val());
		$("#Page_setSummaryAr").val($("#pg_SummaryAr").val());
		$("#Page_setKeywords").val($("#pg_Keywords").val());
		$("#Page_setKeywordsAr").val($("#pg_KeywordsAr").val());
		
		$("#CustomUrl_id").val($("#Page_objLibMenu :selected").attr("data-cUrlID"));
		
		$("#Page_setContentFile").val($("#CustomUrl_setFriendlyName").val() + ".jsp");
		$("#Page_setContentFileAr").val($("#CustomUrl_setFriendlyName").val() + "_ar.jsp");
		
		$("#CustomUrl_setUrl").val("pages/" + $("#Page_setContentFile").val());
		$("#CustomUrl_setUrlAr").val("pages/" + $("#Page_setContentFileAr").val());
		
		$("#oName").val("LibPage");
		
		$.ajax({
			type : "POST",
			url : "../AjaxToDB.do",
			data : $("#pg").serialize(),
			dataType : "text",
			async : false,
			success : function(objID, status) {
				alert("Page item updated!");
				location.reload();
			},
			error : function() {
				alert("Error in updating Page data!");
			}
		});
	}

	function deletePage()
	{
		$("#action").val("doRoute_Delete");
		
		$("#oName").val("LibPage");
		if(confirm("Are you sure you want to DELETE this page item?"))
			$.ajax({
				type : "POST",
				url : "../AjaxToDB.do",
				data : $("#pg").serialize(),
				dataType : "text",
				async : false,
				success : function(objID, status) {
					alert("Page item deleted!");
					location = location.href.split("?")[0];
				},
				error : function() {
					alert("Error in deleting Page data!");
				}
			});
	}
	
	
	function updateOrCreate()
	{
		
		if($('#Page_id').val() == "")
			createPage();
		else
			updatePage();
	}
</script>
<body>
	<div class="col-xs-12 col-md-3 img-rounded semitransparent pull-left small_menu">
		<c:forEach var="pg" items="${LibPageFacade.libPages}">
			<a href="javascript:editPage(${pg.id});">${pg.title.length() > 33?pg.title.substring(0,33):pg.title}</a>
			<br />
		</c:forEach>
	</div>
	<div class="col-xs-12 col-md-9 pull-left">
		<form method="POST" enctype="multipart/form-data" id="imageFile" name="imageFile" role="form">
			<input type="hidden" value="backgroundImage" id="type" name="type" />
			<input type="hidden" value="" id="rPath" name="rPath" />
			
			<div class="control-group col-xs-12">
				<c:choose>			
				<c:when test="${(lp.image != null)}">
					
						<img src="${lp.image}&dimX=320&dimY=480" alt="Background Image" title="Background Image" width="100px" /><br />
					
				</c:when>
				<c:otherwise>
					
						<label class="control-label" for="file">Background&nbsp;Image</label>		
					
				</c:otherwise>			
				</c:choose>
				<br />
				<div ${lp != null?"":"class='disabled'"}>					
					<input type="file" name="file" data-filename-placement="inside">
				</div>		
			</div>
		</form>
		<form id="pg" name="pg" enctype="multipart/form-data" role="form">
			<input type="hidden" name="action" id="action" value="">
			<ul id="tabs" class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#tabs-1">Settings</a></li>
				<li><a data-toggle="tab" href="#tabs-2">Optional Settings</a></li>
			</ul>
			<div class="tab-content  black-form">
				<!-- Tab Number 1 -->
				<div id="tabs-1" class="tab-pane fade in active">
					<input type="hidden" name="Page_id" id="Page_id" value="${lp.id}">
					<input type="hidden" name="rPath" id="rPath" value="">
					<input type="hidden" name="imageFile" id="imageFile" value="${lp.image}">
					<div class="control-group">
						<label class="control-label" for="Page_setTitle">Title<font
							color="red">*</font></label>
						<div class="controls">
							<input required="required" type="text" id="Page_setTitle"
								class="form-control" name="Page_setTitle" maxlength="255"
								placeholder="Title of the page" value="${lp.title}"
								pattern="[A-Za-z]+([0-9]|\s|'|[A-Za-z])*" />
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="Page_setTitleAr"> Title
							(Arabic)<font color="red">*</font>
						</label>
						<div class="controls">
							<input required="required" type="text" id="Page_setTitleAr"
								class="form-control" value="${lp.titleAr}" name="Page_setTitleAr"
								maxlength="255" dir="rtl" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="CustomUrl_setFriendlyName">Friendly
							Name<font color="red">*</font></label>
						<div class="controls">
							<input required="required" type="text" id="CustomUrl_setFriendlyName"
								class="form-control" name="CustomUrl_setFriendlyName" maxlength="100"
								value="${lp.libMenu.customUrl.friendlyName}"
								placeholder=""
								pattern="[A-Za-z]+([0-9]|-}[A-Za-z])*" />
						</div>
					</div>					
					
					<div class="control-group">
						<label class="control-label" for="Page_objLibMenu">Menu</label>
						<div class="controls">
							<input type="hidden" name="CustomUrl_id" id="CustomUrl_id" value="">
							<input type="hidden" name="CustomUrl_setUrl" id="CustomUrl_setUrl" value="">
							<input type="hidden" name="CustomUrl_setUrlAr" id="CustomUrl_setUrlAr" value="">
							
							
							<select id="Page_objLibMenu" name="Page_objLibMenu" style="width: 200px">
								<c:forEach var="m"
									items="${LibMenuFacade.getAllParentMenuItems(1,'MENU')}">
									<option value="${m.id}" data-cUrlID="${m.customUrl.id}"
										${(lp.libMenu.id == m.id)?"selected":""}>${m.text}</option>
									<c:forEach var="m2"
										items="${LibMenuFacade.getAllChildMenuItems(m.id,'MENU')}">
										<option value="${m2.id}" data-cUrlID="${m2.customUrl.id}"
											${(lp.libMenu.id == m2.id)?"selected":""}>--
											${m2.text}</option>
									</c:forEach>
								</c:forEach>
							</select> <span class="help-inline">Select a <b>Menu Item</b>
								pointing to this page.
							</span>
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="editor_EN">Content
							(English)</label>
						<div class="controls">
							<textarea class="ckeditor" cols="80" name="editor_EN"
								id="editor_EN" rows="10" tabindex="1">${lpContent}</textarea>							
						</div>
					</div>
					<a data-toggle="modal" href="javascript:openObjectSelectionModal('images','multiple','editor_AR','selectedFiles');" class="btn btn-primary">Insert Image(s)</a>
					<a data-toggle="modal" href="javascript:openObjectSelectionModal('documents','multiple','editor_AR','selectedFiles');" class="btn btn-primary">Insert Document(s)</a>
					
					<div class="control-group">
						<label class="control-label" for="editor_Ar">Content
							(Arabic)</label>
						<div class="controls">
							<textarea class="ckeditor" cols="80" name="editor_AR"
								id="editor_AR" rows="10" tabindex="1">${lpContentAr}</textarea>
						</div>
					</div>
						<a data-toggle="modal" href="javascript:openObjectSelectionModal('images','multiple','editor_AR','selectedFiles');" class="btn btn-primary">Insert Image(s)</a>
						<a data-toggle="modal" href="javascript:openObjectSelectionModal('documents','multiple','editor_AR','selectedFiles');" class="btn btn-primary">Insert Document(s)</a>
					
				</div>
				<!-- Tab Number 2 -->
				<div id="tabs-2" class="tab-pane fade  black-form">

					<div class="control-group">
						<label class="control-label" for="pg_Summary">Summary
							(English)</label>
						<div class="controls">
							<textarea id="pg_Summary" name="pg_Summary" class="col-xs-12"
								rows="3">${lp.summary}</textarea>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="pg_SummaryAr">Summary
							(Arabic)</label>
						<div class="controls">
							<textarea id="pg_SummaryAr" name="pg_SummaryAr"
								class="col-xs-12" rows="3" dir="rtl">${lp.summaryAr}</textarea>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="pg_Keywords">Keywords
							(English)</label>
						<div class="controls">
							<input type="text" class="input-xxlarge" id="pg_Keywords"
								name="pg_Keywords" class="col-xs-12" value="${lp.keywords}"
								maxlength="255" dir="rtl" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="pg_KeywordsAr">Keywords
							(Arabic)</label>
						<div class="controls">
							<input type="text" class="input-xxlarge" id="pg_KeywordsAr"
								name="pg_KeywordsAr" class="col-xs-12"
								value="${lp.keywordsAr}" maxlength="255" dir="rtl" />
						</div>
					</div>
				</div>
			</div>
			<br />
			<div id="form-actions">
				<input type="button" value="Ok" class="btn btn-primary" onclick="updateOrCreate();"> <input
					type="button" value="Delete" class="btn btn-danger" onclick="deletePage();"> <input
					type="button" value="Cancel" class="btn">
			</div>
			<input type="hidden" name="Page_x" id="Page_x" /> 
			<input type="hidden" name="Page_xAR" id="Page_xAR" /> 
			<input type="hidden" name="Page_id" id="Page_id" /> 
			<input type="hidden" name="Page_setContentFileAr" id="Page_setContentFileAr" /> 
			<input type="hidden" name="Page_setContentFile" id="Page_setContentFile" /> 
			<input type="hidden" name="Page_setSummary" id="Page_setSummary" />
			<input type="hidden" name="Page_setSummaryAr" id="Page_setSummaryAr" /> 
			<input type="hidden" name="Page_setKeywords" id="Page_setKeywords" /> 
			<input type="hidden" name="Page_setKeywordsAr" id="Page_setKeywordsAr" />
			
			<input type="hidden" name="Page_objUser" id="Page_objUser" value="11" />
			<input type="hidden" name="Menu_objUser" id="Menu_objUser" value="11" />
			<input type="hidden" name="CustomUrl_objUser" id="CustomUrl_objUser" value="11" />
			
			<input type="hidden" name="oName" value="" id="oName" /> 
				
				<input type="hidden" id="selectedFiles" name="selectedFiles" />
		</form>
	</div>
	
	<!--  Image and Doc Management Modals -->
	
	<jsp:include page="/includes/common_imageDocManagement.jsp" />
	
	
   
</body>
<script type="text/javascript">
	(function($, W, D) {
		var JQUERY4U = {};
		JQUERY4U.UTIL = {
			setupFormValidation : function() {
				//form validation rules
				$("#pg").validate({
					rules : {
						Page_setTitle : "required",
						Page_setTitleAr : "required",
						Page_setFriendlyName : "required"
					},
					messages : {
						Page_setTitle : "",
						Page_setTitleAr : "",
						Page_setFriendlyName : ""
					},
					submitHandler : function(form) {
						if ($("#Page_id").val() == "")
							createPage();
						else
							updatePage();
					}
				});
			}
		}

		//when the dom has loaded setup form validation rules
		$(D).ready(function($) {
			JQUERY4U.UTIL.setupFormValidation();
		});

	})(jQuery, window, document);

	


</script> 
  <script language="javascript" type="text/javascript" src="../scripts/ckEditorInit.js"></script>
  <script language="javascript" type="text/javascript">
		$(function(){ initCKEDITOR('editor_EN','min');initCKEDITOR('editor_AR','min','ar');});
  </script>


</html>