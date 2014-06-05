<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Qatar National Library - Home Page</title>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro'
	rel='stylesheet' type='text/css'> 
	
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/qnl2.css" />
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet" />

<link rel="stylesheet" href="css/customNavbars.css" />
<link rel="stylesheet" href="css/weather.css" />
<!-- <script type="text/javascript"	src="http://js.addthisevent.com/atemay.js"></script> -->
<!--  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCYVOugOA98uoJHx9YpG83ui_dga5K4nAo&sensor=false&extension=.js"></script> -->
<script src="scripts/slidr.js"></script>
</head>
<body class="en">
	<div class="fullpage">
		<div class="darkmaroon thinline shadowed"></div>
		<div class="logoRow col-xs-12">
			<div class="col-xs-8 col-sm-9 col-md-10  nopadding logo"></div>
			<div class="col-xs-4 col-sm-3 col-md-2 nopadding">
				<div class="topLinks pull-right">
					<div class="top">
						<button class="btn brandingButton">
							<span class="hidden-xs">Subscribe to e-NewsLetter</span><span
								class="visible-xs">Newsletter</span>
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
		<div id="pageSlidr" style="width: 100%">
			<div data-slidr="landingPage" style="width: 100%">
				<div>
					<nav class="navbar navbar-brandingMaroon shadowed"
						role="navigation">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#lPage">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="lPage">
							<ul class="nav navbar-nav">
								<li class="active"><a href=""><span class="glyphicon glyphicon-home"></span></a></li>
								<li><a href="javascript:pageSlide('discover');selectItem(2);">Discover QNL</a></li>
								<li><a href="">Collections</a></li>
								<li><a href="">Children's Section</a></li>
								<li><a href="">Heritage	Collection</a></li>
								<li><a href="">Programs & Services</a></li>
								<li><a href="">Online Resources</a></li>
								<li><a href="">Ask QNL</a></li>
							</ul>

						</div>
					</nav>
				</div>
				<div class="home col-xs-12 landing pull-left">
					
					<div class="col-xs-12 col-md-2 col-md-offset-1 highSpaceTop pull-left semitransparent img-rounded">
						
						<h4 class="textOutlined">
							News <span class="archive"><a href="">News Archive</a></span>
						</h4>
						
						
						<span class="hidden-xs highSpaceTop"></span>
						<div id="newsSlidr">
							<div data-slidr="one" class="newsSlidr">

								<span class="newsImage img" data-Image="images/news1.jpg"></span>
								<span class="newsHeading textOutlined">Qatar National Library unveils new building</span>
								<span class="newsDate">25 January	2014</span>
								<span class="readmore archive"><a href="#">Read More</a></span>

							</div>
							<div data-slidr="two" class="newsSlidr">

								<span class="newsImage img" data-Image="images/news2.jpg"></span>
								<span class="newsHeading textOutlined">QNL as a center says Qatar Foundation</span>
								<span class="newsDate">25 January 2014</span>
								<span class="readmore archive"><a href="#">Read More</a></span>

							</div>
							<div data-slidr="three" class="newsSlidr">

								<span class="newsImage img" data-Image="images/news3.jpg"></span>								
								<span class="newsHeading textOutlined">Vision and Mission of Qatar National Library</span>
								<span class="newsDate">25 January 2014</span>
								<span class="readmore archive"><a href="#">Read More</a></span>								
							</div>
						</div>						
					</div>


					<div
						class="col-xs-12 col-md-4 col-md-offset-1 pull-left highSpaceTop nopadding">
						<h4 class="textOutlined hidden-xs">Calendar of Events</h4>
						<div id="eventSlidr" class="fullWidth nopadding">
							<div data-slidr="one" class="fullWidth nopadding">
								<div class="addthisevent semitransparent fullWidth nopadding">
									<div class="date">
										<span class="mon">FEB</span> <span class="day">12</span>
										<div class="bdr1"></div>
										<div class="bdr2"></div>
									</div>
									<div class="desc">
										<div class="hed">
											<strong>Car Safety Week @ QNL</strong>
											<span class="des">Location:
												QNL Building<br />When: 8 PM - 10 PM
											</span>
										</div>
										<div class="img" data-Image="images/events-carsafety.jpg">
										</div>
									</div>
								</div>
							</div>
							<div data-slidr="two" class="fullWidth nopadding">
								<div class="addthisevent semitransparent fullWidth nopadding">
									<div class="date">
										<span class="mon">MAR</span> <span class="day">15</span>
										<div class="bdr1"></div>
										<div class="bdr2"></div>
									</div>
									<div class="desc">
										<div class="hed">
											<strong>Gala Dinner</strong>
											<span class="des">Location:
												QNL Building<br />When: 8 PM - 10 PM
											</span>
										</div>
										<div class="img" data-Image="images/events-galadinner.jpg">
										</div>
									</div>
								</div>
							</div>
							<div data-slidr="three" class="fullWidth nopadding">
								<div class="addthisevent semitransparent fullWidth nopadding">
									<div class="date">
										<span class="mon">MAR</span> <span class="day">21</span>
										<div class="bdr1"></div>
										<div class="bdr2"></div>
									</div>
									<div class="desc">
										<div class="hed">
											<strong>Fireworks display</strong>
											<span class="des">Location:
												QNL Building<br />When: 8 PM - 10 PM
											</span>
										</div>
										<div class="img" data-Image="images/events-FIREWORKS.jpg">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="searchBox nopadding col-xs-12">
							<ul class="nav nav-tabs" id="myTab">
								<li class="active"><a href="#catalog" data-toggle="tab">Catalog</a></li>
								<li><a href="#website" data-toggle="tab">Website</a></li>
								<li><a href="#resources" data-toggle="tab">Resources</a></li>
							</ul>

							<div class="tab-content semitransparent">
								<div class="tab-pane active" id="catalog">
									<div class="col-xs-12">

										<div class="input-group">
											<input type="text" class="form-control"
												placeholder="Search our catalog"> <span
												class="input-group-btn">
												<button class="btn brandingButton" type="button">Search</button>
											</span>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="website">
									<div class="col-xs-12">

										<div class="input-group">
											<input type="text" class="form-control"
												placeholder="Search our website"> <span
												class="input-group-btn">
												<button class="btn brandingButton" type="button">Search</button>
											</span>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="resources">
									<div class="col-xs-12">

										<div class="input-group">
											<input type="text" class="form-control"
												placeholder="Search our online resources"> <span
												class="input-group-btn">
												<button class="btn brandingButton" type="button">Search</button>
											</span>
										</div>
									</div>
								</div>
							</div>

						</div>


					</div>

					<div
						class="loginBox semitransparent img-rounded col-xs-12 col-md-2 col-md-offset-1 pull-left highSpaceTop">

						<form role="form" action="" method="POST">
							<h4 class="textOutlined">Login to QNL databases</h4>
							<br />
							<div class="form-group">
								<label for="loginPin" class="heading">PIN Code</label> <input
									type="text" class="form-control" id="loginPin"
									placeholder="Enter PIN">
							</div>
							<div class="form-group">
								<label for="password" class="heading">Password</label> <input
									type="password" class="form-control" id="password">
							</div>
							<div class="helpLinks fullWidth ">
								<a href="">New to QNL?</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">Forgot
									password?</a>
							</div>
							<br />
							<button type="submit" class="btn brandingButton">Login</button>
						</form>

					</div>
				</div>
			</div>			
			<!-- Home Page -->
			<div data-slidr="discover" style="width: 100%">
				<div>
					<nav class="navbar navbar-brandingMaroon shadowed"
						role="navigation">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#discover">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="discover">
							<ul class="nav navbar-nav">
								<li><a href="javascript:pageSlide('landingPage');selectItem(1);"><span class="glyphicon glyphicon-home"></span></a></li>
								<li class="active"><a href="">Discover QNL</a></li>
								<li><a href="">Collections</a></li>
								<li><a href="">Children's Section</a></li>
								<li><a href="">Heritage Collection</a></li>
								<li><a href="">Programs & Services</a></li>
								<li><a href="">Online Resources</a></li>
								<li><a href="">Ask QNL</a></li>
							</ul>

						</div>
					</nav>
				</div>
				<div class="home discover col-xs-12 pull-left">
				<div class="row pull-left">
					<div class="sectionBox col-xs-12 col-md-2 col-md-offset-1 img-rounded semitransparent highSpaceTop pull-left">						
						<span class="sectionImage hidden-sm hidden-x img" data-Image="images/vision.png"></span>	
						<span class="sectionHeading">Vision and Mission</span> 
						<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
					</div>	
					<div class="sectionBox col-xs-12 col-md-2 img-rounded semitransparent highSpaceTop pull-left">						
						<span class="sectionImage hidden-sm hidden-xs img" data-Image="images/board.png"></span>	
						<span class="sectionHeading">Board of Directors</span> 
						<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
					</div>
					<div class="sectionBox col-xs-12 col-md-2 img-rounded semitransparent highSpaceTop pull-left">						
						<span class="sectionImage hidden-sm hidden-xs img" data-Image="images/message.png"></span>	
						<span class="sectionHeading">Director's Message</span> 
						<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
					</div>
					<div class="sectionBox col-xs-12 col-md-2 img-rounded semitransparent highSpaceTop pull-left">						
						<span class="sectionImage hidden-sm hidden-xs img" data-Image="images/children.jpg"></span>	
						<span class="sectionHeading">About QNL</span> 
						<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
					</div>
				</div>
				<div class="row pull-left">
					<div class="sectionBox col-xs-12 col-md-2 col-md-offset-1 img-rounded semitransparent highSpaceTop pull-left">						
						<span class="sectionImage hidden-sm hidden-xs img" data-Image="images/heritage.jpg"></span>	
						<span class="sectionHeading">QNL Brochure</span> 
						<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
					</div>
					<div class="sectionBox col-xs-12 col-md-2 img-rounded semitransparent highSpaceTop pull-left">						
						<span class="sectionImage hidden-sm hidden-xs img" data-Image="images/partners.png"></span>	
						<span class="sectionHeading">Partnerships</span> 
						<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
					</div>
					<div class="sectionBox col-xs-12 col-md-2 img-rounded semitransparent highSpaceTop pull-left">						
						<span class="sectionImage hidden-sm hidden-xs img" data-Image="images/teens.jpg"></span>	
						<span class="sectionHeading">The Building</span> 
						<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
					</div>
					<div class="sectionBox col-xs-12 col-md-2 img-rounded semitransparent highSpaceTop pull-left">						
						<span class="sectionImage hidden-sm hidden-xs img" data-Image="images/main.jpg"></span>	
						<span class="sectionHeading">Leaderships</span> 
						<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
					</div>
				</div>	
			</div>			
		</div>
		<!-- Discover -->
		</div>
		<!-- Page Slider -->
		<footer class="darkmaroon">
			<div class="bottomLinks col-xs-12">
				<span class="linkRow"><a href="#">Terms of use</a> <a
					href="#">Sitemap</a> <a href="#">Contact Us</a></span> <a href="#"><i
					class="fa fa-youtube-square fa-2x"></i></a> <a href="#"><i
					class="fa fa-facebook-square fa-2x"></i></a> <a href="#"><i
					class="fa fa-twitter-square fa-2x"></i></a> <a href="#"><i
					class="fa fa-linkedin-square fa-2x"></i></a> <a href="#"><i
					class="fa fa-rss-square fa-2x"></i></a>
			</div>
			<div class="copyrights col-xs-12">Copyrights © 2014 Qatar
				National Library. All rights reserved.</div>
		</footer>	
	<!-- fullpage -->
