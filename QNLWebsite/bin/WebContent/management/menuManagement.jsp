<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" import="com.qnl.core.*,com.qnl.facade.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<script src="../scripts/bootstrap.min.js"></script>



<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<link rel="stylesheet" href="../css/bootstrap.min.css" />

<style>  
  body{font-size: 12px; font-family:Trebuchet MS }
  #menuList .ui-selecting { background: #FECA40; }
  #menuList .ui-selected { background: #F39814; color: white; }
  #menuList , #sitemapOnlyList { list-style-type: none; margin: 0; padding: 0px; width: 100%; }
  #menuList li, #sitemapOnlyList li { margin: 3px; padding: 0.4em; height: 18px; cursor:pointer }  
   
  </style>
<title>Manage Menu</title>
</head>
<script>
  var parentID = -1;
  
  function createMenuItem()
  { 		
	    $("input[id='Menu_~setApproved']").val($("input[id='Menu_approved']").prop("checked")?"1":"0");
	    $("#CustomUrl_setFriendlyName").val($("#Menu_setText").val());
	    $("#CustomUrl_setUrl").val($("#Menu_setExtra2").val());
	    $("#CustomUrl_setUrlAr").val($("#Menu_setExtra2Ar").val());
	    
	  	//CustomUrl first then LibMenu
	    $("#oName").val("CustomUrl");
	  	
	    $("#action").val("doRoute_Create");
	    
 		$.ajax({
 			type: "POST",
 			url: "../AjaxToDB.do", 
 			data:$("#mnu").serialize(),				
 			dataType : "text",
			async : false,
 			success: function(objID, status){
 				alert("Menu item Created!");
 				$("#modalForm").modal('hide');
 				location.reload();
 			}	
 		}); 
  }
  
  function updateMenuItem()
  { 		
	    $("input[id='Menu_~setApproved']").val($("input[id='Menu_approved']").prop("checked")?"1":"0");
	    $("#CustomUrl_setFriendlyName").val($("#Menu_setText").val());
	    $("#CustomUrl_setUrl").val($("#Menu_setExtra2").val());
	    $("#CustomUrl_setUrlAr").val($("#Menu_setExtra2Ar").val());
	    
	  	//CustomUrl first then LibMenu  
		$("#oName").val("LibMenu");
	    
	    $("#action").val("doRoute_Update");
	    
	    $.ajax({
 			type: "POST",
 			url: "../AjaxToDB.do", 
 			data:$("#mnu").serialize(),
			dataType : "text",
			async : false,
			success: function(){
	    		alert("Menu item Updated!");
	    		$("#modalForm").modal('hide');
	    		location.reload();
 			}
	    }); 		
  }
  
  function deleteMenuItem(IDD) 
  {
	  if(confirm("Are you sure you want to DELETE this menu item? \n(It's children will also be deleted!)")) {
		  
		//Delete Menu first and then CustomUrl  
		$("#oName").val("LibMenu");
		
		$("#action").val("doRoute_Delete");
	  	$.ajax({
	  			type: "POST",
				url: "../AjaxToDB.do",
				data:$("#mnu").serialize(),				
	 			dataType : "text",
				async : false,
				success: function(){
					alert("Menu item Deleted!");
					$("#modalForm").modal('hide');
					location.reload();
				}            			
			}); 
  	  };
  }
  
  function getSubMenu(IDD) { location.href = "menuManagement.jsp?pID=" + IDD; }
  
  
  $(function() {
	
	
    if(($("input[id='btn_BTP']").attr("menuPID") == "-1")||($("input[id='btn_BTP']").attr("menuPID") == ""))    
    	$("div[id='div_BTP']").hide();    	
    else
    	{
    		parentID = $("input[id='btn_BTP']").attr("menuPID");
    		$("div[id='div_BTP']").show();
    	}
  	
    $("#menuList li").dblclick(function() {
    	if($(this).attr("class") == "ui-state-default")
    	{
    		$("#myModalLabel").text('Edit Menu Item');
    		var IDD = $(this).attr('itemID');
    		$(this).attr("class","ui-state-highlight");    		
    		$(this).siblings().attr("class","ui-state-default");
    		
    		$("input[id='Menu_id']").val(IDD); 
    		$("input[id='Menu_setParentId']").val(parentID);
    		$("input[id='Menu_setText']").val($(this).attr('itemText'));
    		$("input[id='Menu_setTextAr']").val($(this).attr('itemTextAR'));
    		$("input[id='Menu_setExtra2']").val($(this).attr('itemExtra2'));
    		$("input[id='Menu_setExtra2Ar']").val($(this).attr('itemExtra2Ar'));
    		$("input[id='Menu_setCSSClass']").val($(this).attr('itemCSSClass'));
    		$("input[id='Menu_setOrder']").val($(this).attr('itemOrder'));
    		$("input[id='CustomUrl_id']").val($(this).attr('itemCUrlID'));
    		
    		
    		checkValue($(this).attr("itemApproved") == "1");
    		selectValue('Menu_setMenuType',$(this).attr('itemMenuType'));
    		
    		$("#deleteButton").show();
    		$("#deleteButton").click(function() {deleteMenuItem(IDD);});
    		$("#subMenuButton").show();    		
    		$("#subMenuButton").click(function() {getSubMenu(IDD);});
    		$("#okButton").click(function() {updateMenuItem();});
    		
    		$("#modalForm").modal('show');
    	}
    	else
    		$(this).attr("class","ui-state-default");
    });
    
    $("#sitemapOnlyList li").dblclick(function() {
    	if($(this).attr("class") == "ui-state-default")
    	{
    		$("#myModalLabel").text('Edit Menu Item');
    		var IDD = $(this).attr('itemID');
    		$(this).attr("class","ui-state-highlight");    		
    		$(this).siblings().attr("class","ui-state-default");
    		
    		$("input[id='Menu_id']").val(IDD); 
    		$("input[id='Menu_setParentId']").val(parentID);
    		$("input[id='Menu_setText']").val($(this).attr('itemText'));
    		$("input[id='Menu_setTextAr']").val($(this).attr('itemTextAR'));
    		$("input[id='Menu_setExtra2']").val($(this).attr('itemExtra2'));
    		$("input[id='Menu_setExtra2Ar']").val($(this).attr('itemExtra2Ar'));
    		$("input[id='Menu_setCSSClass']").val($(this).attr('itemCSSClass'));
    		$("input[id='Menu_setOrder']").val($(this).attr('itemOrder'));
    		$("input[id='CustomUrl_id']").val($(this).attr('itemCUrlID'));
    		
    		
    		checkValue($(this).attr("itemApproved") == "1");
    		selectValue('Menu_setMenuType',$(this).attr('itemMenuType'));
    		
    		$("#deleteButton").show();
    		$("#deleteButton").click(function() {deleteMenuItem(IDD);});
    		$("#subMenuButton").show();    		
    		$("#subMenuButton").click(function() {getSubMenu(IDD);});
    		$("#okButton").click(function() {updateMenuItem();});
    		
    		$("#modalForm").modal('show');
    	}
    	else
    		$(this).attr("class","ui-state-default");
    });
    
    $( "#menuList" ).sortable({containment:"parent"});
  });
  
  
  function setNewPositions()
  {
	  var mis = "";
	  $("#menuList").children().each(function(){
		var m = $(this);
		mis += (mis!=""?",":"") + m.attr("itemID");
	  });
	  //alert(mis);
	  $.ajax({ url: "../Reloader.do?o=SaveMenuOrder&mIs=" + mis, success: function(){ alert("New menu positions have been saved!"); }});	  	  
  }
    
  function selectValue(iName,val)
  {
  	var sel = $("select[id='Menu_" + iName + "']");
  	sel.val(val).attr("selected");
  }
  
  function checkValue(v)
  {
	  var chk = $("input[id='Menu_approved']");	  
	  chk.prop("checked",v); 
	  
  }
  
 function newMenuItem()
 {
	 $("#menuList").children().each(function() {
	    	$(this).attr("class","ui-state-default");
	 });
	
	 $("#myModalLabel").text('New Menu Item'); 
	$("input[id='Menu_id']").val(''); 
	$("input[id='Menu_setText']").val('');
	$("input[id='Menu_setTextAr']").val('');
	$("input[id='Menu_setExtra2']").val('');
	$("input[id='Menu_setExtra2Ar']").val('');
	$("input[id='Menu_~setApproved']").val('');
	$("input[id='CustomUrl_id']").val('');
	
	$("input[id='Menu_setCSSClass']").val('');
	$("input[id='Menu_setParentId']").val(parentID);
	$("input[id='Menu_setOrder']").val(0);
	checkValue(false);
	//selectValue('setMenuType','MENU, STIEMAP');
	
	$("#deleteButton").hide();
	$("#subMenuButton").hide();
	$("#okButton").click(function() {createMenuItem();});
	$("#modalForm").modal('show');
 }
 

  </script>

