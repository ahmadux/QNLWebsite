<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.qnl.services.*,java.util.*,com.sun.syndication.feed.synd.*,com.sun.syndication.feed.synd.SyndFeed"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro' rel='stylesheet' type='text/css'>
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/qatarNationalLibrary2.css" />
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" />
	
<link rel="stylesheet" href="css/customNavbars.css" />
<link rel="stylesheet" href="css/weather.css" />
<!-- <script type="text/javascript"	src="http://js.addthisevent.com/atemay.js"></script> -->
<!--  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCYVOugOA98uoJHx9YpG83ui_dga5K4nAo&sensor=false&extension=.js"></script> -->
<script src="scripts/slidr.js"></script>

<title>Qatar National Library - Home</title>

</head>
<body>
	<div class="fullpage">
		<div class="darkmaroon thinline shadowed"></div>
		<div class="logoRow col-xs-12">
			<div class="col-xs-6 col-sm-9 col-md-10 nopadding logo" >				
			</div>
			<div class="col-xs-6 col-sm-3 col-md-2 nopadding" >							
				<div class="topLinks">
					<button class="btn brandingButton">Subscribe to e-NewsLetter</button><br /><br /><button class="btn brandingButton">Accessibility</button>&nbsp;&nbsp;<button class="btn brandingButton">AR</button>
				</div>
			</div>
		</div>
		<div id="pageSlidr" style="width: 100%">
			<div data-slidr="mainLibrary" style="width: 100%">
				<div>
					<nav class="navbar navbar-brandingMaroon shadowed" role="navigation">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#mainHome">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="mainHome">
						<ul class="nav navbar-nav">
							<li class="active">
								<a href="javascript:pageSlide('mainLibrary');selectItem(1);"><span class="glyphicon glyphicon-home"></span></a></li>
							<li>
								<a href="">Discover QNL</a></li>
							<li>
								<a href="">Main Collection</a></li>
							<li>
								<a href="javascript:pageSlide('heritageCollection');selectItem(2);">Arab & Islamic Heritage Collection</a></li>	
							<li>
								<a href="javascript:pageSlide('childrenSection');selectItem(2);">Children's	Section</a></li>							
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
				<div class="home homepage col-xs-12 pull-left">
					<div class="newsBox col-xs-12 col-md-2 col-md-offset-1 semitransparent img-rounded highSpaceTop">
						<h4 class="textOutlined">News <span class="archive"><a href="">News Archive</a></span></h4>
						<div id="newsSlidr" >
							<div data-slidr="one" class="newsSlidr">
								
									<span class="newsImage hidden-sm hidden-xs"><img src="images/news1.jpg" alt="" /></span>	
									<span class="newsHeading textOutlined">Qatar National Library unveils it's new building</span> 
									<span class="newsDate">25 January 2014</span>
									<span class="readmore archive"><a href="#">Read More</a></span>
								
							</div>
							<div data-slidr="two" class="newsSlidr">
								
									<span class="newsImage hidden-sm hidden-xs"><img src="images/news1.jpg" alt="" /></span>
									<span class="newsHeading textOutlined">QNL as a center says Qatar Foundation</span>
									<span class="newsDate">25 January 2014</span>
									<span class="readmore archive"><a href="#">Read More</a></span>
								
							</div>
							<div data-slidr="three" class="newsSlidr">
								
									<span class="newsImage hidden-sm hidden-xs"><img src="images/news1.jpg" alt="" /></span>
									<span class="newsHeading textOutlined">Vision and Mission of Qatar National Library</span>
									<span class="newsDate">25 January 2014</span>
									<span class="readmore archive"><a href="#">Read More</a></span>
								
							</div>
						</div>
					</div>
										
					<div class="eventBox col-xs-12 col-md-4 col-md-offset-1 pull-left highSpaceTop">						
						<h4 class="textOutlined hidden-xs hidden-sm">Calendar of Events</h4>
						<div id="event_slidr" class="fullWidth nopadding" >
							<div data-slidr="one" class="fullWidth">
								<div class="addthisevent semitransparent">
									<div class="date">
										<span class="mon">FEB</span> <span class="day">12</span>
										<div class="bdr1"></div>
										<div class="bdr2"></div>
									</div>
									<div class="desc">
										<div style="width:20%; float:left">
										<strong class="hed">Grand Tour</strong>
										</div>
										<div style="width:65%; float:right; margin-top: -10px"><img src="images/events-FIREWORKS.jpg" alt="" title="" height="105px" width="250px" /></div>
									</div>									
								</div>
							</div>
							<div data-slidr="two" class="fullWidth">
								<div class="addthisevent semitransparent">
									<div class="date">
										<span class="mon">MAR</span> <span class="day">15</span>
										<div class="bdr1"></div>
										<div class="bdr2"></div>
									</div>
									<div class="desc">
										<div style="width:35%; float:left">
										<strong class="hed">Grand Tour tour tour</strong>
										</div>
										<div style="width:65%; float:right;margin-top: -5px"><img src="images/events-FIREWORKS.jpg" alt="" title="" height="95px" width="250px"/></div>
									</div>	
								</div>								
							</div>
							<div data-slidr="three" class="fullWidth">
								<div class="addthisevent semitransparent">
									<div class="date">
										<span class="mon">MAR</span> <span class="day">21</span>
										<div class="bdr1"></div>
										<div class="bdr2"></div>
									</div>
									<div class="desc">
										<div style="width:20%; float:left">
										<strong class="hed">Grand Tour</strong>
										</div>
										<div style="width:65%; float:right; margin-top: -10px"><img src="images/events-FIREWORKS.jpg" alt="" title="" height="105px" width="250px" /></div>
									</div>									
								</div>
							</div>
						</div>
						<div class="searchBox col-xs-12 nopadding">						
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
						<form role="form">
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
							<div class="helpLinks center-block">
								<a href="">New to QNL?</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">Forgot
									password?</a>
							</div>
							<br />
							<button type="submit" class="btn brandingButton">Login</button>
						</form>
					</div>
					
					
				</div>
			</div>
			
			<div data-slidr="childrenSection" style="width: 100%">
				<div>
					<nav class="navbar navbar-childrenLibrary shadowed" role="navigation">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#childrenHome">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="childrenHome">
						<ul class="nav navbar-nav">
							<li><a
								href="javascript:pageSlide('mainLibrary');selectItem(1);">Home</a></li>
							<li class="active"><a
								href="javascript:pageSlide('childrenSection');selectItem(2);">Children's Section</a></li>
						</ul>
					</div>
					</nav>
				</div>
				<div class="children homepage col-xs-12">
					<div class="bookBox img-rounded shadowed col-xs-10 col-xs-offset-1 highSpaceTop">
						<h3>Review Corner</h3>
						<div class="bookReview pull-right col-xs-12 col-sm-12">
							<div class="bookImg pull-left col-xs-12 col-sm-2">
								<img src="images/bigSnow.jpg" height="180px" alt="Big Snow" />
							</div>
							<div class="bookTitle pull-right col-xs-12 col-sm-8 col-lg-10">BIG
								SNOW</div>
							<div class="bookAuthor pull-right col-xs-12 col-sm-8 col-lg-10">
								by <a href="#">Jonathan Bean</a>
							</div>
							<div class="bookRating pull-right col-xs-12 col-sm-8 col-lg-10">
								<span class="glyphicon glyphicon-star"></span><span
									class="glyphicon glyphicon-star"></span><span
									class="glyphicon glyphicon-star"></span><span
									class="glyphicon glyphicon-star"></span><span
									class="glyphicon glyphicon-star empty"></span>
							</div>
							<div class="bookReview pull-right hidden-xs col-sm-8 col-lg-10">
								<b>Big Snow</b> is a beautifully drawn, well-told story that
								captures the imagination of a young child consumed by his
								thoughts of snow. The quick pace of the book mirrors the anxiety
								of the title character as he spends each moment -- no matter the
								task -- focused on when the snow's going to come. There are
								laugh-out-loud moments as David repeatedly dashes outside to
								check the progress of the weather, leaving his mother covered in
								bubbles or scooping up flour in his wake.
							</div>
						</div>
					</div>
				</div>
			</div>
			<div data-slidr="heritageCollection" style="width: 100%">
				<div>
					<nav class="navbar navbar-heritage shadowed" role="navigation"> <!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#heritageHome">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="heritageHome">
						<ul class="nav navbar-nav">
							<li><a
								href="javascript:pageSlide('mainLibrary');selectItem(1);">Home</a></li>							
							<li class="active"><a
								href="javascript:pageSlide('heritageCollection');selectItem(3);">Heritage
									Collection</a></li>							
						</ul>

					</div>
					</nav>
				</div>
				<div class="heritage homepage col-xs-12">
					<div
						class="bookBox img-rounded shadowed col-xs-10 col-xs-offset-1 col-sm-offset-1 highSpaceTop">
						<h3>Staff Picks</h3>
						<div id="hslidr">
							<div data-slidr="one">
								<div class="bookReview col-xs-12">
									<div class="bookImg pull-left col-xs-12 col-sm-4 col-lg-2">
										<img src="images/quran.png" width="180px" alt="Qura'an" />
									</div>
									<div class="bookTitle pull-right col-xs-12 col-sm-8 col-lg-10">Holy
										Qura'an</div>
									<div class="bookAuthor pull-right col-xs-12 col-sm-8 col-lg-10">
										250 years old <br />
										<a href="#">The Mughal period</a>
									</div>
									<div class="bookReview pull-right hidden-xs col-sm-8 col-lg-10">
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec
										dui leo, varius et est pellentesque, fringilla adipiscing
										quam. Integer elementum eros at turpis elementum vehicula.
										Proin fermentum nec felis sit amet fermentum. Proin eget
										accumsan turpis. Vestibulum gravida lacus mi, eget lobortis
										sem volutpat ut. Quisque tempus elit in pharetra laoreet. Nam
										venenatis pharetra porta.</div>
								</div>
							</div>
							<div data-slidr="two">
								<div class="bookReview col-xs-12">
									<div class="bookImg pull-left col-xs-12 col-sm-4 col-lg-2">
										<img src="images/quran.png" width="180px" alt="Qura'an" />
									</div>
									<div class="bookTitle pull-right col-xs-12 col-sm-8 col-lg-10">Holy
										Qura'an</div>
									<div class="bookAuthor pull-right col-xs-12 col-sm-8 col-lg-10">
										250 years old <br />
										<a href="#">The Mughal period</a>
									</div>
									<div class="bookReview pull-right hidden-xs col-sm-8 col-lg-10">
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec
										dui leo, varius et est pellentesque, fringilla adipiscing
										quam. Integer elementum eros at turpis elementum vehicula.
										Proin fermentum nec felis sit amet fermentum. Proin eget
										accumsan turpis. Vestibulum gravida lacus mi, eget lobortis
										sem volutpat ut. Quisque tempus elit in pharetra laoreet. Nam
										venenatis pharetra porta.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div data-slidr="aboutQatar" style="width: 100%">
				<div>
					<nav class="navbar navbar-inverse shadowed" role="navigation">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#otherHome">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="otherHome">
						<ul class="nav navbar-nav">
							<li><a
								href="javascript:pageSlide('mainLibrary');selectItem(1);">Home</a></li>
							<li><a
								href="javascript:pageSlide('childrenLibrary');selectItem(2);">Children's
									Library</a></li>
							<li><a
								href="javascript:pageSlide('heritageLibrary');selectItem(3);">Heritage
									Collection</a></li>
							<li class="active"><a
								href="javascript:pageSlide('aboutQatar');selectItem(4);">About
									Qatar</a></li>
						</ul>

					</div>
					</nav>
				</div>
				<div class="other homepage col-xs-12">
					<div class="col-xs-6 col-sm-3 pull-left">
						<div class="time semitransparent textOutlined col-xs-12 pull-left" data-serverTimeFormatted="<%=java.text.DateFormat.getTimeInstance(java.text.DateFormat.SHORT).format(new java.util.Date())%>" data-serverTime="<%=java.text.DateFormat.getInstance().format(new java.util.Date())%>"></div>						
					</div>
					<div class="col-xs-6 col-sm-3 col-lg-3 pull-left">
						<div class="date semitransparent textOutlined pull-left col-xs-12">
							${TimeService.getFormattedTime("E, MMM dd yyyy")}<br />
							${SalahService.getHijri()}
						</div>
					</div>
					<div class="col-xs-12 col-sm-3 col-lg-3 pull-left">
						<div class="semitransparent textOutlined pull-left col-xs-12 temp">
							
							<div class="weather">${WeatherService.getWeatherCode()}</div>
							<div class="tempNow">${WeatherService.getTempC()}°C</div>
							<div class="tempLimit">${WeatherService.getMinTempC(0).intValue()}°C -
							${WeatherService.getMaxTempC(0).intValue()}°C </div>
						</div>						
					</div>
					<div class="col-xs-12 col-sm-3 col-lg-3 pull-left">
						<div class="salah semitransparent textOutlined col-xs-12">
							<div id="salah_slidr" style="display: inline">
								<div data-slidr="one">
									<span class="salahName">Fajr</span><span class="salahTime">${SalahService.getFajr()}</span>
								</div>
								<div data-slidr="two">
									<span class="salahName">Zuhr</span><span class="salahTime">${SalahService.getDhuhr()}</span>
								</div>
								<div data-slidr="three">
									<span class="salahName">Asr</span><span class="salahTime">${SalahService.getAsr()}</span>
								</div>
								<div data-slidr="four">
									<span class="salahName">Magrib</span><span class="salahTime">${SalahService.getMaghrib()}</span>
								</div>
								<div data-slidr="five">
									<span class="salahName">Isha</span><span class="salahTime">${SalahService.getIsha()}</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-lg-8 map pull-left" style="height:700px;">
						Some text about Qatar.
					</div>
					<div class="col-xs-12 col-sm-6 col-lg-4 pull-right">
						<div class="col-xs-12 map pull-right semitransparent">
							<h4 class="textOutlined">Map of Qatar</h4>
							<div class="col-xs-12 img-rounded pull-right" id="map"></div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-lg-4 pull-right">
						<div class="col-xs-12 topNews pull-right semitransparent">
							<h4 class="textOutlined">Top News from Qatar (courtesy: Gulf Times)</h4>
							<div class="col-xs-12 pull-left">
								<div class="topStories pull-left">
									<%
										SyndFeed feeds = (SyndFeed)request.getServletContext().getAttribute("GulfTimesNewsFeeds");
										SyndEntry feed; 
										int limit = 5;
										if(feeds != null)
										{		
											limit = feeds.getEntries().size() < limit?feeds.getEntries().size():limit;
													
											for(int i=0; limit > i; i++)
											{
												feed = (SyndEntryImpl)feeds.getEntries().get(i);
									%>
													
											<div class="col-xs-12 pull-left">
												<div class="newsHeading textOutlined pull-left col-xs-12">
													<%= feed.getTitle() %>&nbsp;<a href="<%= feed.getLink() %>" class="ui-icon ui-icon-link" title="<%= feed.getTitle() %>" style="display:inline-block"></a>
												</div>
												<div class="newsContent col-xs-11 col-xs-offset-1">
													<%= feed.getDescription().getValue() %>
												</div>
											</div>	
									<%
											}
										}
									%>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="darkmaroon">
		<div class="bottomLinks col-xs-12">
			<a href="#">Terms of use</a> <a href="#">Sitemap</a> <a href="#">Contact
				Us</a> <a href="#"><i class="fa fa-youtube-square fa-2x"></i></a> <a
				href="#"><i class="fa fa-facebook-square fa-2x"></i></a> <a href="#"><i
				class="fa fa-twitter-square fa-2x"></i></a> <a href="#"><i
				class="fa fa-linkedin-square fa-2x"></i></a> <a href="#"><i
				class="fa fa-rss-square fa-2x"></i></a>
		</div>
		<div class="copyrights col-xs-12">Copyrights © 2014 Qatar
			National Library. All rights reserved.</div>
		</footer>
	</div>
