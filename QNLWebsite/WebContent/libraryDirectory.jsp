<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" import="com.qnl.core.*,com.qnl.facade.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Directory of libraries in Qatar</title>
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/qnl2.css" />
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet" />
</head>
<body>
<div class="col-xs-12 libRegs" style="float: left;background-color: #111; overflow:hidden">	
	<div id="menu" class="img-rounded  small_menu img-rounded semitransparent col-sm-4">
		<a href="#">Academic Libraries</a><br />
		<a href="#">Governmental Libraries</a><br />
		<a href="#">Public Libraries</a><br />
		<a href="#">School Libraries</a><br />
		<a href="#">Special Libraries</a><br />
		<hr />
		<div class="img-rounded searchForm pull-left">			
			<div class="form-group pull-left">
				<label class="col-xs-3 control-label">Name</label>
				 <div class="col-xs-9">
					<input id="lib_Name" type="text" class="form-control" maxlength="100" placeholder="Library Name" />
				 </div>
			</div>
			<div class="form-group pull-left">
				<label class="col-xs-12 control-label"><input type="checkbox" id="lib_Open" />&nbsp;&nbsp;Open to Public</label>				 
			</div> 
			<div class="form-group pull-left">
				<label class="col-xs-3 control-label">Services</label>
				 <div class="col-xs-9">
					<input  type="text" class="form-control" maxlength="100" placeholder="ILL, audio-visual" id="lib_Services" />
				 </div>
			</div>
			<div class="form-group pull-left">
				<label class="col-xs-3 control-label">Location</label>
				 <div class="col-xs-9">
					<input  type="text" class="form-control" maxlength="100" placeholder="Library Address" id="lib_Location"  />
				 </div>
			</div>
			<div class="pull-right">
				<button class="btn brandingButton" id="btn_libFilter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
			</div> 
		</div>
	</div>
	<div class="col-xs-12 col-sm-8 libList">
		<span class="visible-xs"><button class="btn brandingButton" id="btn_hideMenu"><span class="glyphicon glyphicon-collapse-up"></span></button></span>
		<br />
		<c:forEach var="l" items="${LibRegistrationFacade.getLibraryRegistrationsSortedByName()}">
		<div class="libInfo" data_LibType="${l.libraryType}" data_LibName="${l.libraryName}" data_libServices="${l.libraryServices}" data_libLanguage="${l.libraryColLangs},${l.otherLanguages}">
			<font class="head">${l.libraryName}</font><br />
			<span class="small">
				<c:if test="${l.libraryEmail.trim().length() > 0}">
					<a class="small" href='mailTo:${l.libraryEmail.trim()}'><span class="arrow">&rarr;</span>${l.libraryEmail.trim()}</a>&nbsp;&nbsp;&nbsp;&nbsp;	
				</c:if>
				<c:if test="${l.libraryWebsite.trim().length() > 0}">
					<a class="small" href='${l.libraryWebsite.trim()}'><span class="arrow">&rarr;</span>${l.libraryWebsite.trim()}</a>&nbsp;&nbsp;&nbsp;&nbsp;	
				</c:if>
				<c:if test="${l.libraryFacebook.trim().length() > 0}">
					<a href='${l.libraryFacebook.trim()}'><i class="fa fa-facebook-square fa-2x"></i></a>
				</c:if>
				<c:if test="${l.libraryTwitter.trim().length() > 0}">
					<a href='${l.libraryTwitter.trim()}'><i class="fa fa-twitter-square fa-2x"></i></a>
				</c:if>	
			</span>
			<br />																	
			<table class="col-xs-12 dataTable">
				<tr>
					<td class="label col-xs-3">
						<b>Affiliation</b>
					</td>
					<td class="col-xs-9">
						${l.libraryAffOrganization}
					</td>
				</tr>
				<tr>
					<td class="label col-xs-3">
						Address
					</td>
					<td class="col-xs-9">
						${l.libraryPhyAddrress}
					</td>
				</tr>
				<tr>
					<td class="label col-xs-3">
						Mailing address
					</td>
					<td class="col-xs-9">
						${l.libraryMailAddress}
					</td>
				</tr>
				<tr>
					<td class="label col-xs-3">
						Contact Person(s)
					</td>
					<td class="col-xs-9">
						${l.libraryContacts}
					</td>
				</tr>
				<tr>
					<td class="label col-xs-3">
						Open to public
					</td>
					<td class="col-xs-9">
						${l.libraryPublicAccess==0?"No":"Yes"}
					</td>
				</tr>
				<tr>
					<td class="label col-xs-3">
						Phone
					</td>
					<td class="col-xs-9">
						${l.libraryPhone}
					</td>
				</tr>
				<tr>
					<td class="label col-xs-3">
						Fax
					</td>
					<td class="col-xs-9">
						${l.libraryFax}
					</td>
				</tr>
				<tr>
					<td class="label col-xs-3">
						Hours of Operations
					</td>
					<td class="col-xs-9">
						${l.libraryOperationHours}
					</td>
				</tr>
				<tr>
					<td class="label col-xs-3">
						Special Collections
					</td>
					<td class="col-xs-9">
						${l.librarySpecialCols}
					</td>
				</tr>
				<tr>
					<td class="label col-xs-3">
						Print Collection Size
					</td>
					<td class="col-xs-9">
						${l.libraryColSize}
					</td>
				</tr>
				<tr>
					<td class="label col-xs-3">
						Services
					</td>
					<td class="col-xs-9">
						${l.libraryServices}
					</td>
				</tr>
				<tr>
					<td class="label col-xs-3">
						Primary Language(s) of Collection
					</td>
					<td class="col-xs-9">
						${l.libraryColLangs}
					</td>
				</tr>
				<tr>
					<td class="label col-xs-3">
						Other Languages
					</td>
					<td class="col-xs-9">
						${l.otherLanguages}
					</td>
				</tr>
			</table>
		</div>
		</c:forEach>
	</div>	
</div>
</body>
<script>
$(function() {  
    $("#btn_hideMenu").click(function() {  
        $(".menu").toggleClass("menu_hide");
        
        if($(".menu").hasClass("menu_hide"))
        	$(this).html("<span class='glyphicon glyphicon-collapse-down'></span>");
        else
        	$(this).html("<span class='glyphicon glyphicon-collapse-up'></span>");
        
    });  
}); 	
</script>
</html>