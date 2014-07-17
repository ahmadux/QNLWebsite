<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<body>
	<div class="webPage">
		<div class="pageTop">
			<div class="logo"></div>
			<div class="topLinks"></div>
		</div>
		<div class="pageMenu">
			<div class="topMenu">
				<!--  To Do Top Menu -->
				${completeMenu}
				<t:userLogin user="${sessionScope.loggedInUser}"></t:userLogin>
			</div>

		</div>
		<div class="pageBreadCrumbs">
			<div class="breadCrumbs">
				<!--  To Do Bread Crumbs -->
				${BreadCrumbs}

			</div>
		</div>
		<div class="pageBody">
			<div class="leftMenu">
				<!--  To Do Left Menu -->
			</div>
			<div class="body">
				<jsp:include page="../pages/${PageContentFile}" />
			</div>
			<div class="rightMenu">
				<div class="miniServicesContainer">
					<div id="miniServices" class="miniServices">
						<h3>Weather</h3>
						<div class="acc">
							<t:weather></t:weather>
						</div>
						<h3>Top Stories</h3>
						<div class="acc">
							<t:topNews limitNews="5"></t:topNews>
						</div>
						<h3>Salah Times (Prayer)</h3>
						<div class="acc">
							<t:salah></t:salah>
						</div>
						<h3>Connect to Us</h3>
						<div class="acc"></div>
					</div>
				</div>				
				<script>
					$(function() {
						$("#miniServices").accordion();
					});
				</script>
			</div>
		</div>
		<div class="bottomMenu">
			<div class="cc3">
				<a href="">Link 1</a> <a href="">Link 2</a>
			</div>
			<div class="cc3">
				<a href="">Link 3</a> <a href="">Link 4</a>
			</div>
			<div class="cc3">
				<a href="">Link 5</a> <a href="">Link 6</a>
			</div>
		</div>
		<div class="copyRights">(C) Qatar National Library 2013. A
			member of Qatar Foundation.</div>
	</div>
</body>