</body>
<script>
	var currentSlide = 0;
	var newsSlider;
	var eventSlider;

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
					[ 'mainLibrary', 'childrenLibrary', 'heritageLibrary',
							'aboutQatar' ]).start();

	function pageSlideDir(dir) {
		pageSlider.slide(dir);
	}

	function pageSlide(slideID) {
		pageSlider.slide(slideID);
	}

	function selectItem(num) {		
		currentSlide = num - 1;
	}

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

	var clientTime = new Date().getTime();
	var serverTime;
	
	
	$(document).ready(function() {

		resetSize();
		
		$("#newsSlidr").hover(function(){ newsSlider.stop(); },function(){ newsSlider.auto(); });
		$("#event_slidr").hover(function(){ eventSlider.stop(); },function(){ eventSlider.auto(); });
		
		serverTime = new Date($('.time').attr('data-serverTime')).getTime();
		updateTime();
		
		
		window.onresize = function() {
			resetSize();
		}
		insertWeatherIcon();
			

	});

	function updateTime()
	{
		var newTime = new Date().getTime();
		var diff = newTime - clientTime;
		var dt = new Date(diff + serverTime);
		
		$('.time').text((dt.getHours()<10?"0" + dt.getHours():dt.getHours()) + ":" + (dt.getMinutes()<10?"0" + dt.getMinutes():dt.getMinutes()));
		
		setTimeout(updateTime,10000);
	}
	
	function resetSize() {

		var h = ($(window).height() - ($('#logo').height() + 211));

		if (h > 481) {
			$('.homepage').height(h);
			$('#map').height(400);
		} else
			$('#map').height(300);
		

		newsSlider = startSlide((h > 600), 'newsSlidr', 5000, 'h', [ 'one', 'two', 'three',
				'one' ], 'right', '#9e9e9e', true, 'none',true);
		eventSlider = startSlide(false, 'event_slidr', 5000, 'cube', [ 'one', 'two', 'three',
				'one' ], 'up', '#fff', true, 'border',true);
		startSlide((h > 600), 'hslidr', 5000, 'v', [ 'one', 'two', 'one' ],
				'down', '#222', false, 'none',true);
		startSlide(true, 'salah_slidr', 5000, 'h', [ 'one', 'two', 'three',
				'four', 'five', 'one' ], 'right', 'none', false, 'none',true);
	
		
	}

	function insertWeatherIcon() {
		$('.weather').each(function() {
			switch ($(this).text()) {
			case '308':
			case '356':
			case '353':
			case '305':
			case '302':
			case '299':
			case '293':
			case '200':
			case '176':
				$(this).text('U');
				break;

			case '386':
				$(this).text('S');
				break;

			case '248':
			case '143':
				$(this).text('G');
				break;

			case '116':
			case '122':
			case '119':
				$(this).text('C');
				break;

			case '113':
				$(this).text('A');
				break;

			default:
				$(this).text('A');
				break;
			}
		});
	}
</script>
<!-- <script src="scripts/googleMaps.js"></script> -->
</html>