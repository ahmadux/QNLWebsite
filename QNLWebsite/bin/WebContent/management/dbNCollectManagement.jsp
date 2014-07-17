<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.qnl.core.DbaseNCollect,com.qnl.facade.DbaseNCollectFacade"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%
	if ((request.getParameter("id") != null)&&(request.getParameter("id") != "")) {
		
		DbaseNCollect db = ((DbaseNCollectFacade) application.getAttribute("DbaseNCollectFacade")).findByID(Integer.parseInt(request.getParameter("id")));
		pageContext.setAttribute("db", db);
		
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="chrome=1">

<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>
<script src="../scripts/ckeditor/ckeditor.js"></script>
<script src="../scripts/ckEditorInit.js"></script>
<script src="../scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/themes/smoothness/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/jquery-ui.min.js"></script>

<link rel="stylesheet" href="../css/bootstrap.min.css" type='text/css' />
<link rel="stylesheet" href="../css/qnl2.css" type='text/css' />



<title>Manage Online Databases and Collections</title>
</head>
<body class="body_form">
	<h1>Manage Online Databases and Collections</h1>
	<div class="col-xs-12 col-sm-3 img-rounded semitransparent pull-left">		
		<c:forEach var="c" items="${DbaseNCollectFacade.getDbncsSortedByName()}">
			<div class="listItem">
				<a href="dbNCollectManagement.jsp?id=${c.id}" >${c.name}</a>
			</div>
		</c:forEach>	
	</div>
	</div>

	<div class="col-xs-12 col-sm-9 pull-left">
		<form name="data-form" id="data-form" class="form-horizontal">

			<input type="hidden" name="oName" value="DbaseNCollect" id="oName" />			
			<input type="hidden" name="objUser" id="objUser" value="11" /> 
			<input type="hidden" name="setLogo" id="setLogo" value="none" /> 
			<input type="hidden" name="id" id="id" value="${db.id}" />			 
			
			<div class="form-group">
				<label class="col-xs-3 control-label">Headline<font
					color="red">*</font></label>
				<div class="col-xs-9">
				<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setName" id="setName" value="${db.name}">
				
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">Headline (Arabic) <font
					color="red">*</font></label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setNameAr" id="setNameAr" value="${db.nameAr}" 
						dir="rtl" lang="ar">
				</div>
			</div>
			
		
				<div class="form-group">
				<label class="col-xs-3 control-label">Type <font
					color="red">*</font></label>
				<div class="col-xs-9">
					<select name="setType" id="setType"
						class="form-control">
						<option value="OnlineDatabases" ${(db.type eq 'OnlineDatabases')?"selected":""}>Online Databases</option>
						<option value="TBD" ${(db.type eq 'TBD')?"selected":""}>TBD</option>
						
				</select>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-xs-3 control-label">Link URL <font
					color="red">*</font></label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="255"
						size="50" name="setUrl" id="setUrl"  value="${db.url}"
						placeholder="http://0-search.proquest.com.library.qnl.qa/abicomplete/fromDatabasesLayer?accountid=49936">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-xs-3 control-label">Link (Arabic)</label>
				<div class="col-xs-9">
				<input type="text" class="inputText form-control" maxlength="255"
						size="50" name="setUrlAr" id="setUrlAr" value="${db.urlAr}"
						placeholder="http://0-search.proquest.com.library.qnl.qa/abicomplete/fromDatabasesLayer?accountid=49936" dir="rtl" lang="ar">
					
				</div>
			</div>	
			
			<div class="form-group">
				<label class="col-xs-3 control-label">Description</label>
				<div class="col-xs-9">
					<textarea class="ckeditor" cols="80" name="editor_EN" id="editor_EN" rows="10" tabindex="1">${db.description}</textarea>
					<input type="hidden" name="setDescription" id="setDescription" >
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">Description (Arabic)</label>
				<div class="col-xs-9">
					<textarea class="ckeditor" cols="80" name="editor_AR" id="editor_AR" rows="10"  tabindex="1" dir="rtl" lang="ar">${db.description}</textarea>
					<input type="hidden" name="setDescriptionAr" id="setDescriptionAr" value="${db.descriptionAr}">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-xs-3 control-label">Show <font
					color="red">*</font></label>
				<div class="col-xs-9">
				<select name="~setShow" id="~setShow"
						class="form-control">
						
						<option value="0" ${(db.show==0)?"selected":""}>No</option>
						<option value="1" ${(db.show==1)?"selected":""}>Yes</option>
					</select>
					
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-xs-3 control-label">Language(s)</label>
				<div class="col-xs-9">
					<input type="text" class="form-control" value="${db.languages}" name="setLanguages" id="setLanguages" maxlength="50" tabindex="1" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">Language(s) (Arabic)</label>
				<div class="col-xs-9">
					<input type="text" class="form-control" value="${db.languagesAr}" name="setLanguagesAr" id="setLanguagesAr" maxlength="50" tabindex="1" dir="rtl" lang="ar" />
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-xs-3 control-label">Section</label>
				<div class="col-xs-9">
					<input type="text" class="form-control" value="${db.section}" name="setSection" id="setSection" maxlength="50" tabindex="1" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">Section (Arabic)</label>
				<div class="col-xs-9">
					<input type="text" class="form-control" value="${db.sectionAr}" name="setSectionAr" id="setSectionAr" maxlength="50" tabindex="1" dir="rtl" lang="ar" />
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">AccessControl</label>
				<div class="col-xs-9">
							<select name="setAccess" id="setAccess"
						class="form-control">
						<option value="National" ${db.access.equals('National')?"selected":""}>National</option>
						<option value="QF Only" ${db.access.equals('QF Only')?"selected":""}>QF Only</option>
						
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-xs-3 control-label">Keywords(s)</label>
				<div class="col-xs-9">
					<input type="text" class="form-control" value="${db.keywords}" name="setKeywords" id="setKeywords" maxlength="50" tabindex="1" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">Keywords(s) (Arabic)</label>
				<div class="col-xs-9">
					<input type="text" class="form-control" value="${db.keywordsAr}" name="setKeywordsAr" id="setKeywordsAr" maxlength="50" tabindex="1" dir="rtl" lang="ar"/>
				</div>
			</div>
			
			<div class="form-actions">
				<input type="button" value="Clear" class="btn brandingButton" onclick="location.href = (location.href.replace(location.search,''));" />
				<input type="submit" value="Save" class="btn brandingButton" />
			</div>
		</form>
	</div>
</body>
<script type="text/javascript">
$(function(){ initCKEDITOR('editor_EN','min');initCKEDITOR('editor_AR','min','ar');});

function createData() {
	    
		$('#setDescription').val(getHTML("editor_EN"));
		$('#setDescriptionAr').val(getHTML("editor_AR"));
		
		$.ajax({
			type : "POST",
			url : "../AjaxToDB.do",
			data :$("#data-form").serialize(),
			dataType : "text",
			async : false,
			success : function(objID, status) {
				//alert("Site Data with ID: " + objID);
				$.ajax({
					url : "../Reloader.do?o=DbaseNCollect",
					success : function() {
						alert("New ODB/Colleciton Item Created!");
					}
				});
			},
			error : function() {
				alert("Error in saving ODB/Colleciton Item data");
			}
		});
	}
	
function updateData() {
    
	$('#setDescription').val(getHTML("editor_EN"));
	$('#setDescriptionAr').val(getHTML("editor_AR"));
	
	$.ajax({
		type : "POST",
		url : "../AjaxToDB.do",
		data :$("#data-form").serialize(),
		dataType : "text",
		async : false,
		success : function(objID, status) {
			//alert("Site Data with ID: " + objID);
			$.ajax({
				url : "../Reloader.do?o=DbaseNCollect",
				success : function() {
					alert("ODB/Colleciton Item Updated!");
				}
			});
		},
		error : function() {
			alert("Error in updating ODB/Colleciton Item data");
		}
	});
}

(function($, W, D) {
	var JQUERY4U = {};
	JQUERY4U.UTIL = {
		setupFormValidation : function() {
			//form validation rules
			$("#data-form").validate({
				rules : {
					
					setUrl:{required:true,
						url:true},
					setShow:"required",
					setNameAr:"required",
					
					setName:"required",
					setType:"required"
				},
				messages : {
					
					setUrl:{required:"Please enter a URL",
						url:"http://www.domain.com"},
					setShow:"Please enter Show (true or false)",
					setNameAr:"Please enter Name in Arabic",
					
					setName:"Please enter Name",
					setType:"Please enter Type"
					
				},
				submitHandler : function(form) {						
					if ($("#id").val() == "")
						createData();
					else
						updateData();											
				}
			});
		}
	};

	//when the dom has loaded setup form validation rules
	$(D).ready(function($) {
		JQUERY4U.UTIL.setupFormValidation();
	});

})(jQuery, window, document);




</script>

</html>