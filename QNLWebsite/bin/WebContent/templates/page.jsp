<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<script src="http://localhost:8080/QNLWebsite/scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://localhost:8080/QNLWebsite/css/common.css" />
<link rel="stylesheet" href="http://localhost:8080/QNLWebsite/css/bootstrap.min.css" />
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
</head>
<body>
	<!-- Menu Begin -->
	<div class="container-fluid hMid">
		<div class="row-fluid">
			<div class="span10 offset1" style="padding-bottom: 3px">
				<form class="navbar-search pull-right" action="">
					<input type="text" class="search-query" placeholder="Search">
				</form>
			</div>
		</div>
		${CompleteMenu}
		<!-- Menu End -->
		<!-- Breadcrumbs Begin -->
		<div class="row-fluid">			
			<div class="span10 offset1">
				${BreadCrumbs}
			</div>
		</div>	
		<!-- Breadcrumbs End -->
		<!-- Page Content Begin -->
		<div class="row-fluid">
				<div class="span2 offset1">
					<ul class="nav nav-tabs nav-stacked">
						<li><a href="#">Page Relative Links</a></li>
						<li><a href="#">Page Relative Links</a></li>
						<li><a href="#">Page Relative Links</a></li>
						<li><a href="#">Page Relative Links</a></li>
					</ul>
				</div>
				<div class="span8">
					<div class="page-header">
						<h1>
							${PageHeader}
						</h1>
					</div>
					<jsp:include page="../pages/${PageContentFile}" />
				<!-- 
				<div class="well well-large">
					<h3>
						Cras hendrerit eleifend dolor eget porttitor. Class aptent taciti
						sociosqu ad litora torquent per conubia nostra, per inceptos
						himenaeos. Maecenas adipiscing rhoncus lacus, quis cursus ligula
						dapibus nec. Donec tempus nisi eget odio bibendum sed suscipit dui
						sollicitudin. In hac habitasse platea dictumst. Suspendisse vitae
						eros non lectus tincidunt congue. Donec blandit tincidunt lorem,
						in blandit sapien ultrices at. Integer dignissim eleifend diam,
						eget facilisis quam commodo nec. Sed in elit erat, vitae tristique
						lacus.
					</h3>
				</div>
				-->
				</div>
		</div>
		<!-- Page Content End -->
		<!-- Bottom Links Begin -->
		${CompleteBottomMenu}
		<div class="row-fluid">
			<div class="span12">
				<div class="hMid copyrights">
					<small>© Copyrights reserved 2013. Qatar National Library, a member of Qatar Foundation.</small>
				</div>
			</div> 
		</div>
		<!-- Bottom Links End -->
	</div>
</body>		
					
							