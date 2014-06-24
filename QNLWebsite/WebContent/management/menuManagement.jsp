<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" import="com.qnl.core.*,com.qnl.facade.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
  <style>  
  body{font-size: 12px; font-family:Trebuchet MS }
  #menuList .ui-selecting { background: #FECA40; }
  #menuList .ui-selected { background: #F39814; color: white; }
  #menuList { list-style-type: none; margin: 0; padding: 0px; width: 100%; }
  #menuList li { margin: 3px; padding: 0.4em; height: 18px; cursor:pointer }  
  input.text { padding: 2px; }  
  </style>
<title>Manage Menu</title>
</head>
<body>
  
  <script src="http://code.jquery.com/jquery-1.10.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
  <script src="../scripts/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../css/bootstrap.min.css" />
  
 

  
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
			url: "../AjaxToDB.do?id=" + IDD + "&delete=true&oName=LibMenu",
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
	
	$("#subsite").change(function() {
		alert();
		location.href = "menuManagement.jsp?subsite=" +  $("#subsite").val();
	});  
	
	
	  
	//alert(parentID);
    //$("input[type='button']").button();
    if(($("input[id='btn_BTP']").attr("menuPID") == "-1")||($("input[id='btn_BTP']").attr("menuPID") == ""))    
    	$("div[id='div_BTP']").hide();    	
    else
    	{
    		parentID = $("input[id='btn_BTP']").attr("menuPID");
    		$("div[id='div_BTP']").show();
    	}
  	//alert(parentID);
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
    		$("input[id='objCustomUrl']").val($(this).attr('itemCUrlID'));
    		selectValue($(this).attr('itemType'));
    		checkValue($(this).attr("itemApproved") == "1");
    		
    		$("#deleteButton").show();
    		$("#deleteButton").click(function() {deleteMenuItem(IDD)});
    		$("#subMenuButton").show();    		
    		$("#subMenuButton").click(function() {getSubMenu(IDD)});
    		$("#okButton").click(function() {updateMenuItem()});
    		
    		$("#modalForm").modal('show');
    	}
    	else
    		$(this).attr("class","ui-state-default");
    });
    
    $( "#menuList" ).sortable({containment:"parent"});
  });
  
  
  function setNewPositions()
  {
	  var i = 0;
	  $("#menuList").children().each(function(){
		var m = $(this);
		$.ajax("../AjaxToDB.do?id=" + m.attr("itemID") + "&setOrder=" + (i++) + "&oName=LibMenu&objUser=11");
		//alert(m.attr("itemID") + ": " + i++)
	  });
	  $.ajax("../Reloader.do?o=LibMenu");
	  $( "#dialog-message" ).dialog({
	      modal: true,
	      buttons: {
	        Ok: function() {
	          $( this ).dialog( "close" );
	        }
	      }
	    });
	  
  }
    
  function selectValue(val)
  {
  	//var sel = $("select[id='setMenuType']");
  	//sel.val(val).attr("selected");
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
	$("input[id='setParentId']").val(parentID);
	checkValue(false);
	
	
	$("#deleteButton").hide();
	$("#subMenuButton").hide();
	$("#okButton").click(function() {createMenuItem()});
	$("#modalForm").modal('show');
 }
 

  </script>
</head>
<body>
	<div id="div_BTP">
	<input type="button" id="btn_BTP" menuPID='${param["pID"]}' class="btn btn-success" value="Back To Parent" onclick="location.href='menuManagement.jsp?pId=' + $(this).attr('menuPID');" />
	<br />
	<br />
	</div>
	<div class="pull-left">	
		<select name="subsite" id="subsite">
		<c:forEach var="s" items="${loggedInUser.getAllSubsites()}">
			<option value="${s.id}" ${empty param.subsite?"":" selected"}>${s.name}</option>
		</c:forEach>			
		</select>
	</div>
	<br /><br />
	<div class="clearfix"></div>
	<div style="width:300px;border:solid 2px orange;" id="menuListHolder">
		
		<ol id="menuList">
			<c:forEach var="m" items='${LibMenuFacade.getAllChildMenuItems(param["pID"]==null?-1:param["pID"])}'>
		  	<li itemID="${m.id}" itemText="${m.text}" itemTextAR="${m.textAr}" itemOrder="${m.order}" itemCUrlID="${m.customUrl.id}" itemApproved="${m.approved}" itemExtra2Ar="${m.customUrl.urlAr}" itemExtra2="${m.customUrl.url}" class="ui-state-default" style="height:30px">${m.text}</li>
		  	</c:forEach>
		</ol>
	 </div>