</body>
<script language="javascript">
var newsSlider;
var currentSlide = 0;
var eventSlider;

function pageSlideDir(dir) {
	pageSlider.slide(dir);
}

function pageSlide(slideID) {
	pageSlider.slide(slideID);
}

function selectItem(num) {		
	currentSlide = num - 1;
}

var pageSlider = slidr.create('pageSlidr', {
	breadcrumbs : false,
	controls : 'none',
	direction : 'horizontal',
	fade : true,
	overflow : true,
	theme : '#fff',
	timing : {
		'linear' : '0.5s ease-in'
	},
	touch : false
});
pageSlider
		.add(
				'h',
				[ 'landingPage', 'discover']).start();


function startSlide(optBC, slidrID, t, dir, slides, optFDir, opTheme,
		ovFlow, optCntrls,auto) {
	var trans = (dir == 'h' ? 'linear' : 'linear');

	var sl1 = slidr.create(slidrID, {
		breadcrumbs : optBC,
		controls : optCntrls,
		direction : dir == 'h' ? 'horizontal' : 'vertical',	
		fade : true,
		overflow : ovFlow,
		theme : opTheme,
		transition: trans,	    
		timing : {
			trans : '0.5s ease-in'
		},
		touch : true
	}).start();
	sl1.add(dir, slides);
	
	if(auto)
		sl1.auto(t, optFDir);
	
	return sl1;
}

