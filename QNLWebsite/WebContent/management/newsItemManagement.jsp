<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.qnl.core.NewsItem,com.qnl.core.NewsCategory,com.qnl.facade.NewsItemFacade,com.qnl.facade.NewsCategoryFacade"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	if (request.getParameter("id") != null) {
		
		NewsItem ni = ((NewsItemFacade) application.getAttribute("NewsItemFacade")).findByID(Integer.parseInt(request.getParameter("id")));
		pageContext.setAttribute("ni", ni);
		
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<title>News and Event Management</title>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro'
	rel='stylesheet' type='text/css'> 
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/themes/smoothness/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/jquery-ui.min.js"></script>
<script src="../scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" />

<script src="../scripts/ckeditor/ckeditor.js"></script>
<script src="../scripts/select2/select2.min.js"></script>
<link href="../scripts/select2/select2.css" rel="stylesheet" />
<script src="../scripts/jquery.validate.min.js"></script>

<link href="../css/qnl2.css" rel="stylesheet" />
</head>
<script language="Javascript">
	$('#').ready(function(){
	  $('input[type="file"]').ajaxfileupload({
	       'action': 'fileUpload.do',           
	   'onComplete': function(response) {        
	         $('#upload').hide();
	         alert("File SAVED!!");
	       },
	       'onStart': function() {
	         $('#upload').show();
	       }
	  });
	});
