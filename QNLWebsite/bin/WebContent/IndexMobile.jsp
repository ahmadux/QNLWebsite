<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Qatar National Library - Home Page</title>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/qnl.css" />
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" />
	
<link rel="stylesheet" href="css/customNavbars.css" />
<link rel="stylesheet" href="css/weather.css" />
<!-- <script type="text/javascript"	src="http://js.addthisevent.com/atemay.js"></script> -->
<!--  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCYVOugOA98uoJHx9YpG83ui_dga5K4nAo&sensor=false&extension=.js"></script> -->
<script src="scripts/slidr.js"></script>
</head>
<body>
<div class="fullpage">
		<div class="darkgrey thinline shadowed"></div>
		<div class="logoRow col-xs-12">
			<div class="col-xs-6 col-sm-9 col-md-10  nopadding logo" >				
			</div>
			<div class="col-xs-6 col-sm-3 col-md-2 nopadding" >							
				<div class="topLinks pull-right">
					<div class="top"><a href="">Subscribe to QNL's e-NewsLetter</a></div>
					<div class="bottom"><a href="">e-Accessibility</a>&nbsp;&nbsp;&nbsp;<a href="">عربى</a></div>
				</div>
			</div>
		</div>
		<div id="pageSlidr" style="width: 100%">
			<div data-slidr="landingPage" style="width: 100%">
				<div>
					<nav class="navbar navbar-customBlack shadowed" role="navigation">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#lPage">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="lPage">
						<ul class="nav navbar-nav">
							<li class="active">
								<a href="javascript:pageSlide('landingPage');selectItem(1);"><span class="glyphicon glyphicon-home"></span></a></li>
							<li>
								<a href="">Discover QNL</a></li>
							<li>
								<a href="">Collections</a></li>	
							<li>
								<a href="javascript:pageSlide('childrenSection');selectItem(2);">Children's	Section</a></li>
							<li>
								<a href="javascript:pageSlide('heritageCollection');selectItem(2);">Heritage Collection</a></li>
							<li>
								<a href="">Programs & Services</a></li>
							<li>
								<a href="">Online Resources</a></li>							
							<li>
								<a href="">Ask QNL</a></li>
						</ul>

					</div>
					</nav>
				</div>
				<div class="home landingPage col-xs-12  landing">				
					<div class="col-xs-12 col-md-3 col-md-offset-1 highSpaceTop">
						<h4 class="textOutlined">News <span class="archive"><a href="">News Archive</a></span></h4>
						
						<div class="semitransparent img-rounded fullWidth newsItem">
							<span class="newsHeading textOutlined">Qatar National Library unveils it's new building</span> 
							<span class="newsDate">25 January 2014</span>
							<span class="readmore archive"><a href="#">Read More</a></span>								
						</div>
						
						<div class="semitransparent img-rounded fullWidth newsItem">
							<span class="newsHeading textOutlined">QNL as a center says Qatar Foundation</span>
							<span class="newsDate">25 January 2014</span>
							<span class="readmore archive"><a href="#">Read More</a></span>								
						</div>
						<div class="semitransparent img-rounded fullWidth newsItem">
							<span class="newsHeading textOutlined">Vision and Mission of Qatar National Library</span>
							<span class="newsDate">25 January 2014</span>
							<span class="readmore archive"><a href="#">Read More</a></span>
						</div>
					</div>
					
										
					<div class="eventBox col-xs-12 col-md-3 col-md-offset-1 pull-left highSpaceTop">						
						<h4 class="textOutlined hidden-xs hidden-sm">Calendar of Events</h4>
						<div id="event_slidr" class="fullWidth nopadding" >
							<div data-slidr="one" class="fullWidth nopadding">
								<div class="addthisevent semitransparent fullWidth nopadding">
									<div class="date">
										<span class="mon">FEB</span> <span class="day">12</span>
										<div class="bdr1"></div>
										<div class="bdr2"></div>
									</div>
									<div class="desc">
										<p>
											<strong class="hed">Grand Tour</strong> <span class="des">Location:
												QNL Building<br />When: 12 PM - 1 PM
											</span>
										</p>
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
										<p>
											<strong class="hed">Gala Dinner</strong> <span class="des">Location:
												QNL Building<br />When: 8 PM - 10 PM
											</span>
										</p>
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
										<p>
											<strong class="hed">Public Opening</strong> <span class="des">Location:
												QNL Building<br />When: 9 AM - 11 AM
											</span>
										</p>
									</div>									
								</div>
							</div>
						</div>
						<div class="searchBox col-xs-12 nopadding ">						
						<ul class="nav nav-tabs" id="myTab">
						  <li class="active"><a href="#catalog" data-toggle="tab">Catalog</a></li>
						  <li><a href="#website" data-toggle="tab">Website</a></li>
						  <li><a href="#resources" data-toggle="tab">Resources</a></li>						  
						</ul>
						
						<div class="tab-content semitransparent">
						  <div class="tab-pane active" id="catalog">
						  	<div class="col-xs-12">
						  		 
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Search our catalog" > <span class="input-group-btn">
										<button class="btn brandingButton" type="button">Search</button>
									</span>
								</div>								
							</div>
						  </div>
						  <div class="tab-pane" id="website">
						  	<div class="col-xs-12">
						  		
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Search our website" > <span class="input-group-btn">
										<button class="btn brandingButton" type="button">Search</button>
									</span>
								</div>								
							</div>
						  </div>
						  <div class="tab-pane" id="resources">
						  	<div class="col-xs-12">
						  		
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Search our online resources" > <span class="input-group-btn">
										<button class="btn brandingButton" type="button">Search</button>
									</span>
								</div>								
							</div>
						  </div>						  
					</div>
					
					</div>
					
					
					</div>
					
					<div  class="loginBox semitransparent img-rounded col-xs-12 col-md-2 col-md-offset-1 pull-left highSpaceTop">
						
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
							<div class="helpLinks fullWidth">
								<a href="">New to QNL?</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">Forgot
									password?</a>
							</div>
							<br />
							<button type="submit" class="btn brandingButton">Login</button>
						</form>
						
					</div>
				</div>
			</div> <!-- Home Page -->
		</div> <!-- Page Slider -->
		<footer class="darkgrey">
		<div class="bottomLinks col-xs-12">
			<span class="linkRow"><a href="#">Terms of use</a> <a href="#">Sitemap</a> <a href="#">Contact
				Us</a></span>
				<a href="#"><i class="fa fa-youtube-square fa-2x"></i></a> <a
				href="#"><i class="fa fa-facebook-square fa-2x"></i></a> <a href="#"><i
				class="fa fa-twitter-square fa-2x"></i></a> <a href="#"><i
				class="fa fa-linkedin-square fa-2x"></i></a> <a href="#"><i
				class="fa fa-rss-square fa-2x"></i></a>
		</div>
		<div class="copyrights col-xs-12">Copyrights © 2014 Qatar
			National Library. All rights reserved.</div>
		</footer>
	</div> <!-- fullpage -->
</body>
<script language="javascript">

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
	
	//$("#newsSlidr").hover(function(){ newsSlider.stop(); },function(){ newsSlider.auto(); });
	$("#event_slidr").hover(function(){ eventSlider.stop(); },function(){ eventSlider.auto(); });
	
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
		$('.landingPage').height(($(window).height()) - ($('#logo').height() + 211));
		$('#map').height(400);
	} else
		$('#map').height(300);
	

	//newsSlider = startSlide((h > 600), 'newsSlidr', 5000, 'h', [ 'one', 'two', 'three', 'one' ], 'right', '#9e9e9e', true, 'none',true);
	eventSlider = startSlide(false, 'event_slidr', 5000, 'cube', [ 'one', 'two', 'three', 'one' ], 'up', '#fff', true, 'border',true);
	//startSlide((h > 600), 'hslidr', 5000, 'v', [ 'one', 'two', 'one' ],'down', '#222', false, 'none',true);
	//startSlide(true, 'salah_slidr', 5000, 'h', [ 'one', 'two', 'three',	'four', 'five', 'one' ], 'right', 'none', false, 'none',true);	
}
</script>
</html>