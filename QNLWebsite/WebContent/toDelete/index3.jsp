<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Carousel Template &middot; Bootstrap</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="../scripts/bootstrap.min.js"></script>

<link rel="stylesheet" href="../css/qatarNationalLibrary.css" />

<link rel="stylesheet" href="../css/bootstrap.min.css" />
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css"	rel="stylesheet">
<script src="../scripts/slidr.js"></script>
</head>

<body>
	<div class="fullpage">
		<div class="darkgrey thinline shadowed"></div>
		<div id="logo" class="logo"></div>
		<div>
			<nav id="topNav" class="navbar navbar-inverse shadowed"
				role="navigation">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navigationHome">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navigationHome">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">Children's Library</a></li>
						<li><a href="#">Heritage Collection</a></li>
						<li><a href="#">Other</a></li>
					</ul>
				</div>
			</nav>
		</div>

		<div id="myCarousel" class="carousel slide page">
			<div class="carousel-inner">
				<div class="item active">
					<img src="../images/large/main3.jpg" alt="">
										
					<div class="col-xs-12 pull-right" style="position: absolute; top: 0">
						<div
							class="loginBox img-rounded shadowed col-xs-10 col-xs-offset-1 col-sm-5 col-sm-offset-6 col-lg-2 col-lg-offset-9">
							<form role="form">
								<h4>Login to QNL databases</h4>
								<br />
								<div class="form-group">
									<label for="loginPin">PIN Code</label> <input type="text"
										class="form-control" id="loginPin" placeholder="Enter PIN">
								</div>
								<div class="form-group">
									<label for="password">Password</label> <input type="password"
										class="form-control" id="password">
								</div>
								<div class="helpLinks">
									<a href="">New to QNL?</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">Forgot
										password?</a>
								</div>
								<br />
								<button type="submit" class="btn btn-primary">Login</button>
							</form>
						</div>
					</div>
					<div id="newsLine" class="newsLine shadowed col-xs-12">
						<div id="slidr1" class="news borderRight col-sm-4 col-xs-12">
							<div data-slidr="one">
								<span class="newsHeading">Qatar National Library unveils
									it's new building</span> <br /> <span class="newsContent"> <b>25
										Jan 2014</b> - Qatar National Library opened it's door to the
									public. The state-of-the-art building designed by renowned
									architect Reem Koolhaas, houses more than 50,00 hard copy books
									and over a million electronic and digital items. QNL is an
									initiative of Qatar Foundation.
								</span>
							</div>
							<div data-slidr="two">
								<span class="newsHeading">QNL as a center says Qatar
									Foundation</span> <br /> <span class="newsContent"> <b>25
										Jan 2014</b> - Qatar National Library opened it's door to the
									public. QNL is an initiative of Qatar Foundation.
								</span>
							</div>
							<div data-slidr="three">
								<span class="newsHeading">Vision and Mission</span> <br /> <span
									class="newsContent"> <b>25 Jan 2014</b> - The
									state-of-the-art building designed by renowned architect Reem
									Koolhaas, houses more than 50,00 hard copy books and over a
									million electronic and digital items. QNL is an initiative of
									Qatar Foundation.
								</span>
							</div>
						</div>
						<div id="slidr2" class="trainings borderRight col-xs-12 col-sm-4">
							<div data-slidr="one">
								<span class="newsHeading">Qatar National Library unveils
									it's new building</span> <br /> <span class="newsContent"> <b>25
										Jan 2014</b> - Qatar National Library opened it's door to the
									public. The state-of-the-art building designed by renowned
									architect Reem Koolhaas, houses more than 50,00 hard copy books
									and over a million electronic and digital items. QNL is an
									initiative of Qatar Foundation.
								</span>
							</div>
							<div data-slidr="two">
								<span class="newsHeading">QNL as a center says Qatar
									Foundation</span> <br /> <span class="newsContent"> <b>25
										Jan 2014</b> - Qatar National Library opened it's door to the
									public. QNL is an initiative of Qatar Foundation.
								</span>
							</div>
							<div data-slidr="three">
								<span class="newsHeading">Vision and Mission</span> <br /> <span
									class="newsContent"> <b>25 Jan 2014</b> - The
									state-of-the-art building designed by renowned architect Reem
									Koolhaas, houses more than 50,00 hard copy books and over a
									million electronic and digital items. QNL is an initiative of
									Qatar Foundation.
								</span>
							</div>
						</div>
						<div id="slidr3" class="events col-sm-3 col-xs-12">
							<div data-slidr="one">
								<span class="newsHeading">Qatar National Library unveils
									it's new building</span> <br /> <span class="newsContent"> <b>25
										Jan 2014</b> - Qatar National Library opened it's door to the
									public. The state-of-the-art building designed by renowned
									architect Reem Koolhaas, houses more than 50,00 hard copy books
									and over a million electronic and digital items. QNL is an
									initiative of Qatar Foundation.
								</span>
							</div>
							<div data-slidr="two">
								<span class="newsHeading">QNL as a center says Qatar
									Foundation</span> <br /> <span class="newsContent"> <b>25
										Jan 2014</b> - Qatar National Library opened it's door to the
									public. QNL is an initiative of Qatar Foundation.
								</span>
							</div>
							<div data-slidr="three">
								<span class="newsHeading">Vision and Mission</span> <br /> <span
									class="newsContent"> <b>25 Jan 2014</b> - The
									state-of-the-art building designed by renowned architect Reem
									Koolhaas, houses more than 50,00 hard copy books and over a
									million electronic and digital items. QNL is an initiative of
									Qatar Foundation.
								</span>
							</div>
						</div>
					</div>
				</div>
				
				<div class="item">
					<img src="../images/slide-02.jpg" alt="">
					<div class="container">
						<div class="carousel-caption">
							<h1>Another example headline.</h1>
							<p class="lead">Cras justo odio, dapibus ac facilisis in,
								egestas eget quam. Donec id elit non mi porta gravida at eget
								metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
							<a class="btn btn-large btn-primary" href="#">Learn more</a>
						</div>
					</div>
				</div>
				<div class="item">
					<img src="../images/slide-03.jpg" alt="">
					<div class="container">
						<div class="carousel-caption">
							<h1>One more for good measure.</h1>
							<p class="lead">Cras justo odio, dapibus ac facilisis in,
								egestas eget quam. Donec id elit non mi porta gravida at eget
								metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
							<a class="btn btn-large btn-primary" href="#">Browse gallery</a>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			<a class="right carousel-control" href="#myCarousel"
				data-slide="next">&rsaquo;</a>
		</div>
		<footer class="darkgrey">
			<div class="bottomLinks col-xs-12">
				<a href="#">Social</a><a href="#">Media</a><a href="#">Links</a>
			</div>
			<div class="copyrights col-xs-12">Copyrights © 2014 Qatar
				National Library. All rights reserved.</div>
		</footer>
	</div>
