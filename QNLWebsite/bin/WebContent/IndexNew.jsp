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
<link rel="stylesheet" href="css/qatarNationalLibrary.css" />
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" />
	
<link rel="stylesheet" href="css/customNavbars.css" />
<link rel="stylesheet" href="css/weather.css" />
<!-- <script type="text/javascript"	src="http://js.addthisevent.com/atemay.js"></script> -->
<!--  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCYVOugOA98uoJHx9YpG83ui_dga5K4nAo&sensor=false&extension=.js"></script> -->
<script src="scripts/slidr2.js"></script>

<title>Qatar National Library - Home</title>

</head>
<body>
	<div class="fullpage">
		<div class="darkgrey thinline shadowed"></div>
		<div class="logoRow col-xs-12">
			<div class="col-xs-6 col-sm-9 nopadding logo" >
				<!-- <img src="images/logo_large.png" class="hidden-xs"
					alt="Qatar National Library Logo" /> <img
					src="images/logo_small.png" 
					alt="Qatar National Library Logo" />-->
			</div>
			<div class="col-xs-6 col-sm-3 nopadding" >
				<!-- <div class="col-xs-12 nopadding"  >
					<div class="input-group col-xs-12 nopadding">
						<input type="text" class="form-control input-sm" > <span
							class="input-group-btn">
							<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-search"></span></button>
						</span>							
					</div>	
								
					<div class="btn-group btn-group-xs separatedTop col-xs-12 centered" data-toggle="buttons">
						<label class="btn btn-default active">    
							<input type="radio" name="seacrhOpts" id="website" checked>Website</label>
						<label class="btn btn-default">	
							<input type="radio" name="seacrhOpts" id="onlineResources">Resources</label>
					</div>
				</div>-->			
				<div class="col-xs-12 topLinks separatedTop centered">
					<a href="">Link 1</a><a href="">Link 1</a><a href="">Link 1</a>
				</div>
			</div>
		</div>
		<div id="pageSlidr" style="width: 100%">
			<div data-slidr="mainLibrary" style="width: 100%">
				<div>
					<nav class="navbar navbar-inverse shadowed" role="navigation">
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
							<li class="active"><a
								href="javascript:pageSlide('mainLibrary');selectItem(1);">Home</a></li>
							<li><a
								href="javascript:pageSlide('childrenLibrary');selectItem(2);">Children's
									Library</a></li>
							<li><a
								href="javascript:pageSlide('heritageLibrary');selectItem(3);">Heritage
									Collection</a></li>
							<li><a
								href="javascript:pageSlide('aboutQatar');selectItem(4);">About
									Qatar</a></li>
						</ul>

					</div>
					</nav>
				</div>
				<div class="main homepage col-xs-12 pull-left">
					<div class="newsLine col-xs-10 col-xs-offset-1 col-md-5 col-md-offset-1 col-lg-8 col-lg-offset-1 row">
						<div class="sectionHeading hidden-xs hidden-sm col-md-6 col-lg-6 row">
							<span class="textOutlined">News & Happenings</span>
						</div>
						<div class="sectionHeading hidden-xs hidden-sm col-md-5 col-sm-offset-1 col-lg-5 col-lg-offset-1">
							<span class="textOutlined">Calendar of Events</span>
						</div>

						<div id="slidr1" class="col-xs-12 col-md-6 col-lg-6 news semitransparent separatedTop">								
								<div data-slidr="one">
									<span class="newsHeading textOutlined">Qatar National
										Library unveils it's new building</span> <br /> <span
										class="newsContent"> <b>25 Jan 2014</b> - Qatar National
										Library opened it's door to the public. The state-of-the-art
										building designed by renowned architect Reem Koolhaas, houses
										more than 50,00 hard copy books and over a million electronic
										and digital items. QNL is an initiative of Qatar Foundation.
									</span>
								</div>
								<div data-slidr="two">
									<span class="newsHeading textOutlined">QNL as a center
										says Qatar Foundation</span> <br /> <span class="newsContent">
										<b>25 Jan 2014</b> - Qatar National Library opened it's door to
										the public. QNL is an initiative of Qatar Foundation.
									</span>
								</div>
								<div data-slidr="three">
									<span class="newsHeading textOutlined">Vision and Mission</span>
									<br /> <span class="newsContent"> <b>25 Jan 2014</b> -
										The state-of-the-art building designed by renowned architect
										Reem Koolhaas, houses more than 50,00 hard copy books and over
										a million electronic and digital items. QNL is an initiative of
										Qatar Foundation.
									</span>
								</div>
						</div>

						<div id="event_slidr" class="col-xs-12 col-md-5 col-md-offset-1 col-lg-5 col-lg-offset-1 nopadding separatedTop" >
							<div data-slidr="one" class="col-xs-12 nopadding">
								<div class="addthisevent semitransparent">
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
							<div data-slidr="two" class="col-xs-12 nopadding">
								<div class="addthisevent semitransparent">
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
							<div data-slidr="three" class="col-xs-12 nopadding">
								<div class="addthisevent semitransparent">
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
					</div>
					<div  class="loginBox semitransparent img-rounded col-xs-10 col-xs-offset-1 col-md-5 col-lg-2">
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
							<button type="submit" class="btn btn-primary">Login</button>
						</form>
					</div>
					<div class="col-xs-10 col-xs-offset-1 col-md-5 col-md-offset-1 col-lg-8 col-lg-offset-1 newsLine2 img-rounded pull-left">
						<div class="col-xs-12 news2 semitransparent pull-left">
							<div class="hidden-xs hidden-sm col-md-6 pull-left">
								<!-- <h4 class="textOutlined">Ask a Librarian</h4>
								<div class="form-group">
									<label class="sr-only" for="email">Email address</label> <input
										type="email" class="form-control" id="email"
										placeholder="Enter your email">
								</div>
								<div class="form-group">
									
									<label class="sr-only" for="question">Question</label>
									<textarea class="form-control" id="question"
										placeholder="Enter your question"></textarea>									
								</div>
								<button class="btn btn-primary" type="button">Ask!</button> -->
								<h4 class="textOutlined">Search the Catalog</h4>
								<div class="row">
									<div class="col-xs-12 col-md-10">
										<div class="input-group">
											<input type="text" class="form-control"> <span
												class="input-group-btn">
												<button class="btn btn-primary" type="button">Search</button>
											</span>
										</div>
										<!-- /input-group -->
									</div>
									<!-- /.col-lg-6 -->
								</div>
							</div>
							<div class="col-xs-12 col-md-6 pull-right">
								<h4 class="textOutlined">Quick Links</h4>
								<div class="col-xs-12 col-sm-6 pull-left links">
									<a href="">Qatar Foundation</a><br /> <a href="">World
										Digital Library</a><br /> <a href="">Search Online Resources</a><br />
								</div>
								<div class="col-xs-12 col-sm-6 pull-right links">
									<a href="">Qatar Foundation</a><br /> <a href="">World
										Digital Library</a><br /> <a href="">Search Online Resources</a><br />
								</div>
								<div style="padding-top:7px" class="pull-left">Sign-up for our newsletter and stay on top of what's
								happening at the Qatar National Library.
								<br />
								<div class="row">
									<div class="col-xs-12 col-md-10">
										<div class="input-group">
											<input type="text" class="form-control"> <span
												class="input-group-btn">
												<button class="btn btn-primary" type="button">Sign-up!</button>
											</span>
										</div>
										<!-- /input-group -->
									</div>
									<!-- /.col-lg-6 -->
								</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div data-slidr="childrenLibrary" style="width: 100%">
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
								href="javascript:pageSlide('childrenLibrary');selectItem(2);">Children's
									Library</a></li>
							<li><a
								href="javascript:pageSlide('heritageLibrary');selectItem(3);">Heritage
									Collection</a></li>
							<li><a
								href="javascript:pageSlide('aboutQatar');selectItem(4);">About
									Qatar</a></li>
						</ul>
					</div>
					</nav>
				</div>
				<div class="children homepage col-xs-12">
					<div class="bookBox img-rounded shadowed col-xs-10 col-xs-offset-1">
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
			<div data-slidr="heritageLibrary" style="width: 100%">
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
							<li><a
								href="javascript:pageSlide('childrenLibrary');selectItem(2);">Children's
									Library</a></li>
							<li class="active"><a
								href="javascript:pageSlide('heritageLibrary');selectItem(3);">Heritage
									Collection</a></li>
							<li><a
								href="javascript:pageSlide('aboutQatar');selectItem(4);">About
									Qatar</a></li>
						</ul>

					</div>
					</nav>
				</div>
				<div class="heritage homepage col-xs-12">
					<div
						class="bookBox img-rounded shadowed col-xs-10 col-xs-offset-1 col-sm-offset-1">
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
		<footer class="darkgrey">
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
		//$('.navbar-nav li').removeClass('active');	
		//$('.navbar-nav').children().eq(num-1).addClass('active');
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
		//alert($(window).height() + ":" + $(window).width() + ":" + (navigator.userAgent));
		//$('.time').text(($('.time').attr('data-serverTimeFormatted')));
		
		serverTime = new Date($('.time').attr('data-serverTime')).getTime();
		updateTime();
		
		
		window.onresize = function() {
			resetSize();
		}
		insertWeatherIcon();
		
		/*
		addthisevent.settings({
			mouse : false,
			css : false,
			outlook : {
				show : true,
				text : "Outlook Calendar"
			},
			ical : {
				show : true,
				text : "iCal Calendar"
			},
			google : {
				show : true,
				text : "Google Calendar"
			},
			yahoo : {
				show : false,
				text : "Yahoo Calendar"
			},
			hotmail : {
				show : false,
				text : "Hotmail Calendar"
			},
			facebook : {
				show : false,
				text : "Facebook Event"
			},

		});
		*/
		//$('.addthisevent').mouseup(function(){ if(!$('.addthisevent_dropdown').is(':visible')) evSlidr.stop(); else evSlidr.auto(4000,'up');});

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
		

		startSlide((h > 600), 'slidr1', 5000, 'h', [ 'one', 'two', 'three',
				'one' ], 'right', '#9e9e9e', false, 'none',true);
		startSlide(false, 'event_slidr', 5000, 'cube', [ 'one', 'two', 'three',
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