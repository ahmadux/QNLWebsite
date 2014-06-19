<%@ tag language="java" pageEncoding="UTF-8"%>
<div class="darkmaroon thinline shadowed"></div>
	<div>
		<nav class="navbar navbar-fixed-top navbar-brandingMaroon shadowed"	role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="logoRow col-xs-12">
					<div class="col-xs-8 col-sm-9 col-md-10  nopadding logo"></div>
					<div class="col-xs-4 col-sm-3 col-md-2 nopadding">
						<div class="topLinks pull-right">
							<div class="top">
								<button class="btn brandingButton" onclick="pageSlide(3,true,'Subscribe');">
									<span class="hidden-xs">Subscribe to e-Newsletter</span>
									<span class="visible-xs">Newsletter</span>
								</button>
							</div>
							<div class="bottom">
								<button class="btn brandingButton">
									<span class="hidden-xs">Accessibility</span><span
										class="visible-xs"><img src="images/accessibility.png"
										alt="" title="" width="16px" /></span>
								</button>
								&nbsp;
								<button class="btn brandingButton ar">ع</button>
							</div>
						</div>
					</div>
				</div>
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#landing">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a class="load_and_slide_left" href="${BaseServerPath}/pages/home.jsp"><span class="glyphicon glyphicon-home"></span></a></li>
					<li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Discover QNL<b class="caret"></b></a>
			          <ul class="dropdown-menu">
			            <li><a class="load_and_slide_left" href="${BaseServerPath}/pages/about.jsp">About QNL</a></li>
						<li><a class="load_and_slide_left" href="${BaseServerPath}/pages/discover.jsp">Vision and Mission</a></li>
			          </ul>
			        </li>								
					<li><a class="load_and_slide_left" href="">Collections</a></li>
					<li><a class="load_and_slide_left" href="">Children's Section</a></li>
					<li><a class="load_and_slide_left" href="">Heritage	Collection</a></li>
					<li><a class="load_and_slide_left" href="">Programs &amp; Services</a></li>
					<li><a class="load_and_slide_left" href="">Online Resources</a></li>
					<li><a class="load_and_slide_left" href="">Ask QNL</a></li>
				</ul>
			</div>
		</nav>
	</div>