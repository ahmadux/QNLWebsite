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
		//alert(x.substring(x.lastIndexOf(".") + 1));
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

		$("#objLibMenu").select2();
		//$("#objLibMenu").select2("val", "1");
		$("#objLibTemplate").select2({
			formatResult : format,
			formatSelection : format,
			escapeMarkup : function(m) {
				return m;
			}
		});
		$("#objLibTemplate").select2("val", "");
		$("#setTitle").change(function() {
			$("#setTitleAr").val($("#setTitle").val());
			$("#setFriendlyName").val($("#setTitle").val().replace(" ", ""));
		});
	});

	function createPage() {
		//alert("Creating");
		$("#x").val(getHTML("editor_EN"));
		$("#xAR").val(getHTML("editor_AR"));

		$("#setSummary").val($("#pg_Summary").val());
		$("#setSummaryAr").val($("#pg_SummaryAr").val());
		$("#setKeywords").val($("#pg_Keywords").val());
		$("#setKeywordsAr").val($("#pg_KeywordsAr").val());

		$("#setContentFile").val($("#setFriendlyName").val() + ".jsp");
		$("#setContentFileAr").val($("#setFriendlyName").val() + "_ar.jsp");

		$.ajax({
					type : "POST",
					url : "../AjaxToDB.do",
					data : $("#pg").serialize(),
					dataType : "text",
					async : false,
					success : function(objID, status) {
						//alert("Page ID: " + objID);
						var oid = objID;
						$.ajax({
									type : "POST",
									url : "../AjaxToDB.do",
									async : false,
									data : {
										oName : "CustomUrl",
										id : $("#objLibMenu option:selected")
												.attr('data-cUrlID'),
										setFriendlyName : $("#setFriendlyName").val(),
										setUrl : "pages/"+ $("#setContentFile").val(),
										setUrlAr : "pages/" + $("#setContentFileAr").val(),
										objUser : $("#objUser").val()
									},
									async: false,
									success : function(objID, status) {
										
										$.ajax({
													type : "POST",
													url : "../AjaxToDB.do",
													async : false,
													data : {
														oName : "LibMenu",
														id : $("#objLibMenu")
																.val(),
														setCustomUrl : objID,
														objUser : $("#objUser")
																.val()
													},
													async: false,
													success : function() {
														if($("input[type=file]").val() != "")
														{
															$("#rPath").val(location);
															$("#imageFile").attr("action","../FileUpload.do?fid=" + oid);
															$("#imageFile").submit();
														}
														
														$.ajax({
																	url : "../Reloader.do?o=LibMenu,LibPage,CustomUrl",
																	success : function() {
																		
																	}
																});
														//alert("New Page created!");
													}
												});										

									},
									error : function() {
										alert("Error in  saving Friendly Name while creating");
									}
								});
					},
					error : function() {
						alert("Error in saving Page data while creating");
					}
				});
	}

	function updatePage() {
		//alert("Updating");
		$("#x").val(getHTML("editor_EN"));
		$("#xAR").val(getHTML("editor_AR"));

		$("#setSummary").val($("#pg_Summary").val());
		$("#setSummaryAr").val($("#pg_SummaryAr").val());
		$("#setKeywords").val($("#pg_Keywords").val());
		$("#setKeywordsAr").val($("#pg_KeywordsAr").val());

		$("#setContentFile").val($("#setFriendlyName").val() + ".jsp");
		$("#setContentFileAr").val($("#setFriendlyName").val() + "_ar.jsp");
		
		var oid;
		
		$.ajax({
			type : "POST",
			url : "../AjaxToDB.do",
			data : $("#pg").serialize(),
			dataType : "text",
			async : false,
			success : function(objID, status) {
				oid = objID;
				$.ajax({
					type : "POST",
					url : "../AjaxToDB.do",
					async : false,
					data : {
						oName : "CustomUrl",
						id : $("#objLibMenu option:selected").attr(
								'data-cUrlID'),
						setFriendlyName : $("#setFriendlyName").val(),
						setUrl : "pages/"+ $("#setContentFile").val(),
						setUrlAr : "pages/" + $("#setContentFileAr").val(),
						objUser : $("#objUser").val()
					},
					async: false,
					success : function() {	
						if($("input[type=file]").val() != "")
						{
							$("#rPath").val(location);
							$("#imageFile").attr("action","../FileUpload.do?fid=" + oid);
							$("#imageFile").submit();
						}
						
						$.ajax({
							url : "../Reloader.do?o=CustomUrl,LibMenu,LibPage",
							async : false,
							success : function() {
								location.reload();
							}
						});
						//alert("Page Data updated!");
					},
					error : function() {
						alert("Error in  saving Friendly Name while updating");
					}
				});
			},
			error : function() {
				alert("Error in saving Page data while updating");
			}
		});
	}

	
	function updateOrCreate()
	{
		if($('input[id=id]').val() == "")
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
			<ul id="tabs" class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#tabs-1">Settings</a></li>
				<li><a data-toggle="tab" href="#tabs-2">Optional Settings</a></li>
			</ul>
			<div class="tab-content  black-form">
				<!-- Tab Number 1 -->
				<div id="tabs-1" class="tab-pane fade in active">
					<input type="hidden" name="id" id="id" value="${lp.id}">
					<input type="hidden" name="rPath" id="rPath" value="">
					<input type="hidden" name="imageFile" id="imageFile" value="${lp.image}">
					<div class="control-group">
						<label class="control-label" for="setTitle">Title<font
							color="red">*</font></label>
						<div class="controls">
							<input required="required" type="text" id="setTitle"
								class="form-control" name="setTitle" maxlength="255"
								placeholder="Title of the page" value="${lp.title}"
								pattern="[A-Za-z]+([0-9]|\s|'|[A-Za-z])*" />
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="setTitleAr"> Title
							(Arabic)<font color="red">*</font>
						</label>
						<div class="controls">
							<input required="required" type="text" id="setTitleAr"
								class="form-control" value="${lp.titleAr}" name="setTitleAr"
								maxlength="255" dir="rtl" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="setFriendlyName">Friendly
							Name<font color="red">*</font></label>
						<div class="controls">
							<input required="required" type="text" id="setFriendlyName"
								class="form-control" name="setFriendlyName" maxlength="100"
								value="${lp.libMenu.customUrl.friendlyName}"
								placeholder=""
								pattern="[A-Za-z]+([0-9]|-}[A-Za-z])*" />
						</div>
					</div>					
					<!-- <div class="control-group">
						<label class="control-label" for="objLibTemplate">Template<font
							color="red">*</font></label>
						<div class="controls">
							<select id="objLibTemplate" name="objLibTemplate"
								style="width: 160px">
								<c:forEach var="t"
									items="${LibTemplateFacade.getAllTemplates()}">

									<option value="${t.id}" data-img="${t.descImage}"
										${(lp.libTemplate.id == t.id)?"selected":""}>${t.name}</option>

								</c:forEach>
							</select> <span class="help-inline">Select a <b>Look&Feel</b>
								template for the page.
							</span>
						</div>
					</div>
					-->
					<div class="control-group">
						<label class="control-label" for="objLibMenu">Menu</label>
						<div class="controls">
							<select id="objLibMenu" name="objLibMenu" style="width: 200px">
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
							<textarea id="pg_Summary" name="pg_Summary" class="input-xxlarge"
								rows="3">${lp.summary}</textarea>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="pg_SummaryAr">Summary
							(Arabic)</label>
						<div class="controls">
							<textarea id="pg_SummaryAr" name="pg_SummaryAr"
								class="input-xxlarge" rows="3" dir="rtl">${lp.summaryAr}</textarea>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="pg_Keywords">Keywords
							(English)</label>
						<div class="controls">
							<input type="text" class="input-xxlarge" id="pg_Keywords"
								name="pg_Keywords" class="input-xxlarge" value="${lp.keywords}"
								maxlength="255" dir="rtl" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="pg_KeywordsAr">Keywords
							(Arabic)</label>
						<div class="controls">
							<input type="text" class="input-xxlarge" id="pg_KeywordsAr"
								name="pg_KeywordsAr" class="input-xxlarge"
								value="${lp.keywordsAr}" maxlength="255" dir="rtl" />
						</div>
					</div>
				</div>
			</div>
			<br />
			<div id="form-actions">
				<input type="button" value="Ok" class="btn btn-primary" onclick="updateOrCreate();"> <input
					type="button" value="Delete" class="btn btn-danger"> <input
					type="button" value="Cancel" class="btn">
			</div>
			<input type="hidden" name="x" id="x" /> <input type="hidden"
				name="xAR" id="xAR" /> <input type="hidden" name="id" id="id" /> <input
				type="hidden" name="setContentFileAr" id="setContentFileAr" /> <input
				type="hidden" name="setContentFile" id="setContentFile" /> <input
				type="hidden" name="setSummary" id="setSummary" /> <input
				type="hidden" name="setSummaryAr" id="setSummaryAr" /> <input
				type="hidden" name="setKeywords" id="setKeywords" /> <input
				type="hidden" name="setKeywordsAr" id="setKeywordsAr" /> <input
				type="hidden" name="objUser" id="objUser" value="11" /> <input
				type="hidden" name="oName" value="LibPage" id="oName" /> 
				
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
						setTitle : "required",
						setTitleAr : "required",
						setFriendlyName : "required"
					},
					messages : {
						setTitle : "",
						setTitleAr : "",
						setFriendlyName : ""
					},
					submitHandler : function(form) {
						if ($("#id").val() == "")
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