<body>
	<div id="div_BTP">
	<input type="button" id="btn_BTP" menuPID='${param["pID"]}' class="btn btn-success" value="Back To Parent" onclick="location.href='menuManagement.jsp?pId=' + $(this).attr('menuPID');" />
	<br />
	<br />
	</div>	
	<div class="clearfix"></div>
	<div style="width:300px;border:solid 2px orange;" id="menuListHolder">
		<h3>Menu Items</h3>
		<ol id="menuList">
			<c:forEach var="m" items='${LibMenuFacade.getAllChildMenuItems(param["pID"]==null?-1:param["pID"],"MENU")}'>
		  	<li itemID="${m.id}" itemText="${m.text}" itemTextAR="${m.textAr}" itemOrder="${m.order}" itemCSSClass="${m.getCSSClass()}"  itemMenuType="${m.menuType}" itemCUrlID="${m.customUrl.id}" itemApproved="${m.approved}" itemExtra2Ar="${m.customUrl.urlAr}" itemExtra2="${m.customUrl.url}" class="ui-state-default" style="height:30px">${m.text}</li>
		  	</c:forEach>
		</ol>
		<h3>Other Items</h3>
		<ol id="sitemapOnlyList">
			<c:forEach var="m" items='${LibMenuFacade.getAllChildMenuItems(param["pID"]==null?-1:param["pID"],"SITEMAP ONLY")}'>
		  	<li itemID="${m.id}" itemText="${m.text}" itemTextAR="${m.textAr}" itemOrder="${m.order}" itemCSSClass="${m.getCSSClass()}"  itemMenuType="${m.menuType}" itemCUrlID="${m.customUrl.id}" itemApproved="${m.approved}" itemExtra2Ar="${m.customUrl.urlAr}" itemExtra2="${m.customUrl.url}" class="ui-state-default" style="height:30px">${m.text}</li>
		  	</c:forEach>
		</ol>
	 </div>
