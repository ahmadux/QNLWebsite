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
		pageContext.setAttribute("lpContent", HelperFunctions.readFile(	request.getServletContext().getAttribute("FileStoragePath").toString() + File.separator + HelperFunctions.webPageDirectory + File.separator + lp.getContentFile()));
		pageContext.setAttribute("lpContentAr", HelperFunctions.readFile(request.getServletContext().getAttribute("FileStoragePath").toString() + File.separator + HelperFunctions.webPageDirectory + File.separator + lp.getContentFileAr()));
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<title>Manage Page(s)</title>
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="../scripts/bootstrap.min.js"></script>
<!--  <script src="../scripts/ajaxfileupload.js"></script> -->
<script src="../scripts/holder.js"></script>

<link rel="stylesheet" href="../css/bootstrap.min.css" />
<script src="../scripts/ckeditor/ckeditor.js"></script>
<script src="../scripts/select2/select2.min.js"></script>

<!-- <script src="../scripts/ajaxfileupload.js"></script> -->

<script src="../scripts/jquery.validate.min.js"></script>
<link href="../scripts/select2/select2.css" rel="stylesheet" />

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
		alert(x.substring(x.lastIndexOf(".") + 1));
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
						$.ajax({
									type : "POST",
									url : "../AjaxToDB.do",
									async : false,
									data : {
										oName : "CustomUrl",
										id : $("#objLibMenu option:selected")
												.attr('data-cUrlID'),
										setFriendlyName : $("#setFriendlyName")
												.val(),
										setUrl : "PageSetupController.do?pgID="
												+ objID,
										setUrlAr : "PageSetupController.do?pgID="
												+ objID + "&lang=AR",
										objUser : $("#objUser").val()
									},
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
													success : function() {
														//if non-empty load it up
														if ($("#myFile").val() != "") {
															ajaxFileUpload("_libPage_"
																	+ objID);
															$("#setImage")
																	.val(
																			"_libPage_"
																					+ objID
																					+ "."
																					+ getFileExt());
														}

														$.ajax({
																	url : "../Reloader.do?o=LibMenu,LibPage,CustomUrl",
																	success : function() {
																		location
																				.reload();
																	}
																});
													}
												});

									},
									error : function() {
										alert("Error in  saving Friendly Name");
									}
								});
					},
					error : function() {
						alert("Error in saving Page data");
					}
				});
	}

	function updatePage() {
		alert($("#setFriendlyName").val());
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
				alert($("#setFriendlyName").val());
				$.ajax({
					type : "POST",
					url : "../AjaxToDB.do",
					async : false,
					data : {
						oName : "CustomUrl",
						id : $("#objLibMenu option:selected").attr(
								'data-cUrlID'),
						setFriendlyName : $("#setFriendlyName").val(),
						setUrl : "PageSetupController.do?pgID=" + objID,
						setUrlAr : "PageSetupController.do?pgID=" + objID,
						objUser : $("#objUser").val()
					},
					success : function(objID, status) {
						if ($("#myFile").val() != "") {
							ajaxFileUpload("_libPage_" + objID);
							$("#setImage").val(
									"_libPage_" + objID + "." + getFileExt());
						}

						$.ajax({
							url : "../Reloader.do?o=CustomUrl,LibMenu,LibPage",
							async : false,
							success : function() {
								location.reload();
							}
						});
					},
					error : function() {
						alert("Error in  saving Friendly Name");
					}
				});
			},
			error : function() {
				alert("Error in saving Page data");
			}
		});
	}

	function getHTML(editorName) {
		var objEditor = CKEDITOR.instances[editorName];
		return objEditor.getData();
	}

	function setHTML(editorName, strHtml) {
		var objEditor = CKEDITOR.instances[editorName];
		return objEditor.setData(strHtml);
	}