</script>
<body>
	<div class="col-xs-12 col-md-3 img-rounded semitransparent pull-left small_menu">		
		<select class="form-control col-xs-12" id="listFilter1" name="listFilter1">
			<option value="" >All</option>
			<c:forEach var="c" items="${NewsCategoryFacade.getAllNewsCategories()}">
				<option value="${c.id}" >${c.name}</option>
			</c:forEach>
		</select>
		
		<select class="form-control col-xs-12" id="listFilter2" name="listFilter2">
			<option value="">Any</option>
			<option value="p">Promoted Only</option>
			<option value="d1">Displayed Only</option>
			<option value="d0">Undisplayed Only</option>
		</select>
		
		<c:forEach var="n" items="${NewsItemFacade.findAllNews()}">
			<div class="listItem" data-filter1="${n.newsCategory.id}" data-filter2="${n.promote>0?'p':''} ${n.display>0?'d1':'d0'}" >
				<a href="newsItemManagement.jsp?id=${n.id}"  >${n.title}</a>
			</div>
		</c:forEach>
	</div>
	<div class="col-xs-12 col-md-9 pull-left black-form">
	<form method="POST" enctype="multipart/form-data" id="imageFile" name="imageFile" role="form">
		<input type="hidden" value="newsItemMainImage" id="type" name="type" />
		<input type="hidden" name="nid" id="nid" value="${ni.id}">
		<input type="hidden" value="" id="rPath" name="rPath" />			
		<div class="control-group col-xs-12">
			<c:choose>			
			<c:when  test="${(ni.image != null)}">
				
					<img src="${ni.getImageThumbnail()}" alt="Main Image" title="Main Image" /><br />
				
			</c:when>
			<c:otherwise>
				
					<label class="control-label" for="file">Main&nbsp;Image</label>		
				
			</c:otherwise>			
			</c:choose>
			<br />
			<div ${ni != null?"":"class='disabled'"}>					
				<input type="file" data-filename-placement="inside" name="file">
			</div>		
		</div>
	</form>
	
	<form id="nItem" name="nItem" class="form-horizontal" role="form" >
		<input type="hidden" name="id" id="id" value="${ni.id}">
		<input type="hidden" name="setContent" id="setContent" value="">
		<input type="hidden" name="setContentAr" id="setContentAr" value="">
		<input type="hidden" name="setKeywords" id="setKeywords" value="">
		<input type="hidden" name="formatDate" id="formatDate" value="${ni.publishDate}">
		<input type="hidden" name="setKeywordsAr" id="setKeywordsAr" value="">		
		
		<input type="hidden" name="objUser" id="objUser" value="11" />
		<input type="hidden" name="oName" value="NewsItem" id="oName" />
		
		
		
		<div class="control-group">
			<label class="control-label col-xs-3" for="setTitle">Title&nbsp;(English)</label>
			<div class="col-xs-9">			
				<input required="required" type="text" id="setTitle" class="form-control" name="setTitle" maxlength="255" placeholder="Title" value="${ni.title}"	pattern="[A-Za-z]+([0-9]|\s|'|[A-Za-z])*" />
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label col-xs-3" for="setTitleAr">Title&nbsp;(Arabic)<font color="red">*</font>
			</label>
			<div class="col-xs-9">			
				<input required="required" type="text" id="setTitleAr" class="form-control no" value="${ni.titleAr}" name="setTitleAr" maxlength="255" dir="rtl" />
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label col-xs-3" for="setPublishDate">Publish&nbsp;Date<font color="red">*</font>
			</label>
			<div class="col-xs-9">
				<input required="required" type="text" id="setPublishDate" class="form-control"  name="setPublishDate" />
			</div>
		</div>		
		
		<div class="control-group">
			<label class="control-label col-xs-3" for="objNewsCategory">Category<font color="red">*</font></label>
			<div class="col-xs-9">			
			<select id="objNewsCategory" name="objNewsCategory" class="form-control">				
				<c:forEach var="c" items="${NewsCategoryFacade.getAllNewsCategories()}">
					<option value="${c.id}" ${(ni.newsCategory.id == c.id)?"selected":""}>${c.name}</option>
				</c:forEach>
			</select>
			</div>			
		</div>		
				
		<div class="control-group">
			<label class="control-label col-xs-3" for="setDisplay">Display<font color="red">*</font>
			</label>
			<div class="col-xs-9">
				<select id="setDisplay" name="setDisplay" class="form-control">
					<option value="0" ${(ni.display==0)?"selected":""}>No</option>
					<option value="1" ${(ni.display==1)?"selected":""}>Yes</option>
				</select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label col-xs-3" for="setPromote">Promote<font color="red">*</font>
			</label>
			<div class="col-xs-9">
				<select id="setPromote" name="setPromote" class="form-control">
					<option value="0" ${(ni.promote==0)?"selected":""}>No</option>
					<option value="1" ${(ni.promote==0)?"selected":""}>Yes</option>
				</select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label col-xs-12 aleft" for="editor_EN">Content&nbsp;(English)</label>
			<div class="col-xs-12">
				<textarea class="ckeditor" cols="80" name="editor_EN"
					id="editor_EN" rows="10" tabindex="1">${ni.content}</textarea><br />
				<a data-toggle="modal" href="javascript:openObjectSelectionModal('images','multiple','editor_EN','selectedFiles');" class="btn btn-primary">Insert Image(s)</a>
				<a data-toggle="modal" href="javascript:openObjectSelectionModal('documents','multiple','editor_EN','selectedFiles');" class="btn btn-primary">Insert Document(s)</a>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label col-xs-12 aleft" for="editor_AR">Content&nbsp;(Arabic)</label>
			<div class="col-xs-12">
				<textarea class="ckeditor" cols="80" name="editor_AR"
					id="editor_AR" rows="10" tabindex="1">${ni.contentAr}</textarea><br />
				<a data-toggle="modal" href="javascript:openObjectSelectionModal('images','multiple','editor_AR','selectedFiles');" class="btn btn-primary">Insert Image(s)</a>
				<a data-toggle="modal" href="javascript:openObjectSelectionModal('documents','multiple','editor_AR','selectedFiles');" class="btn btn-primary">Insert Document(s)</a>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label col-xs-12 aleft" for="setSummary">Summary&nbsp;(English)</label>
			<div class="col-xs-12">
				<textarea id="setSummary" name="setSummary" class="form-control"
					rows="3">${ni.summary}</textarea>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label col-xs-12 aleft" for="setSummaryAr">Summary&nbsp;(Arabic)</label>
			<div class="col-xs-12">
				<textarea id="setSummaryAr" name="setSummaryAr"
					class="form-control" rows="3" dir="rtl">${ni.summaryAr}</textarea>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label col-xs-12 aleft" for="ni_Keywords">Keywords&nbsp;(English)</label>
				<div class="col-xs-12">
				<span style="display:block">
				<input type="text"  id="ni_Keywords"
					name="ni_Keywords"  value="${ni.keywords}"
					maxlength="255" style="width:100%" />
				</span>
				</div>
		</div>
		<div class="control-group">
			<label class="control-label col-xs-12 aleft" for="ni_KeywordsAr">Keywords&nbsp;(Arabic)</label>
				<div class="col-xs-12">
				<span style="display:block">
				<input type="text"  id="ni_KeywordsAr"
					name="ni_KeywordsAr"
					value="${ni.keywordsAr}" maxlength="255" style="width:100%"/>
				</span>
				</div>
		</div>
		<br />
		<div id="form-actions">
			<input type="submit" id="btn_Ok" name="btn_Ok" value="Ok" class="btn btn-primary"> <input
					type="button" value="Delete" class="btn btn-danger"> <input
					type="button" value="Cancel" class="btn">
		</div>
		<input type="hidden" id="selectedFiles" name="selectedFiles" />
		</form>
		
	</div>
	
<!--  Image and Doc Management Modals -->	
<jsp:include page="/includes/common_imageDocManagement.jsp" />
	
