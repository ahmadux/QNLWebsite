<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" import="com.qnl.core.*,com.qnl.facade.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Online Databases</title>
		<meta name="description" content="Online databases" />
		<meta name="keywords" content="" />
		<meta name="author" content="Usman Ahmad, Qatar National Library" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="../css/fullscreenbook/jquery.jscrollpane.custom.css" />
		<link rel="stylesheet" type="text/css" href="../css/fullscreenbook/bookblock.css" />
		<link rel="stylesheet" type="text/css" href="../css/fullscreenbook/custom.css" />
		<script src="../scripts/fullscreenbook/modernizr.custom.79639.js"></script>
	</head>
	<body>
		<div id="container" class="container">	
			<div class="menu-panel">
				<h3>Quick Jump</h3>
				<ul id="menu-toc" class="menu-toc">
					<li class="menu-toc-current" ><a href="#__Academic">Academic Libraries</a></li>
					<li><a href="#__Governmental">Governmental Libraries</a></li>
					<li><a href="#__Public">Public Libraries</a></li>
					<li><a href="#__School">School Libraries</a></li>
					<li><a href="#__Special">Special Libraries</a></li>
					<li><a href="#__Search">Search for a Library</a></li>										
				</ul>
				<div>
					<a href="http://www.qnl.qa">&larr; Back to QNL website</a>					
				</div>
			</div>

			<div class="bb-custom-wrapper">
				<div id="bb-bookblock" class="bb-bookblock">					
								<c:set var="t" value="" />								
								<c:forEach var="l" items="${LibRegistrationFacade.getLibraryRegistrationsSortedByTypeAndName()}">								
								<c:if test="${!t.equals(l.libraryType.split(',')[0].trim())&&(t.length() > 0)}">
											</div>
										</div>
									</div>	
								</c:if>	
								<c:if test="${!t.equals(l.libraryType.split(',')[0].trim())}">
								<c:set var="t" value="${l.libraryType.split(',')[0].trim()}" />
									<div class="bb-item" id="__${t}">						
										<div class="content">
											<div class="scroller">
												<h2>${t.replace("y","")}ies</h2>
								</c:if> 
								<p>
									<font class="head">${l.libraryName}</font><br />
									<span class="small">
										<c:if test="${l.libraryEmail.trim().length() > 0}">
											<a class="small" href='mailTo:${l.libraryEmail.trim()}'><span class="arrow">&rarr;</span>${l.libraryEmail.trim()}</a>&nbsp;&nbsp;&nbsp;&nbsp;	
										</c:if>
										<c:if test="${l.libraryWebsite.trim().length() > 0}">
											<a class="small" href='${l.libraryWebsite.trim()}'><span class="arrow">&rarr;</span>${l.libraryWebsite.trim()}</a>&nbsp;&nbsp;&nbsp;&nbsp;	
										</c:if>
										<c:if test="${l.libraryFacebook.trim().length() > 0}">
											<a href='${l.libraryFacebook.trim()}'><img src='../images/facebook.png' border='0' alt="Facebook" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
										</c:if>
										<c:if test="${l.libraryTwitter.trim().length() > 0}">
											<a href='${l.libraryTwitter.trim()}'><img src='../images/twitter.png' border='0' alt="Twitter" /></a>
										</c:if>	
									</span>
									<br />																	
									<table style="margin-left:150px;padding:5px;width:80%" id="table">
										
										<tr>
											<td class="label">
												<b>Affiliation</b>
											</td>
											<td>
												${l.libraryAffOrganization}
											</td>
										</tr>
										<tr>
											<td class="label">
												Address
											</td>
											<td>
												${l.libraryPhyAddrress}
											</td>
										</tr>
										<tr>
											<td class="label">
												Mailing address
											</td>
											<td>
												${l.libraryMailAddress}
											</td>
										</tr>
										<tr>
											<td class="label">
												Contact Person(s)
											</td>
											<td>
												${l.libraryContacts}
											</td>
										</tr>
										<tr>
											<td class="label">
												Open to public
											</td>
											<td>
												${l.libraryPublicAccess==0?"No":"Yes"}
											</td>
										</tr>
										<tr>
											<td class="label">
												Phone
											</td>
											<td>
												${l.libraryPhone}
											</td>
										</tr>
										<tr>
											<td class="label">
												Fax
											</td>
											<td>
												${l.libraryFax}
											</td>
										</tr>
										<tr>
											<td class="label">
												Hours of Operations
											</td>
											<td>
												${l.libraryOperationHours}
											</td>
										</tr>
										<tr>
											<td class="label">
												Special Collections
											</td>
											<td>
												${l.librarySpecialCols}
											</td>
										</tr>
										<tr>
											<td class="label">
												Print Collection Size
											</td>
											<td>
												${l.libraryColSize}
											</td>
										</tr>
										<tr>
											<td class="label">
												Services
											</td>
											<td>
												${l.libraryServices}
											</td>
										</tr>
										<tr>
											<td class="label">
												Primary Language(s) of Collection
											</td>
											<td>
												${l.libraryColLangs}
											</td>
										</tr>
										<tr>
											<td class="label">
												Other Languages
											</td>
											<td>
												${l.otherLanguages}
											</td>
										</tr>
									</table>															
								</p>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="bb-item" id="__Search">						
						<div class="content">
							<div class="scroller">
								<h2>Search for a Library</h2>								
								<div class="searchForm">
									Library Name<br />
									<input type="text" id="s_name" size="50" maxlength="100" />
									<br />
									Offers Service
									<br />
									<input type="text" id="s_service" size="50" maxlength="100" />
									<br />
									Supports Language
									<br />
									<input type="text" id="s_lang" size="50" maxlength="100" />
									<br />
									<input type="button" value="Search" onclick="searchLibrary();">																		
								</div>
								<c:forEach var="l" items="${LibRegistrationFacade.getLibraryRegistrationsSortedByName()}">
								<div class="library" lname="${l.libraryName.toUpperCase()}" ltype="${l.libraryType}" llang="${l.libraryColLangs.toUpperCase()},${l.otherLanguages.toUpperCase()}" lservices="${l.libraryServices.toUpperCase()}" />
								<p>
									<font class="head">${l.libraryName}</font><br />
									<span class="small">
										<c:if test="${l.libraryEmail.trim().length() > 0}">
											<a class="small" href='mailTo:${l.libraryEmail.trim()}'><span class="arrow">&rarr;</span>${l.libraryEmail.trim()}</a>&nbsp;&nbsp;&nbsp;&nbsp;	
										</c:if>
										<c:if test="${l.libraryWebsite.trim().length() > 0}">
											<a class="small" href='${l.libraryWebsite.trim()}'><span class="arrow">&rarr;</span>${l.libraryWebsite.trim()}</a>&nbsp;&nbsp;&nbsp;&nbsp;	
										</c:if>
										<c:if test="${l.libraryFacebook.trim().length() > 0}">
											<a href='${l.libraryFacebook.trim()}'><img src='../images/facebook.png' border='0' alt="Facebook" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
										</c:if>
										<c:if test="${l.libraryTwitter.trim().length() > 0}">
											<a href='${l.libraryTwitter.trim()}'><img src='../images/twitter.png' border='0' alt="Twitter" /></a>
										</c:if>	
									</span>
									<br />																	
									<table style="margin-left:150px;padding:5px;width:80%" id="table">
										<tr>
											<td class="label">
												<b>Type</b>
											</td>
											<td>
												${l.libraryType}
											</td>
										</tr>
										<tr>
											<td class="label">
												<b>Affiliation</b>
											</td>
											<td>
												${l.libraryAffOrganization}
											</td>
										</tr>
										<tr>
											<td class="label">
												Address
											</td>
											<td>
												${l.libraryPhyAddrress}
											</td>
										</tr>
										<tr>
											<td class="label">
												Mailing address
											</td>
											<td>
												${l.libraryMailAddress}
											</td>
										</tr>
										<tr>
											<td class="label">
												Contact Person(s)
											</td>
											<td>
												${l.libraryContacts}
											</td>
										</tr>
										<tr>
											<td class="label">
												Open to public
											</td>
											<td>
												${l.libraryPublicAccess==0?"No":"Yes"}
											</td>
										</tr>
										<tr>
											<td class="label">
												Phone
											</td>
											<td>
												${l.libraryPhone}
											</td>
										</tr>
										<tr>
											<td class="label">
												Fax
											</td>
											<td>
												${l.libraryFax}
											</td>
										</tr>
										<tr>
											<td class="label">
												Hours of Operations
											</td>
											<td>
												${l.libraryOperationHours}
											</td>
										</tr>
										<tr>
											<td class="label">
												Special Collections
											</td>
											<td>
												${l.librarySpecialCols}
											</td>
										</tr>
										<tr>
											<td class="label">
												Print Collection Size
											</td>
											<td>
												${l.libraryColSize}
											</td>
										</tr>
										<tr>
											<td class="label">
												Services
											</td>
											<td>
												${l.libraryServices}
											</td>
										</tr>
										<tr>
											<td class="label">
												Primary Language(s) of Collection
											</td>
											<td>
												${l.libraryColLangs}
											</td>
										</tr>
										<tr>
											<td class="label">
												Other Languages
											</td>
											<td>
												${l.otherLanguages}
											</td>
										</tr>
									</table>															
								</p>
								</div>
								</c:forEach>
							</div>
						</div>
					</div>											
				<nav>
					<span id="bb-nav-prev">&larr;</span>
					<span id="bb-nav-next">&rarr;</span>
				</nav>

				<span id="tblcontents" class="menu-button">Quick Menu</span>

			</div>
				
		</div><!-- /container -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="../scripts/fullscreenbook/jquery.mousewheel.js"></script>
		<script src="../scripts/fullscreenbook/jquery.jscrollpane.min.js"></script>
		<script src="../scripts/fullscreenbook/jquerypp.custom.js"></script>
		<script src="../scripts/fullscreenbook/jquery.bookblock.js"></script>
		<script src="../scripts/fullscreenbook/page.js"></script>
		<script>
			
			$(function() {
				
				Page.init();
				
				$("td").each(function()	{
					if($(this).text().trim() == "")
						$(this).text("--");
					//alert($(this).text());
				});
				
				$("div[class=library]").hide();
				
				
			});
			
			function searchLibrary()
			{
				$("div[class=library]").hide();
				
				var srch = "";
				var srchCriteria = "";
				if($("#s_name").val() != "")
					srch = "N";
				if($("#s_lang").val() != "")
					srch += "L";
				if($("#s_service").val() != "")
					srch += "S";
				
				
				if(srch.indexOf("N") >= 0)
				{
					srchCriteria = "[lname*=" + $("#s_name").val().toUpperCase() + "]";					
				}
				
				if(srch.indexOf("L") >= 0)
				{
					srchCriteria += "[llang*=" + $("#s_lang").val().toUpperCase() + "]";					
				}
				
				if(srch.indexOf("S") >= 0)
				{
					
					srchCriteria += "[lservices*=" + $("#s_service").val().toUpperCase() + "]";					
				}
				
				$("div" + srchCriteria).show();
				var pane = $('#__Search .content');
				var api = pane.data('jsp');
				api.reinitialise();
			}
		</script>
	</body>
</html>
