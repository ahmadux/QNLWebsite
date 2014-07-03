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
	    $("input[id='~setApproved']").val($("input[id='approved']").prop("checked")?"1":"0"); 
	    //$("input[id='setMenuType']").val($("select[id='menuType']").val());
	    
 		$.ajax({
 			type: "POST",
 			url: "../AjaxToDB.do", //?setText=" + $("input[id='text']").val() +"&setTextAr=" + x + "&~setApproved=" + ($("input[id='approved']").prop("checked")?"1":"0")  +  "&setMenuType=" + $("select[id='type']").val() + "&setParentId=" + parentID + "&setExtra2=" + $("input[id='extUrl']").val() + "&setOrder=0&oName=LibMenu&objUser=11",
 			data:{
 				oName: "CustomUrl",
 				setFriendlyName: $("#setText").val(),
 				setUrl: $("#setExtra2").val()!=""?$("#setExtra2").val():"blank.html",
 				setUrlAr: $("#setExtra2Ar").val()!=""?$("#setExtra2Ar").val():"blank_AR.html",
 				objUser: $("#objUser").val()
 			},  				
 			dataType : "text",
			async : false,
 			success: function(objID, status){
 				$.ajax({url: "../Reloader.do?o=CustomUrl", async: false ,success: function() {
		 			$("#objCustomUrl").val(objID);
		 			
				    $.ajax({
			 			type: "POST",
			 			url: "../AjaxToDB.do", //?setText=" + $("input[id='text']").val() +"&setTextAr=" + x + "&~setApproved=" + ($("input[id='approved']").prop("checked")?"1":"0")  +  "&setMenuType=" + $("select[id='type']").val() + "&setParentId=" + parentID + "&setExtra2=" + $("input[id='extUrl']").val() + "&setOrder=0&oName=LibMenu&objUser=11",
			 			data: $("#mnu").serialize(),
			 			dataType : "text",
						async : false		 			           			
			 		});
 				}});
	    	$.ajax({url: "../Reloader.do?o=LibMenu", success: function() {location.reload();}});
	    	
 			}            			
 		}); 
  }
  
  function updateMenuItem()
  { 		
	    $("input[id='~setApproved']").val($("input[id='approved']").prop("checked")?"1":"0");
	    $.ajax({
 			type: "POST",
 			url: "../AjaxToDB.do", //?setText=" + $("input[id='text']").val() +"&setTextAr=" + x + "&~setApproved=" + ($("input[id='approved']").prop("checked")?"1":"0")  +  "&setMenuType=" + $("select[id='type']").val() + "&setParentId=" + parentID + "&setExtra2=" + $("input[id='extUrl']").val() + "&setOrder=0&oName=LibMenu&objUser=11",
 			data:{
 				id: $("#objCustomUrl").val(),
 				setFriendlyName: $("#setText").val(),
 				setUrl: $("#setExtra2").val()!=""?$("#setExtra2").val():"blank.html",
 				setUrlAr: $("#setExtra2Ar").val()!=""?$("#setExtra2Ar").val():"blank_AR.html",
 				objUser: $("#objUser").val(),
 				oName: "CustomUrl"
 			},  				
 			dataType : "text",
			async : false,
 			success: function(objID, status){
 				$.ajax({url: "../Reloader.do?o=CustomUrl", async: false ,success: function() {
		 			$("#objCustomUrl").val(objID);
		 			
				    $.ajax({
			 			type: "POST",
			 			url: "../AjaxToDB.do", //?setText=" + $("input[id='text']").val() +"&setTextAr=" + x + "&~setApproved=" + ($("input[id='approved']").prop("checked")?"1":"0")  +  "&setMenuType=" + $("select[id='type']").val() + "&setParentId=" + parentID + "&setExtra2=" + $("input[id='extUrl']").val() + "&setOrder=0&oName=LibMenu&objUser=11",
			 			data: $("#mnu").serialize(),
			 			dataType : "text",
						async : false		 			           			
			 		});
 				}});
	    		$.ajax({url: "../Reloader.do?o=LibMenu", success: function() {location.reload();}});    		
 			}
	    }); 		
  }
  
  function deleteMenuItem(IDD) 
  {
	  if(confirm("Are you sure you want to DELETE this menu item? It's children will not be deleted.")) { 
  	$.ajax({
			url: "../AjaxToDB.do?id=" + IDD + "&delete=true&oName=QLibMenu&action=delete",
			success: function(){
				$.ajax({
					url: "../AjaxToDB.do?id=" + $("input[id='objCustomUrl']").val() + "&delete=true&oName=CustomUrl",
					success: function(){
						$.ajax({url: "../Reloader.do?o=LibMenu,CustomUrl", success: function(){location.reload();}});		
					}            			
				});						
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
    		
    		$("input[id='id']").val(IDD); 
    		$("input[id='setParentId']").val(parentID);
    		$("input[id='setText']").val($(this).attr('itemText'));
    		$("input[id='setTextAr']").val($(this).attr('itemTextAR'));
    		$("input[id='setExtra2']").val($(this).attr('itemExtra2'));
    		$("input[id='setExtra2Ar']").val($(this).attr('itemExtra2Ar'));
    		$("input[id='setCSSClass']").val($(this).attr('itemCSSClass'));
    		$("input[id='setOrder']").val($(this).attr('itemOrder'));
    		$("input[id='objCustomUrl']").val($(this).attr('itemCUrlID'));
    		
    		
    		checkValue($(this).attr("itemApproved") == "1");
    		selectValue('setMenuType',$(this).attr('itemMenuType'));
    		
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
    		
    		$("input[id='id']").val(IDD); 
    		$("input[id='setParentId']").val(parentID);
    		$("input[id='setText']").val($(this).attr('itemText'));
    		$("input[id='setTextAr']").val($(this).attr('itemTextAR'));
    		$("input[id='setExtra2']").val($(this).attr('itemExtra2'));
    		$("input[id='setExtra2Ar']").val($(this).attr('itemExtra2Ar'));
    		$("input[id='setCSSClass']").val($(this).attr('itemCSSClass'));
    		$("input[id='setOrder']").val($(this).attr('itemOrder'));
    		$("input[id='objCustomUrl']").val($(this).attr('itemCUrlID'));
    		
    		
    		checkValue($(this).attr("itemApproved") == "1");
    		selectValue('setMenuType',$(this).attr('itemMenuType'));
    		
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
  	var sel = $("select[id='" + iName + "']");
  	sel.val(val).attr("selected");
  }
  
  function checkValue(v)
  {
	  var chk = $("input[id='approved']");	  
	  chk.prop("checked",v); 
	  
  }
  
 function newMenuItem()
 {
	 $("#menuList").children().each(function() {
	    	$(this).attr("class","ui-state-default");
	 });
	
	 $("#myModalLabel").text('New Menu Item'); 
	$("input[id='id']").val(''); 
	$("input[id='setText']").val('');
	$("input[id='setTextAr']").val('');
	$("input[id='setExtra2']").val('');
	$("input[id='setExtra2Ar']").val('');
	$("input[id='~setApproved']").val('');
	$("input[id='objCustomUrl']").val('');
	$("input[id='setCSSClass']").val('');
	$("input[id='setParentId']").val(parentID);
	$("input[id='setOrder']").val(0);
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
				<input type="hidden" name="id" id="id" />
				<input type="hidden" name="oName" id="oName" value="LibMenu" />
				<input type="hidden" name="objUser" id="objUser" value="11" />
				<input type="hidden" name="setParentId" id="setParentId" />
				<input type="hidden" name="setOrder" id="setOrder" value="" />
				
				<input type="hidden" name="objCustomUrl" id="objCustomUrl" />
				<input type="hidden" name="~setApproved" id="~setApproved" />	
				<div class="control-group">
					<label class="control-label" for="setText">Title<font
						color="red">*</font></label>
					<div class="controls">
						<input type="text" name="setText" id="setText" class="form-control" maxlength="50"  placeHolder="Menu Text" pattern="[A-Za-z]([0-9]|[A-Za-z]|\s)*" required="required" />
					</div>
				</div>
			
				<div class="control-group">
					<label class="control-label" for="textAr">Title (Arabic)<font
						color="red">*</font></label>
					<div class="controls">
						<input type="text" name="setTextAr" id="setTextAr" class="form-control" maxlength="50"   dir="rtl" required="required" /> 
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="setMenuType">Menu Type<font
						color="red">*</font></label>
					<div class="controls">
						<select id="setMenuType" name="setMenuType" class="form-control">
							<option value='MENU, SITEMAP'>MENU + SITEMAP (Both)</option>
							<option value='MENU ONLY'>MENU Only</option>
							<option value='SITEMAP ONLY'>SITEMAP Only</option>
						</select> 
					</div>
				</div>
				
				<div class="control-group">		
					<div class="controls">
						<label class="checkbox">
			  				<input type="checkbox" value="" name="approved" id="approved">Is Approved?
			  			</label>
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="cssClass">CSS Class</label>
					<div class="controls">
						<input type="text" name="setCSSClass" id="setCSSClass" class="form-control" maxlength="50" /> 
					</div>
				</div>	
				
				<div class="control-group">	
					<label class="control-label" for="setExtra2">External URL</label>	
					<div class="controls">
						<input type="text" name="setExtra2" id="setExtra2" value="" class="form-control"  maxlength="500" />
					</div>
				</div>	
				
				<div class="control-group">	
					<label class="control-label" for="setExtra2">External URL (Arabic)</label>	
					<div class="controls">
						<input type="text" name="setExtra2Ar" id="setExtra2Ar" value="" class="form-control"  maxlength="500" />
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