$(document).ready(function() {

	resetSize();
	
	$("#newsSlidr").hover(function(){ newsSlider.stop(); },function(){ newsSlider.auto(); });
	$("#eventSlidr").hover(function(){ eventSlider.stop(); },function(){ eventSlider.auto(); });
	
	//serverTime = new Date($('.time').attr('data-serverTime')).getTime();
	//updateTime();
	
	window.onresize = function() {
		resetSize();
	};
	//insertWeatherIcon();
});

function resetSize() {

	var h = ($(window).height());
	
	if (h > 481) {
		$('.home').height(($(window).height()) - 215);
		$(".img").each( function() {		
			$(this).html("<img src='" + $(this).attr("data-Image") + "' alt='' title='' />");
		});
		
		
		
		$('#map').height(400);
	} else
		$('#map').height(300);
	

	newsSlider = startSlide(false, 'newsSlidr', 5000, 'h', [ 'one', 'two', 'three', 'one' ], 'right', '#fff', true, (h > 481)?'border':'corner',true);
	eventSlider = startSlide(false, 'eventSlidr', 5000, 'cube', [ 'one', 'two', 'three', 'one' ], 'up', '#fff', true, 'border',true);
	//startSlide((h > 600), 'hslidr', 5000, 'v', [ 'one', 'two', 'one' ],'down', '#222', false, 'none',true);
	//startSlide(true, 'salah_slidr', 5000, 'h', [ 'one', 'two', 'three',	'four', 'five', 'one' ], 'right', 'none', false, 'none',true);	
}


</script>
</html>