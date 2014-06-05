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
	       	<form id="imageForm" name="imageForm" enctype="multipart/form-data" method="post" action="../FileUpload.do">
				<input type="file" name="file" id="file" accept="image/jpg, image/gif, image/jpeg, image/png" /> <br />
				<small><b>Note:</b>&nbsp;Please upload only image files (JPG, JPEG, GIF, PNG)</small>
				<br />
				<input type="hidden" name="nfn" id="nfn" value="" />
				<input type="hidden" name="npath" id="npath" value="${param.f}" />
				<input type="hidden" name="rpath" id="rpath" value="" />								
		   		<button type="submit" id="btn_Upload" name="btn_Upload" class="btn btn-primary">Upload</button>
	   		</form>			
			<form id="imageForm2" name="imageForm2" method="post" action="../FileDelete.do">
				<input type="hidden" id="selectedImages" name="selectedImages"/>
				<input type="hidden" name="rpath" id="rpath" value="management/images.jsp?f=${param.f}" />		
				<br />		
				<button type="submit" id="btn_Delete" name="btn_Delete" class="btn btn-danger">Delete Image(s)</button>&nbsp;&nbsp;<a href="javascript:clearImageList()" class="btn btn-default">Clear List</a>
			</form>
		</div>		
		<input type="hidden" value="${param.f}" id="folderName" name="folderName" />
	<div id="folderUp">
	</div>
	<!-- 	
	<c:choose>
		<c:when test='${(("images" == param.f)||(empty param.f))}'>
			<b>Folder:</b><small>&nbsp;images</small>
			${LibImageFacade.loadImages("images")}
		</c:when>
		<c:otherwise>
			<b>Folder:</b><small>&nbsp;${param.f}</small>
			${LibImageFacade.loadImages(param.f)}
			<br />
			<div class="span2">				
				<div class="thumbnail img-rounded" style="text-align:center;height:160px;width:160px;padding:2px">
					
					<div class="caption" style="text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc">								
						<label>																
						<a href="javascript:folderUp('${param.f}');">Folder Up</a>
						</label>								
					</div>
					<img data-src='holder.js/160x120' alt="..." title="">
				</div>
			</div>
		</c:otherwise>
	</c:choose>
	-->		
	<%// int i=0; %>
	<div class="span8 offset2" id="loadedImages">
	<!-- 
	<c:forEach items="${LibImageFacade.getLibImages()}" var="img">
		<%// if((i % 4) == 0) {%>		
		<div class="row"  style="padding-top:30px;">
		<%//} %>
			<div class="span2">				
				<div class="thumbnail img-rounded" style="text-align:center;height:160px;width:160px;padding:2px"> 
					<c:choose>						
						<c:when test="${img.imageHeight == 0}">
							
							<div class="caption" style="text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc">								
								<label>																
								<a href="images.jsp?f=${img.imageLocation}/${img.imageName}">${img.imageName}</a>
								</label>								
							</div>
							<img data-src='holder.js/160x120' alt="..." title="">
							
						</c:when>
						<c:otherwise>
							<div style="overflow:hidden;height:100%;width:100%">
							<div class="caption" style="text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc">
								<div class="checkbox">
								<label>
								<input type="checkbox" onclick="selectImage('/${img.imageLocation}/${img.imageName}',this);">								
								${img.imageName}
								</label>
								</div>
								<small>
								<span class="text-muted">
								(${img.imageWidth}x${img.imageHeight})
								</span>
								</small>
							</div>
							<div style="overflow: hidden;height:100%;width:100%;text-align:center;vertical-align:middle">
								<a target="_blank" href="../${img.imageLocation}/${img.imageName}" ><img src='../${img.imageLocation}/${img.imageName}' alt="..." title=""></a>
							</div>
							</div>
						</c:otherwise>
					</c:choose>					
				</div>	
			</div>
		<%// if((i % 4) == 3){ %>		
			</div>
		<%//} 
		//i++;%>				
	</c:forEach>
	-->
	</div>
	
	  <!-- Button trigger modal -->
 

  <!-- Modal -->
  <div class="modal fade" id="uploadModal" tabIndex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Upload an Image</h4>
        </div>
        <div class="modal-body">
        	
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" onclick="ajaxFileUpload('${param.f}','')">Upload</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
</body>
<script language="javascript" type="text/javascript">
function selectImage(x,obj)
{	
	if(obj.checked){
		if($("#selectedImages").val() == "")
			$("#selectedImages").val(x);
		else
			$("#selectedImages").val($("#selectedImages").val() + "," + x);
	}
	else
	{
		$("#selectedImages").val($("#selectedImages").val().replace("," + x,""));
		$("#selectedImages").val($("#selectedImages").val().replace(x + ",",""));
		$("#selectedImages").val($("#selectedImages").val().replace(x,""));
	}	
	if($("#selectedImages").val() == "")
		$("#btn_Delete").addClass("disabled");
	else
		$("#btn_Delete").removeClass("disabled");	
}