</body>
<script>
	
	function startSlide(opt, slidrID, t)
	{
		var sl1 = slidr.create(slidrID,{
			  breadcrumbs: opt,
			  controls: 'none',
			  direction: 'horizontal',
			  fade: true,	  
			  overflow: true,
			  theme: '#222',
			  timing: { 'linear': '0.5s ease-in' },
			  touch: true}).start();
		sl1.add('h',['one','two','three','one']).auto(t,'right');
	}
		  
	$( document ).ready(function() {
		resetSize();
		$('#myCarousel').carousel('pause');
		window.onresize = function() 
		{
			resetSize();   
		};
		
	});

	function resetSize()
	{
		var h = ($(window).height() - ($('#topNav').height() + $('#topNav').height() + $('#logo').height() + 10));
		
		if(h < 768)
		{
			h += 400;
			$('#newsLine').css('bottom',0);
			$('#newsLine').removeClass('semitransparent');
			$('#newsLine').removeClass('shadowed');
			
			$('.news').addClass('semitransparent');			
			$('.trainings').addClass('semitransparent');			
			$('.events').addClass('semitransparent');
			
			startSlide(false,'slidr1',5000);
			startSlide(false,'slidr2',4000);
			startSlide(false,'slidr3',6000);
		}
		else
		{
			$('#newsLine').css('bottom',0);
			$('#newsLine').addClass('semitransparent');
			$('#newsLine').addClass('shadowed');
			$('.news').removeClass('semitransparent');
			
			startSlide(true,'slidr1',5000);
			startSlide(true,'slidr2',4000);
			startSlide(true,'slidr3',6000);
		}

		$('.page').height(h);	
		//alert(h);
	}
		
	
</script>
<script src="../scripts/holder.js"></script>
</html>