</body>
<script>
function formattedDate()
{
	var dt = new Date($("#formatDate").val());
	//alert(dt.getDate() + "/" + (dt.getMonth()+1) + "/" + dt.getFullYear());
	return dt.getDate() + "/" + (dt.getMonth()+1) + "/" + dt.getFullYear();	
}

function showAlert(msg, cls)
{
	if(cls != '')
		$('#alert-body').addClass(cls);
	
	$('#alert-body').text(msg);
	$('#alertModal').modal('show');

}



$(function() { 
	  
	//From fupload.js. For styling FILE HTML INPUT
	$('input[type=file]').bootstrapFileInput();
	
	$('#listFilter1').change(function() { doFilter(); } );
	$('#listFilter2').change(function() { doFilter(); } );
	
	$( "#setPublishDate" ).datepicker();
    $( "#setPublishDate" ).datepicker("option", "dateFormat", "dd/mm/yy");
    $( "#setPublishDate" ).datepicker("setDate", formattedDate());
    $("#ni_Keywords").select2({
		tags : [],
		multiple : true,
		tokenSeparators : [ "," ]
	});
	$("#ni_KeywordsAr").select2({
		tags : [],
		multiple : true,
		tokenSeparators : [ "," ]
	});
    
  });
  
  (function($, W, D) {
		var JQUERY4U = {};
		JQUERY4U.UTIL = {
			setupFormValidation : function() {
				//form validation rules
				$("#nItem").validate({
					rules : {
						setTitle : "required",
						setTitleAr : "required",
						setPublishDate : "required"						
					},
					messages : {
						setTitle : "<small style='color:red'>Title is required!</small>",
						setTitleAr : "<small style='color:red''>Title in arabic is required!</small>",
						setPublishDate : "<small style='color:red'>Publish Date is required!</small>"
					},
					submitHandler : function(form) {
						
						if ($("#id").val() == "")
							createNewsItem();
						else
							updateNewsItem();						
					}
				});
			}
		}

		//when the dom has loaded setup form validation rules
		$(D).ready(function($) {
			JQUERY4U.UTIL.setupFormValidation();
		});

	})(jQuery, window, document);
  
  
function createNewsItem() {
	  
	    $("#setContent").val(getHTML("editor_EN"));
		$("#setContentAr").val(getHTML("editor_AR"));

	
		$("#setKeywords").val($("#ni_Keywords").val());
		$("#setKeywordsAr").val($("#ni_KeywordsAr").val());

		

		$.ajax({
					type : "POST",
					url : "../AjaxToDB.do",
					data : $("#nItem").serialize(),
					dataType : "text",
					async : false,
					success : function(objID, status) {
						$.ajax({
							url : "../Reloader.do?o=NewsItem",
							success : function() {
								if($("input[type=file]").val() != "")
								{
									$("#rPath").val(location);
									$("#imageFile").attr("action","../FileUpload.do?fid=" + objID);
									$("#imageFile").submit();
								}
								//else
								//	location.reload();
								showAlert("News Item Created!");
							}
						});},
					error: function(){
						showAlert("Error in saving news Item!","error");
					}
		});
		//location.reload();		
  }
  
  function updateNewsItem() {
	  
	    $("#setContent").val(getHTML("editor_EN"));
		$("#setContentAr").val(getHTML("editor_AR"));

	
		$("#setKeywords").val($("#ni_Keywords").val());
		$("#setKeywordsAr").val($("#ni_KeywordsAr").val());
				
		$.ajax({
					type : "POST",
					url : "../AjaxToDB.do",
					data : $("#nItem").serialize(),
					dataType : "text",
					async : false,
					success : function(objID, status) {
						$.ajax({
							url : "../Reloader.do?o=NewsItem",
							success : function() {
								if($("input[type=file]").val() != "")
								{
									$("#rPath").val(location);
									$("#imageFile").attr("action","../FileUpload.do?fid=" + objID);
									$("#imageFile").submit();
								}
								//else
								//	location.reload();
								showAlert("News Item Updated!");
							}
						});},
					error: function(){
						showAlert("Error in updating news Item!","error");
					}
		});
		//location.reload();		
}
  
  function doFilter()
  {
	var cond = "";
  	
  	
  	if($('#listFilter1').val() != "")
  		cond = '[data-filter1=' + $('#listFilter1').val() + ']';
  	 	 	
  	if($('#listFilter2').val() != "")  	
  		cond += '[data-filter2*=' + $('#listFilter2').val() + ']';
  	
  	$('.listItem').hide();
  	if(cond != "")
  		$('.listItem' + cond).show();
  	else
  		$('.listItem').show();
  	
  }
  
  </script>
  
  <script language="javascript" type="text/javascript" src="../scripts/ckEditorInit.js"></script>
  <script language="javascript" type="text/javascript">
		$(function(){ initCKEDITOR('editor_EN','min');initCKEDITOR('editor_AR','min','ar');});
  </script>
</html>