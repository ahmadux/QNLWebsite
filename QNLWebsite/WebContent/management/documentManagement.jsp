<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.qnl.core.LibDocument,com.qnl.facade.LibDocumentFacade,com.qnl.management.HelperFunctions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<title>Manage Documents</title>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>

<script src="../scripts/bootstrap.min.js"></script>
<!--  <script src="../scripts/ajaxfileupload.js"></script> -->
<script src="../scripts/holder.js"></script>

<link rel="stylesheet" href="../css/bootstrap.min.css" />
</head>
<body>
	<div class="span8 offset2">		
       	<div class="controls img-rounded" style="margin-top: 5px;padding:10px;border: solid 1px #cccccc">
       		<c:choose>
       			<c:when test='${param.msg.startsWith("Error")}'><br />
       				<font color="red">${param.msg}</font>
       			</c:when>
       			<c:otherwise>
       				<font color="green">${param.msg}</font><br />
       			</c:otherwise>          			
       		</c:choose>			
	       	<form id="docForm" name="docForm" enctype="multipart/form-data" method="post" action="../FileManagement.do?fop=upload">
				<input type="file" name="file" id="file" accept="doc/doc, docx/docx, pdf/pdf, xls/xls, xlsx/xlsx, ppt/ppt, pptx/pptx, txt/txt, zip/zip" /> <br />
				<small><b>Note:</b>&nbsp;Please upload only document files (Word, Excel, PDF, Powerpoint). Multiple files can be uploaded as one zip file.</small>
				<br />
				<input type="hidden" name="nfn" id="nfn" value="" />
				<input type="hidden" name="rpath" id="rpath" value="management/documentManagement.jsp?f=${param.f}" />
				<input type="hidden" name="npath" id="npath" value='${(empty param.f)?"documents":param.f}' />				
		   		<button type="submit" id="btn_Upload" name="btn_Upload" class="btn btn-primary">Upload Document(s)</button>
		   		<a data-toggle="modal" href="#createModal" class="btn btn-warning">Create New Folder</a>
	   		</form>			
			<form id="imageForm2" name="imageForm2" method="post" action="../FileManagement.do?fop=delete">
				<input type="hidden" id="selectedFiles" name="selectedFiles"/>				
				<input type="hidden" name="rpath" id="rpath" value="management/documentManagement.jsp?f=${param.f}" />		
				<br />		
				<button id="btn_Delete" type="submit" name="btn_Delete" class="btn btn-danger">Delete Document(s)</button>&nbsp;&nbsp;<a href="javascript:clearDocumentList()" class="btn btn-default">Clear List</a>
			</form>
		</div>
	
	<c:choose>
		<c:when test='${(("documents" == param.f)||(empty param.f))}'>
			<b>Folder:</b><small>&nbsp;documents</small>
			${LibDocumentFacade.loadDocuments("documents")}
		</c:when>
		<c:otherwise>
			<b>Folder:</b><small>&nbsp;${param.f}</small>
			${LibDocumentFacade.loadDocuments(param.f)}
			<br />
			<div class="span2">				
				<div class="thumbnail img-rounded" style="text-align:center;height:160px;width:160px;padding:2px">
					<a href="javascript:folderUp('${param.f}');">
					<div class="caption" style="text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc">								
						<label>																
						Folder Up
						</label>								
					</div>
					<img data-src='holder.js/160x120' alt="..." title="" />
					</a>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
	</div>	
	<% int i=0; %>
	<div class="span8 offset2">
	
	<c:forEach items="${LibDocumentFacade.getLibDocuments()}" var="doc">
		<% if((i % 4) == 0) {%>		
		<div class="row"  style="padding-top:30px;">
		<%} %>
			<div class="span2">				
				<div class="thumbnail img-rounded" style="text-align:center;height:160px;width:160px;padding:2px"> 
					<c:choose>						
						<c:when test='${doc.documentSize.equals("0 bytes")}'>
							<a href="documentManagement.jsp?f=${doc.documentLocation}/${doc.documentName}">
							<div class="caption" style="text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc">								
								<label>																
								${doc.documentName}
								</label>								
							</div>
							<img data-src='holder.js/160x120' alt="..." title="" />
							</a>
						</c:when>
						<c:otherwise>
							<div style="overflow:hidden;height:100%;width:100%">
							<div class="caption" style="text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc">
								<div class="checkbox">
								<label>
								<input type="checkbox" onclick="selectDocument('/${doc.documentLocation}/${doc.documentName}',this);">								
								${doc.documentName}
								</label>
								</div>
								<small>
								<span class="text-muted">
								(${doc.documentSize})
								</span>
								</small>
							</div>
							<div style="overflow: hidden;height:100%;width:100%;text-align:center;vertical-align:middle">
								<a target="_blank" href="../${doc.documentLocation}/${doc.documentName}" ><img data-src='holder.js/160x120' alt="..." title="" /></a>
							</div>
							</div>
						</c:otherwise>
					</c:choose>					
				</div>	
			</div>
		<% if((i % 4) == 3){ %>		
			</div>
		<%} 
		i++;%>				
	</c:forEach>
	</div> 
	
	 

  <!-- Modal -->
  <div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Create New Folder</h4>
        </div>
        <form name="createForm" id="createForm" action="../FileManagement.do?fop=create" method="post">
        	<div class="modal-body">
        	      <label>Folder Name</label>
        	      <input type="hidden" name="npath" id="npath" value='${(empty param.f)?"documents":param.f}' />
        	      <input type="hidden" name="rpath" id="rpath" value="management/documentManagement.jsp?f=${param.f}" />	
		          <input type="text" class="span4" maxlength="100" placeholder="Folder Name" required="required" id="folderName" name="folderName" />          	
        	</div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          <button type="submit" class="btn btn-primary">Ok</button>
	        </div>
	    </form>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal --> 
</body>
<script language="javascript" type="text/javascript">
function selectDocument(x,obj)
{	
	if(obj.checked){
		if($("#selectedFiles").val() == "")
			$("#selectedFiles").val(x);
		else
			$("#selectedFiles").val($("#selectedFiles").val() + "," + x);
	}
	else
	{
		$("#selectedFiles").val($("#selectedFiles").val().replace("," + x,""));
		$("#selectedFiles").val($("#selectedFiles").val().replace(x + ",",""));
		$("#selectedFiles").val($("#selectedFiles").val().replace(x,""));
	}	
	if($("#selectedFiles").val() == "")
		$("#btn_Delete").addClass("disabled");
	else
		$("#btn_Delete").removeClass("disabled");	
}

function clearDocumentList()
{
	$("input[type=checkbox]").removeAttr('checked');
	$("#selectedFiles").val("");
	$("#btn_Delete").addClass("disabled");
}


$(function() {
   $("#btn_Upload").addClass("disabled");
   $("#btn_Delete").addClass("disabled");
   
   $("input:file").change(function (){
	   $("#btn_Upload").removeClass("disabled");
   });
   
});


function folderUp(f)
{
	//alert(f);
	var slashPos = f.lastIndexOf("/");
	window.location.href = "documentManagement.jsp?f=" + f.substring(0,slashPos);
}

</script>
</html>