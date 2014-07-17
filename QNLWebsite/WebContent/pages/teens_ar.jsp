<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../includes/common_header.jsp" />
<div class="body_slider active ">
	<div id="main_content" style="background-image:url('${requestscope.BACKGROUNDIMAGE}')">
	<!-- row starts -->
	<div class="row teen-top-section">
	<div class="col-lg-12 col-md-12 col-ms-12 pull-left ">
		<!--  Events Slider -->
		<div class="col-lg-4 col-md-4 col-xs-12 center-block highSpaceTop nopadding">
			<h4 class="textOutlined hidden-xs" style="color:#fff">Calendar of Events</h4>
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
				<div data-slidr="two" class="fullWidth nopadding inactive_slide">
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
				<div data-slidr="three" class="fullWidth nopadding inactive_slide">
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
		</div>
		<!-- End Event Slider -->
		</div>
		</div><!--  row ends  -->
		
		<div class="row">
		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 wrap center">
			<h2 class="textOutlined" style="color:#fff">Browse latest titles</h2>
			<div class="scrollbar">
				<div class="handle"><div class="mousearea"></div></div>
			</div>
	
			<div class="frame effects translucent img-rounded" id="centered">
				<ul class="slidee">
					<li><div class="slide_book_image"><span class="img" data-Image="images/lion_childres.jpg" ></span></div></li>
					<li><div class="slide_book_image"><span class="img" data-Image="images/teen-go-go-cover.jpg" ></span></div></li>
					<li><div class="slide_book_image"><span class="img" data-Image="images/TeenConfessions.png" ></span></div></li>
					<li><div class="slide_book_image"><span class="img" data-Image="images/democracy-book-cover.jpg" ></span></div></li>
					<li><div class="slide_book_image"><span class="img" data-Image="images/AssessmentCover.jpg" ></span></div></li>
					<li><div class="slide_book_image"><span class="img" data-Image="images/harry_porter.jpg" ></span></div></li>
					<li><div class="slide_book_image"><span class="img" data-Image="images/lion_childres.jpg" ></span></div></li>
					<li><div class="slide_book_image"><span class="img" data-Image="images/teen-go-go-cover.jpg" ></span></div></li>
					<li><div class="slide_book_image"><span class="img" data-Image="images/TeenConfessions.png" ></span></div></li>
					<li><div class="slide_book_image"><span class="img" data-Image="images/democracy-book-cover.jpg" ></span></div></li>
					<li><div class="slide_book_image"><span class="img" data-Image="images/AssessmentCover.jpg" ></span></div></li>
					<li><div class="slide_book_image"><span class="img" data-Image="images/harry_porter.jpg" ></span></div></li>
				</ul>
			</div>
				
			<div class="controls center">
				<button class="btn prev"><i class="glyphicon glyphicon-chevron-left"></i> prev</button>
				<button class="btn next">next <i class="glyphicon glyphicon-chevron-right"></i></button>
			</div>
		
		</div>
		</div>	
		
		<div class="row teen-bottom" >
		
		
		<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 ">
			
			<div class="flip-container col-centered">
				<div class="flipper">
					<div class="front review_box img-rounded" >
						<div class="review_head">Staff Pick</div>
						<div class="review_book_image"><span class="img" data-Image="images/teen-go-go-cover.jpg" ></span></div>
					</div>
					<div class="back review_box img-rounded" >
						
						<div class="reviews_list">
							<p><span>5/5</span> This book was an extra ordinary piece of work<span class="author">Boy scout</span></p>
							<p/>
							<p><span>5/5</span> I loved reading it <span class="author">Usman</span></p>
							<p/>
							<p><span>4/5</span>it is ok ok , little bit dry read <span class="author">Althaf</span></p>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		
		
		
		<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
		
			<div class="flip-container col-centered">
				<div class="flipper">
					<div class="front review_box img-rounded" >
						<div class="review_head">Teen Pick</div>
						<div class="review_book_image"><span class="img" data-Image="images/TeenConfessions.png" ></span></div>
					</div>
					<div class="back review_box img-rounded" >
						
						<div class="reviews_list">
							<p><span>5/5</span> This book was an extra ordinary piece of work<span class="author">Boy scout</span></p>
							<p/>
							<p><span>5/5</span> I loved reading it <span class="author">Usman</span></p>
							<p/>
							<p><span>4/5</span>it is ok ok , little bit dry read <span class="author">Althaf</span></p>
						</div>
					</div>
				</div>
			</div>
			
			
		</div>
			
		<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 teen-highlightSection">
			<div class="heading">Passion for writing fiction</div>
			<div class="author">from the desk of A. Authorname</div>
			<div class="content">
				<div class="col-xs-12 col-sm-6 col-md-3 pull-left">
					<img src="../images/author.jpg" width="75px" alt="" title="" />
				</div>
				 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula volutpat metus, et accumsan leo auctor non. 
				 Nam eu mi convallis, bibendum tellus eget, commodo turpis. Mauris ante turpis, molestie et ante quis, feugiat adipiscing nibh. 
				 Aliquam rutrum, diam sit amet pharetra tincidunt, velit dolor dapibus diam, eu cursus dui lacus mollis lectus. Suspendisse 
				 tincidunt, sapien et sagittis convallis, nibh nunc congue risus, quis sodales libero lectus eget urna. Vestibulum fringilla 
				 gravida leo, sit amet euismod turpis interdum ut.</p>
				 
			</div>
		</div>	
		
		<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 teen-highlightSection">
			<div class="heading">Write a review</div>
			<div class="content pull-left">
				 <p>Review a book you recently read and get a chnace to get your review published on our website!</p>
				 <p>Simply fill in this small review book form and let us know what you thought about your favourite book and why others should read it.</p>
				 <button id="btn_wrtieReview" name="btn_writeReview" class="btn brandingButton">Review a title</button>
				 
				 <!-- <form class="form-horizontal" role="form">
  					<div class="form-group">
    					<label for="rev_name" class="col-sm-2 control-label">Name</label>
    					<div class="col-sm-10">
      						<input type="text" class="form-control" id="rev_name" placeholder="Your Name" name="rev_email">
    					</div>
  					</div>
				 	<div class="form-group">
    					<label for="rev_email" class="col-sm-2 control-label">Email</label>
    					<div class="col-sm-10">
      						<input type="email" class="form-control" id="rev_email" placeholder="Your Name" name="rev_email">
    					</div>
  					</div>
  					<div class="form-group">
    					<label for="rev_booktitle" class="col-sm-2 control-label">Book Title</label>
    					<div class="col-sm-10">
      						<input type="email" class="form-control" id="rev_booktitle" placeholder="Your Name" name="rev_booktitle">
    					</div>
  					</div>  					
  					<div class="form-group">
    					<label for="rev_review" class="col-sm-2 control-label">Review</label>
    					<div class="col-sm-10">
      						<textarea id="rev_review" name="rev_review" class="form-control" rows="3" maxlength="500"></textarea> 
    					</div>
  					</div> --!>
				 </form> 
			</div>
		</div>	
		<!-- <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 ">
			
			<div class="flip-container col-centered">
				<div class="flipper">
					<div class="front review_box img-rounded " >
						<div class="review_head">Readers' Pick</div>
						<div class="review_book_image"><span class="img" data-Image="images/lion_childres.jpg" ></span></div>
					</div>
					<div class="back review_box img-rounded" >
						
						<div class="reviews_list">
							<p><span>5/5</span> This book was an extra ordinary piece of work<span class="author">Boy scout</span></p>
							<p/>
							<p><span>5/5</span> I loved reading it <span class="author">Usman</span></p>
							<p/>
							<p><span>4/5</span>it is ok ok , little bit dry read <span class="author">Althaf</span></p>
						</div>
					</div>
				</div>
			</div>
		</div>
			
		<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">			
			<div class="flip-container col-centered">
				<div class="flipper">
					<div class="front review_box img-rounded" >
						<div class="review_head">Staff Pick</div>
						<div class="review_book_image"><span class="img" data-Image="images/democracy-book-cover.jpg"></span></div>
					</div>
					<div class="back review_box img-rounded" >						
						<div class="reviews_list">
							<p><span>5/5</span> This book was an extra ordinary piece of work<span class="author">Boy scout</span></p>
							<p/>
							<p><span>5/5</span> I loved reading it <span class="author">Usman</span></p>
							<p/>
							<p><span>4/5</span>it is ok ok , little bit dry read <span class="author">Althaf</span></p>
						</div>
					</div>
				</div>
			</div>
		</div>-->
		
		</div>
</div>
</div>
<div id="" class=" body_slider inactive"><div id="main_content"></div></div>
<jsp:include page="../includes/common_footer.jsp" />