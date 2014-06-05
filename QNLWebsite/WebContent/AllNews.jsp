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
		<div class="darkgrey thinline shadowed"></div>
		<div class="logoRow col-xs-12">
			<div class="col-xs-6 col-sm-9 col-md-10 nopadding logo" >				
			</div>
			<div class="col-xs-6 col-sm-3 col-md-2 nopadding" >							
				<div class="topLinks">
					<span class="large"><a href="">Subscribe to QNL's e-NewsLetter</a></span><br /><br /><span class="large"><a href="">e-Accessibility</a><a href="">عربى</a></span>
				</div>
			</div>
		</div>
		<div style="width: 100%">
			<nav class="navbar navbar-customBlack shadowed" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#home">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="home">
				<ul class="nav navbar-nav" id="menu">
					<li>
						<a href="IndexNew2.jsp"><span class="glyphicon glyphicon-home"></span></a></li>
					<li>
						<a href="javascript:pageSlide('news');selectItem(1);">News</a></li>
					<li>
						<a href="javascript:pageSlide('events');selectItem(2);">Events</a></li>
					<li>
						<a href="javascript:pageSlide('inTheNews');selectItem(3);">QNL in the News</a></li>
					<li>
						<a href="javascript:pageSlide('trainings');selectItem(4);">Trainings</a></li>					
				</ul>

			</div>
			</nav>
		</div>						
		<div id="pageSlidr" style="width: 100%">
			<div data-slidr="news" style="width: 100%">				
				<div  class="allNews homepage col-xs-12 pull-left">				
				<div class="hidden-xs col-sm-3 newsList pull-left">
					<div class="img-rounded ">							
						<span class="heading ">Qatar National Library unveils it's new building</span>
						<span class="date ">25 January 2014</span>
						<span class="readmore archive "><a href="#">Read More</a></span>
					</div>
					<div class="img-rounded ">							
						<span class="heading ">Qatar National Library unveils it's new building</span>
						<span class="date ">25 January 2014</span>
						<span class="readmore archive "><a href="#">Read More</a></span>
					</div>
					<div class="img-rounded highlight">							
						<span class="heading">Qatar National Library unveils it's new building</span>
						<span class="date">25 January 2014</span>
						<span class="readmore archive"><a href="#">Read More</a></span>
					</div>
					<div class="img-rounded">							
						<span class="heading">Qatar National Library unveils it's new building</span>
						<span class="date">25 January 2014</span>
						<span class="readmore archive"><a href="#">Read More</a></span>
					</div>
					<div class="img-rounded">							
						<span class="heading">Qatar National Library unveils it's new building</span>
						<span class="date">25 January 2014</span>
						<span class="readmore archive"><a href="#">Read More</a></span>
					</div>
				</div>
				<div class="img-rounded newsArticle col-xs-12 col-sm-8 pull-left">
					<span class="aheading textOutlined">Qatar National Library unveils it's new building</span>
					<span class="adate">25 January 2014</span>
					<br />
					<span class="atext">
					<span class="aimage pull-left">
						<img src="images/main.jpg" alt="" />
					</span>
					<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam scelerisque fermentum orci, 
					in malesuada erat rutrum ac. Nam euismod sodales quam, sed malesuada lacus laoreet sit amet. 
					Curabitur eget gravida mauris. Cum sociis natoque penatibus et magnis dis parturient montes, 
					nascetur ridiculus mus. Sed enim erat, sodales sit amet scelerisque nec, adipiscing ac arcu. 
					Praesent imperdiet vitae eros nec mollis. Proin posuere auctor ipsum, nec posuere tortor consectetur 
					et. Ut vel nisl justo. Praesent ac egestas felis.
					</p>
					<p>
					Proin eget massa eget metus rhoncus vehicula in id mi. Pellentesque vel suscipit libero. Quisque egestas 
					sit amet felis eu dictum. Etiam ultricies posuere eros. Ut accumsan orci id porttitor pellentesque. 
					Nulla ullamcorper non urna quis dictum. Integer nec vehicula turpis. Interdum et malesuada fames ac ante 
					ipsum primis in faucibus. Curabitur eget nisl odio. Vestibulum molestie dignissim nulla eget cursus. 
					Sed tempor nulla ut lectus molestie varius.
					</p>
					<p>
					Duis vulputate mollis facilisis. In vestibulum convallis elit, eget molestie augue consectetur quis. 
					Quisque eget tortor ut nulla egestas dictum. Integer facilisis volutpat lobortis. Donec vel faucibus lacus. 
					Ut hendrerit placerat molestie. Quisque a mi eu velit fringilla sagittis sed quis nisl. In sit amet lacus 
					placerat, ornare tortor sed, lobortis mi. Quisque viverra sit amet nibh eget interdum. Duis ac leo at 
					ligula posuere consequat. Maecenas suscipit sagittis dui at pulvinar. Sed in dignissim nibh. Quisque 
					convallis lacus in vestibulum vestibulum. Phasellus interdum arcu quis vehicula pulvinar. Nunc ac urna nec 
					mi accumsan eleifend.
					</p> 
					</span>
				</div>
			</div>
		</div>
		<div data-slidr="events" style="width: 100%">				
				<div  class="events homepage col-xs-12 pull-left">				
				<div class="hidden-xs col-sm-3 eventsList pull-left">
					<div class="addthisevent img-rounded ev">
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
					<div class="addthisevent img-rounded ev">
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
					<div class="addthisevent img-rounded ev">
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
					<div class="addthisevent img-rounded highlight ev">
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
					<div class="addthisevent img-rounded ev">
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
				<div class="img-rounded newsArticle col-xs-12 col-sm-8 pull-left">
					<span class="aheading textOutlined">Qatar National Library unveils it's new building</span>
					<span class="adate">25 January 2014</span>
					<br />
					<span class="atext">
					<span class="aimage pull-left">
						<img src="images/main.jpg" alt="" />
					</span>
					<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam scelerisque fermentum orci, 
					in malesuada erat rutrum ac. Nam euismod sodales quam, sed malesuada lacus laoreet sit amet. 
					Curabitur eget gravida mauris. Cum sociis natoque penatibus et magnis dis parturient montes, 
					nascetur ridiculus mus. Sed enim erat, sodales sit amet scelerisque nec, adipiscing ac arcu. 
					Praesent imperdiet vitae eros nec mollis. Proin posuere auctor ipsum, nec posuere tortor consectetur 
					et. Ut vel nisl justo. Praesent ac egestas felis.
					</p>
					<p>
					Proin eget massa eget metus rhoncus vehicula in id mi. Pellentesque vel suscipit libero. Quisque egestas 
					sit amet felis eu dictum. Etiam ultricies posuere eros. Ut accumsan orci id porttitor pellentesque. 
					Nulla ullamcorper non urna quis dictum. Integer nec vehicula turpis. Interdum et malesuada fames ac ante 
					ipsum primis in faucibus. Curabitur eget nisl odio. Vestibulum molestie dignissim nulla eget cursus. 
					Sed tempor nulla ut lectus molestie varius.
					</p>
					<p>
					Duis vulputate mollis facilisis. In vestibulum convallis elit, eget molestie augue consectetur quis. 
					Quisque eget tortor ut nulla egestas dictum. Integer facilisis volutpat lobortis. Donec vel faucibus lacus. 
					Ut hendrerit placerat molestie. Quisque a mi eu velit fringilla sagittis sed quis nisl. In sit amet lacus 
					placerat, ornare tortor sed, lobortis mi. Quisque viverra sit amet nibh eget interdum. Duis ac leo at 
					ligula posuere consequat. Maecenas suscipit sagittis dui at pulvinar. Sed in dignissim nibh. Quisque 
					convallis lacus in vestibulum vestibulum. Phasellus interdum arcu quis vehicula pulvinar. Nunc ac urna nec 
					mi accumsan eleifend.
					</p> 
					</span>
				</div>
			</div>
		</div>
		<div data-slidr="inTheNews" style="width: 100%">				
				<div  class="inTheNews homepage col-xs-12 pull-left">				
				<div class="hidden-xs col-sm-3 newsList pull-left">
					<div class="img-rounded ">							
						<span class="heading ">Qatar National Library unveils it's new building</span>
						<span class="date ">25 January 2014</span>
						<span class="readmore archive "><a href="#">Read More</a></span>
					</div>
					<div class="img-rounded ">							
						<span class="heading ">Qatar National Library unveils it's new building</span>
						<span class="date ">25 January 2014</span>
						<span class="readmore archive "><a href="#">Read More</a></span>
					</div>
					<div class="img-rounded highlight">							
						<span class="heading">Qatar National Library unveils it's new building</span>
						<span class="date">25 January 2014</span>
						<span class="readmore archive"><a href="#">Read More</a></span>
					</div>
					<div class="img-rounded">							
						<span class="heading">Qatar National Library unveils it's new building</span>
						<span class="date">25 January 2014</span>
						<span class="readmore archive"><a href="#">Read More</a></span>
					</div>
					<div class="img-rounded">							
						<span class="heading">Qatar National Library unveils it's new building</span>
						<span class="date">25 January 2014</span>
						<span class="readmore archive"><a href="#">Read More</a></span>
					</div>
				</div>
				<div class="img-rounded newsArticle col-xs-12 col-sm-8 pull-left">
					<span class="aheading textOutlined">Qatar National Library unveils it's new building</span>
					<span class="adate">25 January 2014</span>
					<br />
					<span class="atext">
					<span class="aimage pull-left">
						<img src="images/main.jpg" alt="" />
					</span>
					<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam scelerisque fermentum orci, 
					in malesuada erat rutrum ac. Nam euismod sodales quam, sed malesuada lacus laoreet sit amet. 
					Curabitur eget gravida mauris. Cum sociis natoque penatibus et magnis dis parturient montes, 
					nascetur ridiculus mus. Sed enim erat, sodales sit amet scelerisque nec, adipiscing ac arcu. 
					Praesent imperdiet vitae eros nec mollis. Proin posuere auctor ipsum, nec posuere tortor consectetur 
					et. Ut vel nisl justo. Praesent ac egestas felis.
					</p>
					<p>
					Proin eget massa eget metus rhoncus vehicula in id mi. Pellentesque vel suscipit libero. Quisque egestas 
					sit amet felis eu dictum. Etiam ultricies posuere eros. Ut accumsan orci id porttitor pellentesque. 
					Nulla ullamcorper non urna quis dictum. Integer nec vehicula turpis. Interdum et malesuada fames ac ante 
					ipsum primis in faucibus. Curabitur eget nisl odio. Vestibulum molestie dignissim nulla eget cursus. 
					Sed tempor nulla ut lectus molestie varius.
					</p>
					<p>
					Duis vulputate mollis facilisis. In vestibulum convallis elit, eget molestie augue consectetur quis. 
					Quisque eget tortor ut nulla egestas dictum. Integer facilisis volutpat lobortis. Donec vel faucibus lacus. 
					Ut hendrerit placerat molestie. Quisque a mi eu velit fringilla sagittis sed quis nisl. In sit amet lacus 
					placerat, ornare tortor sed, lobortis mi. Quisque viverra sit amet nibh eget interdum. Duis ac leo at 
					ligula posuere consequat. Maecenas suscipit sagittis dui at pulvinar. Sed in dignissim nibh. Quisque 
					convallis lacus in vestibulum vestibulum. Phasellus interdum arcu quis vehicula pulvinar. Nunc ac urna nec 
					mi accumsan eleifend.
					</p> 
					</span>
				</div>
			</div>
		</div>
		<div data-slidr="trainings" style="width: 100%">				
				<div  class="trainings homepage col-xs-12 pull-left">				
				<div class="hidden-xs col-sm-3 trainingsList pull-left">
					<div class="img-rounded ">							
						<span class="heading ">Qatar National Library unveils it's new building</span>
						<span class="date ">25 January 2014</span>
						<span class="readmore archive "><a href="#">Read More</a></span>
					</div>
					<div class="img-rounded ">							
						<span class="heading ">Qatar National Library unveils it's new building</span>
						<span class="date ">25 January 2014</span>
						<span class="readmore archive "><a href="#">Read More</a></span>
					</div>
					<div class="img-rounded highlight">							
						<span class="heading">Qatar National Library unveils it's new building</span>
						<span class="date">25 January 2014</span>
						<span class="readmore archive"><a href="#">Read More</a></span>
					</div>
					<div class="img-rounded">							
						<span class="heading">Qatar National Library unveils it's new building</span>
						<span class="date">25 January 2014</span>
						<span class="readmore archive"><a href="#">Read More</a></span>
					</div>
					<div class="img-rounded">							
						<span class="heading">Qatar National Library unveils it's new building</span>
						<span class="date">25 January 2014</span>
						<span class="readmore archive"><a href="#">Read More</a></span>
					</div>
				</div>
				<div class="img-rounded newsArticle col-xs-12 col-sm-8 pull-left">
					<span class="aheading textOutlined">Qatar National Library unveils it's new building</span>
					<span class="adate">25 January 2014</span>
					<br />
					<span class="atext">
					<span class="aimage pull-left">
						<img src="images/main.jpg" alt="" />
					</span>
					<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam scelerisque fermentum orci, 
					in malesuada erat rutrum ac. Nam euismod sodales quam, sed malesuada lacus laoreet sit amet. 
					Curabitur eget gravida mauris. Cum sociis natoque penatibus et magnis dis parturient montes, 
					nascetur ridiculus mus. Sed enim erat, sodales sit amet scelerisque nec, adipiscing ac arcu. 
					Praesent imperdiet vitae eros nec mollis. Proin posuere auctor ipsum, nec posuere tortor consectetur 
					et. Ut vel nisl justo. Praesent ac egestas felis.
					</p>
					<p>
					Proin eget massa eget metus rhoncus vehicula in id mi. Pellentesque vel suscipit libero. Quisque egestas 
					sit amet felis eu dictum. Etiam ultricies posuere eros. Ut accumsan orci id porttitor pellentesque. 
					Nulla ullamcorper non urna quis dictum. Integer nec vehicula turpis. Interdum et malesuada fames ac ante 
					ipsum primis in faucibus. Curabitur eget nisl odio. Vestibulum molestie dignissim nulla eget cursus. 
					Sed tempor nulla ut lectus molestie varius.
					</p>
					<p>
					Duis vulputate mollis facilisis. In vestibulum convallis elit, eget molestie augue consectetur quis. 
					Quisque eget tortor ut nulla egestas dictum. Integer facilisis volutpat lobortis. Donec vel faucibus lacus. 
					Ut hendrerit placerat molestie. Quisque a mi eu velit fringilla sagittis sed quis nisl. In sit amet lacus 
					placerat, ornare tortor sed, lobortis mi. Quisque viverra sit amet nibh eget interdum. Duis ac leo at 
					ligula posuere consequat. Maecenas suscipit sagittis dui at pulvinar. Sed in dignissim nibh. Quisque 
					convallis lacus in vestibulum vestibulum. Phasellus interdum arcu quis vehicula pulvinar. Nunc ac urna nec 
					mi accumsan eleifend.
					</p> 
					</span>
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
	var currentSlide = 1;
	$(document).ready(function() {

		resetSize();
		
		window.onresize = function() {
			resetSize();
		}
		
		selectItem(1);
	
	});
	
	
	function resetSize() {

		var h = ($(window).height() - ($('#logo').height() + 211));
		
		if (h > 481) 
			$('.homepage').height(h);
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
					[ 'news', 'events',  'inTheNews', 
							'trainings' ]).start();

	function pageSlideDir(dir) {
		pageSlider.slide(dir);
	}

	function pageSlide(slideID) {
		pageSlider.slide(slideID);		
	}

	function selectItem(num) {		
		$("#menu li:nth-child(" + (currentSlide+1) + ")" ).removeClass("active");
		currentSlide = num;		
		$("#menu li:nth-child(" + (currentSlide +1) + ")" ).addClass("active");
	}

</script>

</html>