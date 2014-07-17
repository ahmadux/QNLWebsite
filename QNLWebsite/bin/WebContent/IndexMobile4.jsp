<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Qatar National Library - Home Page</title>

<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro'	rel='stylesheet' type='text/css'>

<customTags:linkCSS alsoInclude="fontawesome,weather" />
<customTags:script alsoInclude="bootstrap, slidr"/>

</head>
<body class="en">
	<div class="fullpage">
		<customTags:header />
		<div class="moveUp">
		<div id="pageSlidr" style="width:100%;">					
			<div class="home col-xs-12 landing pull-left" id="landing" data-slidr="landing" style="width: 100%">
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
			<!-- 1: Home Page -->
			<div data-slidr="discover" id="discover" style="width: 100%">										
			</div>
			<!-- 2: Discover -->
			<div data-slidr="subscribe" id="subscribe" style="width: 100%">											
			</div>
			<!-- 3: Subscribe -->
			<div data-slidr="terms" id="terms" style="width: 100%">											
			</div>
			<!-- 4: TeenSection -->
			<div data-slidr="teenSection" id="teenSection" style="width: 100%">											
			</div>				
		</div>
		</div>
			<!-- Page Slider -->
	</div>
	<!-- fullpage -->
	<customTags:footer />		
		
	<div id="myModal" class="modal fade span8" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	  <div class="modal-dialog">		  	
	    <div class="modal-content">
	    	<div class="modal-header modalHeader">
	  			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	  			<h4 id="modal-title" class="modal-title">Hello World</h4>
	  		</div>
	    	<div id="modal-body" class="modal-body">
	    		Trying a modal
	    	</div>
	    </div>
	  </div>
	</div>
</body>
<script>
var newsSlider;

var eventSlider;
var pages = [ 'landing', 'discover','subscribe','terms','teenSection'];
var desktop = false;
var wheight = ($(window).height() - 214);

function pageSlideDir(dir) {
	pageSlider.slide(dir);
}

function pageSlide(x,asFormOnDesktop,formTitle) {		
	
	if(x >= 2)
		setPage(pages[x-1],x,asFormOnDesktop,formTitle);	
	
	if((desktop)&&(asFormOnDesktop))
	{	
		$('#myModal').modal({
			  backdrop: 'static',
			  show: true,
			  keyboard: true		  
		});
	}	
	else
	{
		pageSlider.slide(pages[x-1]);	
		
	}
}


function setPage(pName,x, asFormOnDesktop, formTitle)
{	
	$.ajax(
	{
		url: "pages/" + pName + ".jsp",
		type: "GET",
		dataType: "html",
		success: function(pData)
			{					
				if((desktop)&&(asFormOnDesktop))
				{
					$("#modal-title").text(formTitle);
					$("#modal-body").html(loadImagesStr(pData));					
				}
				else
				{
					$("#" + pName).html(loadImagesStr(pData));				
					var loc = window.location.href;
					if(loc.indexOf("#") > 0)
						loc = (loc.replace(loc.substr(loc.indexOf('#'), loc.length),""));
					loc += ("#" + x);
					window.location = loc;
				}
			},
		complete: function(){ if(!asFormOnDesktop)resetSize(false);}
			
	});		
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
				'h',pages
				).start();


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
	
	if((wheight + 214) > 481)
		desktop = true;
	
	loadImages("landing");
	resetSize(true);
	
	$("#newsSlidr").hover(function(){ newsSlider.stop(); },function(){ newsSlider.auto(); });
	$("#eventSlidr").hover(function(){ eventSlider.stop(); },function(){ eventSlider.auto(); });
	
	//serverTime = new Date($('.time').attr('data-serverTime')).getTime();
	//updateTime();
	
	window.onresize = function() {
		resetSize(true);
	};
	//insertWeatherIcon();
});

function resetSize(b) {
	
	if(desktop)
		$(".home").height(wheight);
	
	if(b)
	{
		newsSlider = startSlide(false, 'newsSlidr', 5000, 'h', [ 'one', 'two', 'three', 'one' ], 'right', '#fff', true, (desktop)?'corner':'corner',true);
		eventSlider = startSlide(false, 'eventSlidr', 5000, 'cube', [ 'one', 'two', 'three', 'one' ], 'up', '#fff', true, 'none',true);
	}
}

function loadImages(pName)
{	
	if(desktop)
	{
		$('#' + pName + " .img").each( function() {		
			$(this).html("<img src='" + $(this).attr("data-Image") + "' alt='' title='' />");
		});
	}
	
}

function loadImagesStr(htmlSource)
{	
	if(desktop)
	{
		var tree = $("<div>" + htmlSource + "</div>");
		tree.find('.img').html(function(){ return "<img src='" + $(this).attr("data-Image") + "' />"; } );
		htmlSource = tree.html();
	}
	return htmlSource;
}

</script>
</html>