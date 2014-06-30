<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="includes/common_header2.jsp" />
			<div class="body_slider active  col-xs-12 landing pull-left ">
			<div id="main_content">
				<div class="background_full" style="background-image: url(${BaseServerPath}/images/large/main4.jpg);"></div>
				<div class="content">
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
				</div><!--  End .content  -->
			</div><!-- End #main_content -->
			</div>
			<div id="" class=" body_slider inactive"><div id="main_content"></div></div>
<jsp:include page="includes/common_footer.jsp" />