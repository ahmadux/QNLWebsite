<div class="teenSection col-xs-12">
	<div class="row col-xs-12 flexiRow highSpaceTop highSpaceBottom">		
		<div id="teenEventSlidr" class="col-xs-12 col-md-10 nopadding">
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
	</div>
	<div class="row col-xs-12 flexiRow highSpaceTop highSpaceBottom">
		<div class="sectionBox col-xs-12 col-sm-2 img-rounded semitransparent">						
			<span class="sectionImage hidden-sm hidden-x img" data-Image="images/vision.png"></span>	
			<span class="sectionHeading">Vision and Mission</span> 
			<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
		</div>	
		<div class="sectionBox col-xs-12  col-sm-2 img-rounded semitransparent">						
			<span class="sectionImage hidden-sm hidden-xs img" data-Image="images/board.png"></span>	
			<span class="sectionHeading">Board of Directors</span> 
			<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
		</div>
		<div class="sectionBox col-xs-12  col-sm-2 img-rounded semitransparent">						
			<span class="sectionImage hidden-sm hidden-xs img" data-Image="images/message.png"></span>	
			<span class="sectionHeading">Director's Message</span> 
			<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
		</div>
		<div class="sectionBox col-xs-12  col-sm-2 img-rounded semitransparent">						
			<span class="sectionImage hidden-sm hidden-xs img" data-Image="images/children.jpg"></span>	
			<span class="sectionHeading">About QNL</span> 
			<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
		</div>	
		<div class="sectionBox col-xs-12  col-sm-2 img-rounded semitransparent">						
			<span class="sectionImage hidden-sm hidden-xs img" data-Image="images/heritage.jpg"></span>	
			<span class="sectionHeading">QNL Brochure</span> 
			<span class="sectionText">Some introductory text about this colleciton. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span>
		</div>			
	</div>	
</div>

<script>
$(document).ready(function() {
	teenEventSlider = startSlide(false, 'teenEventSlidr', 5000, 'cube', [ 'one', 'two', 'three', 'one' ], 'up', '#fff', true, 'none',true);
	$("#teenEventSlidr").hover(function(){ eventSlider.stop(); },function(){ eventSlider.auto(); });
	
});
</script>