<div id="modalForm" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="padding: 3px">
  <div class="modal-dialog">
    <div class="modal-content">
	      <div class="modal-header">
	      	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title">New Menu Item</h4>        
	      </div>
	      <div class="modal-body">
	      <form id="mnu" name="mnu" class="form-horizontal">
				<input type="hidden" name="CustomUrl_id" id="CustomUrl_id" />
				<input type="hidden" name="Menu_id" id="Menu_id" />
				
				<input type="hidden" name="oName" id="oName" value="" />	
							
				<input type="hidden" name="CustomUrl_setUrl" id="CustomUrl_setUrl" value="" />
				<input type="hidden" name="CustomUrl_setUrlAr" id="CustomUrl_setUrlAr" value="" />
				<input type="hidden" name="CustomUrl_setFriendlyName" id="CustomUrl_setFriendlyName" value="" />				
				<input type="hidden" name="CustomUrl_objUser" id="CustomUrl_objUser" value="11" />
				<input type="hidden" name="Menu_objUser" id="Menu_objUser" value="11" />
				<input type="hidden" name="action" id="action" value="" />
				
				<input type="hidden" name="Menu_setParentId" id="Menu_setParentId" />
				<input type="hidden" name="Menu_setOrder" id="Menu_setOrder" value="" />							
				<input type="hidden" name="Menu_~setApproved" id="Menu_~setApproved" />
					
				<div class="control-group">
					<label class="control-label" for="setText">Title<font
						color="red">*</font></label>
					<div class="controls">
						<input type="text" name="Menu_setText" id="Menu_setText" class="form-control" maxlength="50"  placeHolder="Menu Text" pattern="[A-Za-z]([0-9]|[A-Za-z]|\s)*" required="required" />
					</div>
				</div>
			
				<div class="control-group">
					<label class="control-label" for="textAr">Title (Arabic)<font
						color="red">*</font></label>
					<div class="controls">
						<input type="text" name="Menu_setTextAr" id="Menu_setTextAr" class="form-control" maxlength="50"   dir="rtl" required="required" /> 
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="Menu_setMenuType">Menu Type<font
						color="red">*</font></label>
					<div class="controls">
						<select id="Menu_setMenuType" name="Menu_setMenuType" class="form-control">
							<option value='MENU, SITEMAP'>MENU + SITEMAP (Both)</option>
							<option value='MENU ONLY'>MENU Only</option>
							<option value='SITEMAP ONLY'>SITEMAP Only</option>
						</select> 
					</div>
				</div>
				
				<div class="control-group">		
					<div class="controls">
						<label class="checkbox">
			  				<input type="checkbox" value="" name="Menu_approved" id="Menu_approved">Is Approved?
			  			</label>
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="Menu_cssClass">CSS Class</label>
					<div class="controls">
						<input type="text" name="Menu_setCSSClass" id="Menu_setCSSClass" class="form-control" maxlength="50" /> 
					</div>
				</div>	
				
				<div class="control-group">	
					<label class="control-label" for="Menu_setExtra2">External URL</label>	
					<div class="controls">
						<input type="text" name="Menu_setExtra2" id="Menu_setExtra2" value="" class="form-control"  maxlength="500" />
					</div>
				</div>	
				
				<div class="control-group">	
					<label class="control-label" for="Menu_setExtra2">External URL (Arabic)</label>	
					<div class="controls">
						<input type="text" name="Menu_setExtra2Ar" id="Menu_setExtra2Ar" value="" class="form-control"  maxlength="500" />
					</div>
				</div>
		</form>
		</div>
		<div class="modal-footer">
			<input id="okButton" type="button" class="btn btn-primary" aria-hidden="true" value="Ok " />
			<button id="deleteButton" class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Delete</button>
			<button id="subMenuButton" class="btn btn-warning" data-dismiss="modal" aria-hidden="true">Sub Menu</button>
			<button id="closeButton" class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		</div>
		</div>
	</div>
	</div>
 
 <br />
 <input type="button" class="btn btn-primary" value="New Menu Item" onclick="newMenuItem();" />
 
 <!-- <input type="button" id="newMenuItem" value="New Menu Item" onclick="newMenu();" class="btn btn-primary"/> --> 
 <input type="button" value="Save New Menu Order" onclick="setNewPositions();"  class="btn" /> 
</body>
</html>