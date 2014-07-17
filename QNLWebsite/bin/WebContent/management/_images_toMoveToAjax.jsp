<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.qnl.core.LibImage,com.qnl.facade.LibImageFacade,com.qnl.management.HelperFunctions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<title>Manage Images</title>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="../scripts/bootstrap.min.js"></script>
<!--  <script src="../scripts/ajaxfileupload.js"></script> -->
<script src="../scripts/holder.js"></script>
<script src="../scripts/ckeditor/ckeditor.js"></script>
<script src="../scripts/sly.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<style>
	.pull-center
	{
		text-align:center;
		width:100%;		
	}
</style>
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
       		<input type="text" class="span12" id="selectedFiles1" name="selectedFiles1" />
       		<br />
       		<div class="control-group">
				<label class="control-label" for="editor_EN">Content
					(English)</label>
				<div class="controls">
					<textarea class="ckeditor" cols="80" name="editor_EN"
						id="editor_EN" rows="10" tabindex="1">${lpContent}</textarea><br />					
				</div>
			</div>
       		<a href="javascript:openObjectSelectionModal('images','single','editor_EN','selectedFiles1');" class="btn">Select Single Image</a>
       		<a href="javascript:openObjectSelectionModal('images','multiple','editor_EN','selectedFiles1');" class="btn">Select Multiple Images</a>
       		<a href="javascript:openObjectSelectionModal('documents','single',null,'selectedFiles1');" class="btn">Select Single Document</a>
       		<a href="javascript:openObjectSelectionModal('documents','multiple',null,'selectedFiles1');" class="btn">Select Multiple Documents</a>
       		<div id="myCarousel"></div>
       		<textarea id="myHTML" rows="10" cols="100"></textarea>
		</div>
	</div>	
  <!-- Modal -->
  <div class="modal fade span7" id="objectSelectionModal" tabIndex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="clearSelectionList();">&times;</button>
          <h4 class="modal-title">Upload an Image</h4>
        </div>
        <div class="modal-body">
			<input type="hidden" value="${param.f}" id="folderName" name="folderName" />
			
			<div id="folderUp" class="span6">
			</div>	
			<div class="span6" id="loadedObjects">	
			</div>        	
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="clearSelectionList();">Close</button>
          <button type="button" class="btn btn-primary" onclick="openSelectionAttributeModal();">Ok</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  
    <!-- Modal -->
  <div class="modal fade span7" id="selectionAttributeModal" tabIndex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="clearSelectionAttributeList();">&times;</button>
          <h4 class="modal-title">Caption(s) and Resize</h4>
        </div>
        <div class="modal-body">				
			<div class="span6" id="selectedObjects">	
			</div>        	
        </div>
        <div class="modal-footer">
        	<div class='pull-left'>
        	Display:&nbsp;&nbsp;
          <select id='formatDisplay' class='form-inline span2'>
          	<option value='Carousel'>Carousel</option>
          	<option value='HList'>Horizontal List</option>
          	<option value='VList'>Vertical List</option>
          </select>
        	&nbsp;&nbsp;Alignment:&nbsp;&nbsp;
          <select id='formatAlignment' class='form-inline span2'>
          	<option value='left'>Left</option>
          	<option value='center'>Center</option>
          	<option value='right'>Right</option>
          </select>
          &nbsp;&nbsp;Size:&nbsp;
          <input id='formatSize' type='text' class='form-inline span1' maxlength='3' value='300'>&nbsp;px
          </div>          	
          <button type="button" class="btn btn-default form-inline" data-dismiss="modal" onclick="clearSelectionAttributeList();">Close</button>
          <button type="button" class="btn btn-primary form-inline" onclick="insertHTML();">Ok</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  
  
</body>
<script language="javascript" type="text/javascript" src="../scripts/imageDocSelection.js"></script>
<script language="javascript" type="text/javascript" src="../scripts/ckEditorInit.js"></script>
<script language="javascript" type="text/javascript">

$(function(){ initCKEDITOR('editor_EN')});


</script>
</html>