function clearImageList()
{
	$("input[type=checkbox]").removeAttr('checked');
	$("#selectedImages").val("");
	$("#btn_Delete").addClass("disabled");
}

function submitTo(dos)
{
	$('#imageForm')[0].setAttribute('action', dos);
	
	$("#imageForm").submit();
}

$(function() {
   $("#btn_Upload").addClass("disabled");
   $("#btn_Delete").addClass("disabled");
   
   $("input:file").change(function (){
	   $("#btn_Upload").removeClass("disabled");
   });
   
});

$(document).ready(function() {
	var imageArray;
	
    getImages(loadImagesInFolder,'images');
});    
    
    
function loadFolderUp(fldr) 
{
	var theHTML = "";
	if((fldr == "images")||(fldr == ""))
		theHTML += "<b>Folder:</b><small>&nbsp;images</small>";
	else
	{
		theHTML += "<b>Folder:</b><small>&nbsp;" + fldr + "</small>";
		theHTML += "<br />";
		theHTML += "<div class='span2'>";
		theHTML += "<div class='thumbnail img-rounded' style='text-align:center;height:160px;width:160px;padding:2px'>";
		theHTML += "<div class='caption' style='text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc'>";
		theHTML += "<label>";
		theHTML += "<a href='javascript:folderUp(\"" + fldr + "\");'>Folder Up</a>";
		theHTML += "</label>";
		theHTML += "</div>";
		theHTML += "<img src='' alt='...' title=''>";
		theHTML += "</div>";
		theHTML += "</div>";
	}
	$("#folderUp").html(theHTML);
}
    
    function loadImagesInFolder()
    {    	
    	var theHTML = "";
    	
    	for(var i=0; i< imageArray.length; i++)
    	{
    		if((i % 4) == 0)
    			theHTML += "<div class='row'  style='padding-top:30px;''>";
    			
    		theHTML += "<div class='span2'><div class='thumbnail img-rounded' style='text-align:center;height:160px;width:160px;padding:2px'>";
    		
    		if(imageArray[i].height == 0)
    		{
    			theHTML += "<div class='caption' style='text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc'>";
    			theHTML += "<label><a href=\"javascript:getImages(loadImagesInFolder,'" + imageArray[i].location + "/" + imageArray[i].name + "')\">" + imageArray[i].name + "</a>"; 
    			//images.jsp?f=" + imageArray[i].location + "/" + imageArray[i].name + "'>" + imageArray[i].name + "</a>";
    			theHTML += "</label>";
    			theHTML += "</div>";			
				theHTML += "<img src='' alt='...' title=''>";
    		}
    		else
    		{
    			theHTML += "<div style='overflow:hidden;height:100%;width:100%'>";
    			theHTML += "<div class='caption' style='text-align:left;border-bottom:solid 1px #fff;margin-bottom:3px;padding-bottom:2px;background-color:#cccccc'>";
    			theHTML += "<div class='checkbox'>";
    			theHTML += "<label>";
    			theHTML += "<input type='checkbox' onclick=\"selectImage('/" + imageArray[i].location + "/" + imageArray[i].name + "',this);\">";
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
    		if((i % 4) == 3)
    			theHTML += "</div>";
    	};
    	$("#loadedImages").html(theHTML);
    };


function getImages(callback,fldr) {
	imageArray = new Array();
	$("npath").val(fldr);
	$("rpath").val("management/images.jsp?f=" + fldr);
    $.ajax({
    	type : 'GET',
        url  : 'imageArray.jsp?f=' + fldr,
        dataType : 'json',
        success  : function (data) {
            
            var image;
            var i=0;
            $.each( data, function( j, itemData ) {
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
        error    : function ( XMLHttpRequest, textStatus, errorThrown) {
            alert("An error has occured: " + errorThrown);            
            }       
   });
}

function folderUp(f)
{
	//alert(f);
	var slashPos = f.lastIndexOf("/");
	getImages(loadImagesInFolder, f.substring(0,slashPos));
	
}

</script>
</html>