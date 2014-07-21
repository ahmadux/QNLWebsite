<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../includes/common_header2.jsp" />
<div class="body_slider active ">
	<div id="main_content"  style="background-image:url('../images/backgrounds/librarycorner.jpg')">
	<div class="row newhome-top-section">
		<div class="col-xs-12 col-md-6 col-md-offset-2 pull-left highSpaceTop nopadding">
		<h4 class="textOutlined hidden-xs">Calendar of Events<span class="archive"><a href="" class="headingLink">See all events</a></span></h4>		
		<div id="eventSlidr" class="fullWidth nopadding">
			<div data-slidr="one" class="fullWidth nopadding newhome">
				<div class="addthisevent fullWidth nopadding">
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
			<div data-slidr="two" class="fullWidth nopadding inactive_slide newhome">
				<div class="addthisevent  fullWidth nopadding">
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
			<div data-slidr="three" class="fullWidth nopadding inactive_slide newhome">
				<div class="addthisevent  fullWidth nopadding">
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

			<div class="tab-content translucent">
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
	
	</div>
	
	
	
	<div class="row newhome-bottom" >	
	
		<div class="col-xs-12 col-md-4 col-md-offset-1 pull-left newsSection">	
			<h4>
				Latest News <span class="archive"><a href="">News Archive</a></span>
			</h4>
			<span class="hidden-xs"></span>
			<div id="newsSlidr" class="newhome">
				<div data-slidr="one" class="newsSlidr" >
					<span class="newsImage img" data-Image="images/news1.jpg"></span>
					<span class="newsHeading">Qatar National Library unveils new building</span>
					<span class="newsDate">25 January	2014</span>
					<span class="newsText">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula volutpat metus, et accumsan leo auctor non. 
				 		Nam eu mi convallis, bibendum tellus eget, commodo turpis. Mauris ante turpis, molestie et ante quis, feugiat adipiscing nibh. 
				 		Aliquam rutrum, diam sit amet pharetra tincidunt, velit dolor dapibus diam, eu cursus dui lacus mollis lectus. </p>
				 		<p>
				 	</span>
					<span class="readmore archive"><a href="#">Read More</a></span>
	
				</div>
				<div data-slidr="two" class="newsSlidr inactive_slide">
					<span class="newsImage img" data-Image="images/news2.jpg"></span>
					<span class="newsHeading">QNL as a center says Qatar Foundation</span>
					<span class="newsDate">25 January 2014</span>
					<span class="newsText">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula volutpat metus, et accumsan leo auctor non. 
				 		Nam eu mi convallis, bibendum tellus eget, commodo turpis. Mauris ante turpis, molestie et ante quis, feugiat adipiscing nibh. 
				 		Aliquam rutrum, diam sit amet pharetra tincidunt, velit dolor dapibus diam, eu cursus dui lacus mollis lectus. </p>
				 		<p>
				 	</span>
					<span class="readmore archive"><a href="#">Read More</a></span>
	
				</div>
				<div data-slidr="three" class="newsSlidr inactive_slide">
					<span class="newsImage img" data-Image="images/news3.jpg"></span>								
					<span class="newsHeading">Vision and Mission of Qatar National Library</span>
					<span class="newsDate">25 January 2014</span>
					<span class="newsText">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula volutpat metus, et accumsan leo auctor non. 
				 		Nam eu mi convallis, bibendum tellus eget, commodo turpis. Mauris ante turpis, molestie et ante quis, feugiat adipiscing nibh. 
				 		Aliquam rutrum, diam sit amet pharetra tincidunt, velit dolor dapibus diam, eu cursus dui lacus mollis lectus. </p>
				 		<p>
				 	</span>
					<span class="readmore archive"><a href="#">Read More</a></span>								
				</div>
			</div>						
		</div>
		<div class="col-xs-12 col-md-3 pull-left">
			<div class="col-xs-12 quickLinksSection">
				<h4>Quick Links</h4>
				<div class="col-xs-12 col-md-6">
					<a href="">Data Analysis</a>
					<a href="">Data Analysis</a>
					<a href="">Data Analysis</a>
				</div>
				<div class="col-xs-12 col-md-6">
					<a href="">Data Analysis</a>
					<a href="">Data Analysis</a>
					<a href="">Data Analysis</a>
				</div>
				<div class="col-xs-12 col-md-6">
					<a href="">Data Analysis</a>
					<a href="">Data Analysis</a>
					<a href="">Data Analysis</a>
				</div>
				<div class="col-xs-12 col-md-6">
					<a href="">Data Analysis</a>
					<a href="">Data Analysis</a>
					<a href="">Data Analysis</a>
				</div>
			</div>
			<div class="col-xs-12 medSpaceTop pull-left">	
				<h4>Where are we</h4>			
				<div class="pull-right col-xs-6 col-md-4">
					<img src="../images/locationMap.jpg" class="img-rounded bordered" alt="" title="" />
				</div>		
				<p>Qatar National Library is located in the Education City in Doha.
				Our staff working times are from 6:00 AM to 3:30 PM, Sunday - Thursday. Qatar National Libraray is open to public at all times on all days of the week. 
				Visit us and learn somehting new today!
				</p>
			</div>
		</div>
		<div class="col-xs-12 col-md-4 pull-left">
			<div class="loginBox img-rounded col-xs-12 col-md-7 boldColor ">
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
					<button type="submit" class="btn">Login</button>
				</form>
		
			</div>
			
			<div class="col-xs-12 ask">
				<h4>Ask our Librarian</h4>
				<p>If you have a question, our staff are gald to help.
				Choose a category for your question and we will get back to you as soon as possible.</p>
				<form class="form-horizontal">					
					<div class="form-group">
						<label class="col-xs-4 col-md-2 control-label" for="ask_email">Email</label>
						<div class="col-xs-8 col-md-10l"><input class="form-control" type="email" maxlength="75" id="ask_email" name="ask_email" /></div> 
					</div>
					<div class="form-group">
						<label class="col-xs-4 col-md-2 control-label" for="ask_category">Category</label>
						<div class="col-xs-8 col-md-10">
							<select class="form-control" id="ask_category" name="ask_category">
								<option value="General">General</option>
								<option value="Communication">Media and Communication</option>
								<option value="Colleciton">Collection related</option>
								<option value="IT">Information Technology</option>
								<option value="Support">Support</option>
							</select>
						</div> 
					</div>
					<div class="form-group">
						<label class="col-xs-4 col-md-2 control-label"  for="ask_question">Question</label>
						<div class="col-xs-8 col-md-10"><textarea class="form-control" rows="4" maxlength="500" name="ask_question" id="ask_question"></textarea></div> 
					</div>
					<div class="pull-right">
						<button class="btn brandingButton" >Ask!</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div><!-- End #main_content -->
</div>
	<div id="" class=" body_slider inactive"><div id="main_content"></div></div>
<jsp:include page="../includes/common_footer.jsp" />