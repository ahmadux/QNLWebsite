<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Qatar National Library</title>
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<script src="scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" href="css/qnl.css" />
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/clndr.css">
<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.4.4/underscore-min.js" type="text/javascript"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.0.0/moment.min.js" type="text/javascript"></script>
<script src="scripts/json.js"></script>
<script src="scripts/clndr.js"></script>
<script src="scripts/site.js"></script>
</head>
<body>
	<div class="col-md-6 col-md-offset-3">
		<div class="row">
			<div class="col-md-6">
				<img src="images/logo.png" alt="Qatar National Library Logo"
					title="Qatar National Library Logo">
			</div>
			<div class="col-md-6 topLinks">
				<a href="#" class="arabic">عربي</a> | <a href="#">Login</a> | <a
					href="#">New to QNL</a>
			</div>
		</div>
		<div class="row">
			<nav class="navbar navbar-inverse" role="navigation">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">QNL Home</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">About QNL<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Vision and Mission</a></li>
								<li><a href="#">Education City</a></li>
								<li><a href="#">Brochures</a></li>
								<li><a href="#">Partnerships</a></li>
								<li class="divider"></li>
								<li><a href="#">Careers @ QNL</a></li>
								<li class="divider"></li>
								<li><a href="#">Location</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Find Answers<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Catalog Search</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Programs and Services<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Academic</a></li>
								<li><a href="#">Educational</a></li>
							</ul></li>
						<li class="divider"></li>
						<li><a href="#">QNL Building</a></li>
						<li>
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Search">
								</div>
								<button type="submit" class="btn btn-default">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</form>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>
		<div class="row" style="margin-top: -19px">
			<div id="carousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel" data-slide-to="0" class="active"></li>
					<li data-target="#carousel" data-slide-to="1"></li>
					<li data-target="#carousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="images/slide-01.jpg" alt="">
						<div class="container">
							<div class="carousel-caption pull-left">																
								<h4>Looking for books you just can't put down?</h4>
								<a class="btn btn-large btn-warning" href="#">See our recommendations</a>								
							</div>
						</div>
					</div>
					<div class="item">
						<img src="images/slide-02.jpg" alt="">
						<div class="container">
							<div class="carousel-caption">
								<h4 style="color: #000">Effort. Teamwork. Dedication.</h4>								
								<a class="btn btn-large btn-primary" href="#">Careers @ QNL</a>
							</div>
						</div>
					</div>
					<div class="item">
						<img src="images/slide-03.jpg" alt="">
						<div class="container">
							<div class="carousel-caption">
								<h4 style="color: #ff0000;">Making headlines.</h4>								
								<a class="btn btn-large btn-default" href="#">QNL in the News</a>
							</div>
						</div>
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="right carousel-control" href="#carousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 center-block" style="margin-top: -22px;">
				<a href="#"><img src="images/childrenCollection.png"
					alt="Toddlers and Children" title="Toddlers and Children"
					width="180px"></a> <a href="#"><img
					src="images/teenCollection.png" alt="Pre-Teens and Teens"
					title="Pre-Teens and Teens" width="180px"></a> <a href="#"><img
					src="images/mainCollection.png" alt="Adults - young and old"
					title="Adults - young and old" width="180px"></a> <a href="#"><img
					src="images/heritage.png" alt="Culture and Heritage"
					title="Culture and Heritage" width="180px"></a> <a href="#"><img
					src="images/onlineDB.png" alt="Online Databses"
					title="Online Databases" width="180px"></a>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-9">
			</div>
			<div class="col-md-3">
				<div class="container">
				    <div class="cal1" id="cal1">
						<div class="event" venue="Computer Lab 1, LAS Building" title="Book Reading - Book 1" startDate="2013-11-13" endDate="2013-11-14" />
						<div class="event" venue="Computer Lab 1, LAS Building" title="Book Reading - Book 2" startDate="2013-11-16" endDate="2013-11-16" />
						<div class="event" venue="Computer Lab 1, LAS Building" title="Book Reading - Book 3" startDate="2013-11-18" endDate="2013-11-21" />
						<div class="event" venue="Computer Lab 1, LAS Building" title="Book Reading - Book 4" startDate="2013-11-23" endDate="2013-11-23" />
						<div class="event" venue="Computer Lab 1, LAS Building" title="Book Reading - Book 5" startDate="2013-11-23" endDate="2013-11-24" />
						<div class="event" venue="Computer Lab 1, LAS Building" title="Book Reading - Book 6" startDate="2013-11-24" endDate="2013-11-27" />
				    </div>	
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-4 section4">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#news" data-toggle="tab">News</a></li>
					<li><a href="#QNLInTheNews" data-toggle="tab">QNL In the
							News</a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane fade in active" id="news">
						<table>
							<tr class="newsItem">
								<td class="image"><img src="images/sailboat.jpg"
									width="60px" class="pull-left" border="0" alt="sailboat"
									title="sailboat"></td>
								<td class="content">Some news about the boat in the picture
									that you can see her eon the left. The news is not particularly
									good or bad. Just to show some text and give an idea.</td>
							</tr>
							<tr class="newsItem">
								<td class="image"><img src="images/sailboat.jpg"
									width="60px" class="pull-left" border="0" alt="sailboat"
									title="sailboat"></td>
								<td class="content">Some news about the boat in the picture
									that you can see her eon the left. The news is not particularly
									good or bad. Just to show some text and give an idea.</td>
							</tr>
							<tr class="newsItem">
								<td class="image"><img src="images/sailboat.jpg"
									width="60px" class="pull-left" border="0" alt="sailboat"
									title="sailboat"></td>
								<td class="content">Some news about the boat in the picture
									that you can see her eon the left. The news is not particularly
									good or bad. Just to show some text and give an idea.</td>
							</tr>
						</table>
					</div>
					<div class="tab-pane fade" id="QNLInTheNews">
						<table>
							<tr class="newsItem">
								<td class="image"><img src="images/sailboat.jpg"
									width="60px" class="pull-left" border="0" alt="sailboat"
									title="sailboat"></td>
								<td class="content">Some news about the boat in the picture
									that you can see her eon the left. The news is not particularly
									good or bad. Just to show some text and give an idea.</td>
							</tr>
							<tr class="newsItem">
								<td class="image"><img src="images/sailboat.jpg"
									width="60px" class="pull-left" border="0" alt="sailboat"
									title="sailboat"></td>
								<td class="content">Some news about the boat in the picture
									that you can see her eon the left. The news is not particularly
									good or bad. Just to show some text and give an idea.</td>
							</tr>
							<tr class="newsItem">
								<td class="image"><img src="images/sailboat.jpg"
									width="60px" class="pull-left" border="0" alt="sailboat"
									title="sailboat"></td>
								<td class="content">Some news about the boat in the picture
									that you can see her eon the left. The news is not particularly
									good or bad. Just to show some text and give an idea.</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-4 section4">
				<h5>Events</h5>
				<table>
					<tr class="newsItem">
						<td class="image"><img src="images/sailboat.jpg" width="60px"
							class="pull-left" border="0" alt="sailboat" title="sailboat">
						</td>
						<td class="content">Some news about the boat in the picture
							that you can see her eon the left. The news is not particularly
							good or bad. Just to show some text and give an idea.</td>
					</tr>
					<tr class="newsItem">
						<td class="image"><img src="images/sailboat.jpg" width="60px"
							class="pull-left" border="0" alt="sailboat" title="sailboat">
						</td>
						<td class="content">Some news about the boat in the picture
							that you can see her eon the left. The news is not particularly
							good or bad. Just to show some text and give an idea.</td>
					</tr>
					<tr class="newsItem">
						<td class="image"><img src="images/sailboat.jpg" width="60px"
							class="pull-left" border="0" alt="sailboat" title="sailboat">
						</td>
						<td class="content">Some news about the boat in the picture
							that you can see her eon the left. The news is not particularly
							good or bad. Just to show some text and give an idea.</td>
					</tr>
				</table>
			</div>
			<div class="col-md-4 section4l">
				<h5>Trainings</h5>
				<table>
					<tr class="newsItem">
						<td class="image"><img src="images/sailboat.jpg" width="60px"
							class="pull-left" border="0" alt="sailboat" title="sailboat">
						</td>
						<td class="content">Some news about the boat in the picture
							that you can see her eon the left. The news is not particularly
							good or bad. Just to show some text and give an idea.</td>
					</tr>
					<tr class="newsItem">
						<td class="image"><img src="images/sailboat.jpg" width="60px"
							class="pull-left" border="0" alt="sailboat" title="sailboat">
						</td>
						<td class="content">Some news about the boat in the picture
							that you can see her eon the left. The news is not particularly
							good or bad. Just to show some text and give an idea.</td>
					</tr>
					<tr class="newsItem">
						<td class="image"><img src="images/sailboat.jpg" width="60px"
							class="pull-left" border="0" alt="sailboat" title="sailboat">
						</td>
						<td class="content">Some news about the boat in the picture
							that you can see her eon the left. The news is not particularly
							good or bad. Just to show some text and give an idea.</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="row footer">
			<div class="col-md-4">
				<fieldset title="About the Library">
					<legend>About the Library</legend>
					<a href="#">Contact Us</a><br /> <a href="#">Location Map</a><br />
					<a href="#">Sitemap</a><br />
				</fieldset>
				<br />
				<fieldset title="Share">
					<legend>Share</legend>
					<a href="#"><i class="icon-facebook icon-2x"></i></a> <a href="#"><i
						class="icon-twitter icon-2x"></i></a> <a href="#"><i
						class="icon-google-plus-sign icon-2x"></i></a>
				</fieldset>
			</div>
			<div class="col-md-4">
				<fieldset title="Our Collections">
					<legend>Our Collections</legend>
					<a href="#">Main Collection</a><br /> <a href="#">Teen
						Collection</a><br /> <a href="#">Children's Collection</a><br />
				</fieldset>
			</div>
			<div class="col-md-4">
				<fieldset title="Programs and Services">
					<legend>Programs and Services</legend>
					<a href="#">Academic Services</a><br /> <a href="#">Educational
						Services</a><br /> <a href="#">Public Computer Services</a><br />
				</fieldset>
				<br />
				<fieldset title="Sign-up for our newsletter">
					<legend>Sign up for our newsletter</legend>
					Stay up-to-date with our newsletter
					<div class="input-group">
						<input type="text" class="form-control"> <span
							class="input-group-btn">
							<button class="btn btn-primary" type="button">
								<span class="glyphicon glyphicon-edit"></span>
							</button>
						</span>
					</div>
				</fieldset>
			</div>
		</div>

		<div class="row-fluid">
			<div class="span12">
				<div class="hMid copyrights">
					<small>© Copyrights reserved 2013. Qatar National Library,
						a member of Qatar Foundation.</small>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/template" id="template-calendar">
	
	<div class="clndr">
	<div class="clndr-controls">
		<div class="clndr-control-button"><span class="clndr-previous-button">&lt;</span></div>
		<div class="month"><%= month %></div>
		<div class="clndr-control-button rightalign"><span class="clndr-next-button">&gt;</span></div>
	</div>
	<table class="clndr-table" border="0" cellspacing="0" cellpadding="0">
		<thead>
			<tr class="header-days">				
				<% _.each(daysOfTheWeek, function(day) { %>
					<td class="header-day"><%= day %></td>
				<% }); %>
			</tr>
		</thead>
		<tbody>
			<tr>
				<% var i = 0; %>
				<% _.each(days, function(day) { %>
				<% if(i == 7) { i = 0; %>
					</tr><tr>
				<% } %>
					<td class="<%= day.classes %>"><div class="day-contents"><%= day.day %></div></td>
				<% 
					i++;
				}); %>
			</tr>				
		</tbody>	
	</table>
	</div>
</script>


</html>