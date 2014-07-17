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
					<li class="menu-toc-current" >A</li>
					<li>B</li>
					<li>C</li>
					<li>D</li>
					<li>E</li>
					<li>F</li>
					<li>G</li>
					<li>H</li>
					<li>I</li>
					<li>J</li>
					<li>K</li>
					<li>L</li>
					<li>M</li>
					<li>N</li>
					<li>O</li>
					<li>P</li>
					<li>Q</li>
					<li>R</li>
					<li>S</li>
					<li>T</li>
					<li>U</li>
					<li>V</li>
					<li>W</li>
					<li>X</li>
					<li>Y</li>
					<li>Z</li>					
				</ul>
				<div>
					<a href="http://www.qnl.qa">&larr; Back to QNL website</a>					
				</div>
			</div>

			<div class="bb-custom-wrapper">			
				<div id="bb-bookblock" class="bb-bookblock">
					<c:set var="m" value="" />
									
					<c:forEach var="db" items="${DBaseNCollectionFacade.getDbncsSortedByName()}">					
					<c:if test="${!m.equals(db.name.substring(0,1))&&(m.length() > 0)}">
							</div>
						</div>
					</div>
					</c:if>	
					<c:if test="${!m.equals(db.name.substring(0,1))}">
					<c:set var="m" value="${db.name.substring(0,1)}" />
					<div class="bb-item" id="__${m}">						
						<div class="content">
							<div class="scroller">
								<h2>${m}</h2>
					</c:if>			
																	
								<p>
									<font class="head">${db.name}</font>&nbsp;&nbsp;&nbsp;<a href="${db.url}">&rarr;</a>
									<br />
									<b>ACCESS:</b>&nbsp;${db.access.length() > 0?db.access:"open"}&nbsp;|&nbsp;<b>LANGUAGE(S):</b>&nbsp;${db.languages.length() > 0?db.languages:"English"}
									<br />
									${db.description}
									<br />
									
								</p>
											
					
					</c:forEach>
							</div>
						</div>
					</div>	
				</div>		
					
				<nav>
					<span id="bb-nav-prev">&larr;</span>
					<span id="bb-nav-next">&rarr;</span>
				</nav>

				<span id="tblcontents" class="menu-button">Table of Contents</span>

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

			});
			
			 $(function() {			        
					$("ul[id=menu-toc]").children().each(function(){
						var chr = $(this).text();
						if($("div[id=__" + chr + "]").length)
							$(this).html("<a href='#__" + chr + "'>" + chr + "</a>");
						else
							$(this).remove();
						
					});			  			
			  });
		</script>
	</body>
</html>