<form id="mnu" name="mnu">
<input type="hidden" name="id" id="id" />
<input type="hidden" name="oName" id="oName" value="LibMenu" />
<input type="hidden" name="objUser" id="objUser" value="11" />
<input type="hidden" name="setParentId" id="setParentId" />
<input type="hidden" name="setOrder" id="setOrder" value="0" />

<input type="hidden" name="objCustomUrl" id="objCustomUrl" />
<input type="hidden" name="~setApproved" id="~setApproved" />

<div id="modalForm" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="padding:12px">
	<h3 id="myModalLabel">New Menu Item</h3>
	<div class="control-group">
		<label class="control-label" for="setText">Title<font
			color="red">*</font></label>
		<div class="controls">
			<input type="text" name="setText" id="setText" class="text" maxlength="50" size="27" placeHolder="Menu Text" pattern="[A-Za-z]([0-9]|[A-Za-z]|\s)*" required="required" /> <span
				class="help-inline">The title of the menu item.</span>
		</div>
	</div>

	<div class="control-group">
		<label class="control-label" for="textAr">Title (Arabic)<font
			color="red">*</font></label>
		<div class="controls">
			<input type="text" name="setTextAr" id="setTextAr" class="text" maxlength="50" size="27"  dir="rtl" required="required" /> <span
				class="help-inline">The title of the menu item in Arabic.</span>
		</div>
	</div>
	
	<div class="control-group">		
		<div class="controls">
			<label class="checkbox">
  				<input type="checkbox" value="" name="approved" id="approved">Is Approved?
  			</label>
		</div>
	</div>
	<!-- 
	<div class="control-group">	
		<label class="control-label" for="setMenuType">Menu Type</label>	
		<div class="controls">
			<select name="setMenuType" id="setMenuType">
			    	<option value="leftMenu">Left-hand Menu</option>
			    	<option value="topMenu">Top Menu</option>
			    	<option value="rightMenu">Right-hand Menu</option>
			</select>
		</div>
	</div>
	-->
	<div class="control-group">	
		<label class="control-label" for="setExtra2">External URL</label>	
		<div class="controls">
			<input type="text" name="setExtra2" id="setExtra2" value="" class="text" size="27" maxlength="500" />
		</div>
	</div>	
	
	<div class="control-group">	
		<label class="control-label" for="setExtra2">External URL (Arabic)</label>	
		<div class="controls">
			<input type="text" name="setExtra2Ar" id="setExtra2Ar" value="" class="text" size="27" maxlength="500" />
		</div>
	</div>
	
	<input id="okButton" type="button" class="btn btn-primary" aria-hidden="true" value="Ok " />
	<button id="deleteButton" class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Delete</button>
	<button id="subMenuButton" class="btn btn-warning" data-dismiss="modal" aria-hidden="true">Sub Menu</button>
	<button id="closeButton" class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
</div>
</form>

 <div id="dialog-message" title="Menu Order" style="display: none">
  <p>
    <span class="ui-icon ui-icon-circle-check" style="float: left; margin: 0 7px 50px 0;"></span>
    	New menu item positions have been saved.
  </p>
</div>
 
 <br />
 <input type="button" class="btn btn-primary" value="New Menu Item" onclick="newMenuItem();" />
 
 <!-- <input type="button" id="newMenuItem" value="New Menu Item" onclick="newMenu();" class="btn btn-primary"/> --> 
 <input type="button" value="Save New Menu Order" onclick="setNewPositions();"  class="btn" /> 
</body>
</html>