</script>
<body>
	<div style="width: 18%; padding: 3px; float: left; height: 100%; background: #eaeaea">
		<c:forEach var="pg" items="${LibPageFacade.libPages}">
			<a href="javascript:editPage(${pg.id});">${pg.title.length() > 33?pg.title.substring(0,33):pg.title}</a>
			<br />
		</c:forEach>
	</div>
	<div style="width: 80%; border-left: solid 1px #666666; padding: 3px; float: left">
		<form id="pg" name="pg" enctype="multipart/form-data">
			<ul id="tabs" class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#tabs-1">Settings</a></li>
				<li><a data-toggle="tab" href="#tabs-2">Optional Settings</a></li>
			</ul>
			<div class="tab-content">
				<!-- Tab Number 1 -->
				<div id="tabs-1" class="tab-pane fade in active">
					<input type="hidden" name="id" id="id" value="${lp.id}">
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
					<!--<div class="control-group">
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
					</div>-->
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
					<!-- 
					<div class="control-group">
						<label class="control-label" for="setImageFile">Image for the Page (Optional)</label>
						<div class="controls">
							<input type="file" id="imgFile" name="imgFile" />
							<span class="help-inline">An optional iamge for the page.</span>
						</div>
					</div>
					-->
					<div class="control-group">
						<label class="control-label" for="editor_EN">Content
							(English)</label>
						<div class="controls">
							<textarea class="ckeditor" cols="80" name="editor_EN"
								id="editor_EN" rows="10" tabindex="1">${lpContent}</textarea><br />
							<a data-toggle="modal" href="#imagesModal" class="btn">Insert Image(s)</a>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="editor_Ar">Content
							(Arabic)</label>
						<div class="controls">
							<textarea class="ckeditor" cols="80" name="editor_AR"
								id="editor_AR" rows="10" tabindex="1">${lpContentAr}</textarea>
						</div>
					</div>
				</div>
				<!-- Tab Number 2 -->
				<div id="tabs-2" class="tab-pane fade">

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
				<input type="submit" value="Ok" class="btn btn-primary"> <input
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
				type="hidden" name="oName" value="LibPage" id="oName" /> <input
				type="hidden" name="setImage" id="setImage" />
		</form>
	</div>
	<div class="modal fade span8" id="imagesModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">		
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">Select Image(s)</h4>
					</div>
					<div class="modal-body">
						<input type="hidden" id="selectedImages" name="selectedImages" />
						<input type="hidden" value="" id="folderName" name="folderName" />							
						<a href="javascript:clearImageList()" class="btn btn-default">Clear List</a>
						<div id="folderUp"></div>						
						<br />
						<div class="span6" id="loadedImages"></div>
					</div>
					<div class="modal-footer">	
					<div class="pull-left" style="text-align:center;margin-right:20px">		
							<b>Alignment</b>	
							<br />									  
						    <input type="radio" name="alignment" value="Left" checked>Left							  
						    <input type="radio" name="alignment" value="Middle" >Middle
						    <input type="radio" name="alignment" value="Right" >Right
					</div>							  
					<div class="pull-left" style="text-align:center">					
							<b>Display As</b>					
							<br />													
							<select id="displayAs">
								<option value="HList">Horizontal List</option>
								<option value="VList">Vertical List</option>
								<option value="Carousel">Carousel</option>
							</select>
					</div>
					<div class="pull-right">			
						<button type="button" class="btn btn-primary">Ok</button>
						<button type="button" data-dismiss="modal">Close</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
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

	function selectImage(x, obj) {
		if (obj.checked) {
			if ($("#selectedImages").val() == "")
				$("#selectedImages").val(x);
			else
				$("#selectedImages").val($("#selectedImages").val() + "," + x);
		} else {
			$("#selectedImages").val(
					$("#selectedImages").val().replace("," + x, ""));
			$("#selectedImages").val(
					$("#selectedImages").val().replace(x + ",", ""));
			$("#selectedImages").val($("#selectedImages").val().replace(x, ""));
		}
		if ($("#selectedImages").val() == "")
			$("#btn_Delete").addClass("disabled");
		else
			$("#btn_Delete").removeClass("disabled");
	}

	function clearImageList() {
		alert($('input[name=alignment]:checked').val());
		$("input[type=checkbox]").removeAttr('checked');
		$("#selectedImages").val("");
		$("#btn_Delete").addClass("disabled");
	}

	$(document).ready(function() {
		var imageArray;
		
		getImages(loadImagesInFolder, 'images');
	});

	function loadFolderUp(fldr) {
		var theHTML = "";
		if ((fldr == "images") || (fldr == ""))
			theHTML += "<b>Folder:</b><small>&nbsp;images</small>";
		else {
			theHTML += "<b>Folder:</b><small>&nbsp;" + fldr + "</small>";
			theHTML += "<br />";
			theHTML += "<div class='span2'>";
			theHTML += "<div class='thumbnail img-rounded' style='text-align:center;height:160px;width:160px;padding:2px'>";
			theHTML += "<div class='caption' style='text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc'>";
			theHTML += "<label>";
			theHTML += "<a href='javascript:folderUp(\"" + fldr
					+ "\");'>Folder Up</a>";
			theHTML += "</label>";
			theHTML += "</div>";
			theHTML += "<img src='' alt='...' title=''>";
			theHTML += "</div>";
			theHTML += "</div>";
		}
		$("#folderUp").html(theHTML);
	}

	function loadImagesInFolder() {
		var theHTML = "";

		for ( var i = 0; i < imageArray.length; i++) {
			if ((i % 3) == 0)
				theHTML += "<div class='row'  style='padding-top:30px;'>";

			theHTML += "<div class='span2'><div class='thumbnail img-rounded' style='text-align:center;height:160px;width:160px;padding:2px'>";

			if (imageArray[i].height == 0) {
				theHTML += "<div class='caption' style='text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc'>";
				theHTML += "<label><a href=\"javascript:getImages(loadImagesInFolder,'"
						+ imageArray[i].location
						+ "/"
						+ imageArray[i].name
						+ "')\">" + imageArray[i].name + "</a>";
				//images.jsp?f=" + imageArray[i].location + "/" + imageArray[i].name + "'>" + imageArray[i].name + "</a>";
				theHTML += "</label>";
				theHTML += "</div>";
				theHTML += "<img src='' alt='...' title=''>";
			} else {
				theHTML += "<div style='overflow:hidden;height:100%;width:100%'>";
				theHTML += "<div class='caption' style='text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc'>";
				theHTML += "<div class='checkbox'>";
				theHTML += "<label>";
				theHTML += "<input type='checkbox' onclick=\"selectImage('/"
						+ imageArray[i].location + "/" + imageArray[i].name
						+ "',this);\">";
				theHTML += imageArray[i].name;
				theHTML += "</label>";
				theHTML += "</div>";
				theHTML += "<small>";
				theHTML += "<span class='text-muted'>";
				theHTML += imageArray[i].width + "x" + imageArray[i].height;
				theHTML += "</span>";
				theHTML += "</small>";
				theHTML += "</div>";
				theHTML += "<div style='overflow: hidden;height:100%;width:100%;text-align:center;vertical-align:middle'>";
				theHTML += "<a target='_blank' href='../" + imageArray[i].location + "/" + imageArray[i].name + "' ><img src='../" + imageArray[i].location + "/" + imageArray[i].name + "' alt='...' title='''></a>";
				theHTML += "</div>";
				theHTML += "</div>";
			}
			theHTML += "</div></div>";
			if ((i % 3) == 2)
				theHTML += "</div>";
		}
		;
		$("#loadedImages").html(theHTML);
	};

	function getImages(callback, fldr) {
		imageArray = new Array();

		$.ajax({
			type : 'GET',
			url : '_imageArray.jsp?f=' + fldr,
			dataType : 'json',
			success : function(data) {

				var image;
				var i = 0;
				$.each(data, function(j, itemData) {
					image = new Object();
					image.name = j;
					image.height = itemData.height;
					image.width = itemData.width;
					image.location = itemData.location;
					imageArray[i++] = image;
				});
				loadFolderUp(fldr);
				callback(imageArray);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				alert("An error has occured: " + errorThrown);
			}
		});
	}

	function folderUp(f) {
		//alert(f);
		var slashPos = f.lastIndexOf("/");
		getImages(loadImagesInFolder, f.substring(0, slashPos));

	}
</script>
</html>