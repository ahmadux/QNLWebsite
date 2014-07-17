<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../includes/common_header.jsp" />
<div class="body_slider active ">
<script>
	
</script>
	<div id="main_content" style="background-image: url(${BACKGROUNDIMAGE});">
	<!-- row starts -->
	<div class="row children-top-section">
		<div class="col-lg-12 col-md-12 col-ms-12 ">		
			<div class="col-lg-4 col-md-4 col-xs-12 center-block highSpaceTopDbl img-rounded translucent">	
			<br />		
					<form>
						 <div class="input-group input-group-lg">
			      			<input type="text" class="col-xs-12 col-sm-8 col-md-6 form-control" maxlength="120" />
			      			<span class="input-group-btn">
			        			<button class="btn brandingButton" type="button">Search</button>
			      			</span>			      			 
			    		</div>		
			    		<br />
			      			<font class="large">Search our Catalog or your favorite book or author! You can even search for your area of interest like pirates, ARRRrrr!</font>	
					</form>			
			</div>		
		</div>
	</div><!--  row ends  -->
		
		
	<div class="row col-xs-12 center-block">
		<div class="childrenSeciton-links col-xs-12 col-md-8 center-block highSpaceBottom highSpaceTop">				
			<a href=""><img src="images/music.jpg" alt="Music And Arts" title="Music And Arts"></a>
			<a href=""><img src="images/religion.jpg" alt="" title="" /></a>
			<a href=""><img src="images/science.jpg" alt="" title="" /></a>
			<a href=""><img src="images/sports.jpg" alt="" title="" /></a>
			<a href=""><img src="images/history.jpg" alt="" title="" /></a>
			<a href=""><img src="images/holidays.jpg" alt="" title="" /></a>
		</div>
	</div>
				
	<div class="row children-bottom" >
		<div class="col-sm-4 col-xs-12 ">			
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
			
		<div class="col-sm-4 col-xs-12 children-highlightSection">
			<div class="heading">Passion for writing fiction</div>
			<div class="author">from the desk of A. Authorname</div>
			<div class="xcontent">
				<div class="col-xs-12 col-sm-6 col-md-3 pull-left">
					<img src="images/author.jpg" width="75px" alt="" title="" />
				</div>
				 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vehicula volutpat metus, et accumsan leo auctor non. 
				 Nam eu mi convallis, bibendum tellus eget, commodo turpis. Mauris ante turpis, molestie et ante quis, feugiat adipiscing nibh. 
				 Aliquam rutrum, diam sit amet pharetra tincidunt, velit dolor dapibus diam, eu cursus dui lacus mollis lectus. </p>
				 <p>
				 Mauris ante turpis, molestie et ante quis, feugiat adipiscing nibh. 
				 Aliquam rutrum, diam sit amet pharetra tincidunt, velit dolor dapibus diam, eu cursus dui lacus mollis lectus. 
				 </p>
				 
			</div>
		</div>	
		
		<div class="col-sm-4 col-xs-12 children-highlightSection">
			<div class="heading">Calendar of Events</div>
			<div class="pull-left">			 
				<div class="cal">
					<script type="text/template" id="template-calendar">
        <div class="clndr-controls">
          <div class="clndr-previous-button">&lsaquo;</div>
          <div class="month">{= month }}&nbsp;{= year}}</div>
          <div class="clndr-next-button">&rsaquo;</div>
        </div>
		<div class="clndr-holder">
        <div class="clndr-grid">
          <div class="days-of-the-week">
            {{ _.each(daysOfTheWeek, function(day) { }}
              <div class="header-day">{= day }}</div>
            {{ }); }}
            <div class="days">
              {{ _.each(days, function(day) { }}
                <div class="{= day.classes }}">{= day.day }}</div>
              {{ }); }}
            </div>
          </div>
        </div>
		<div class="event-listing">
              <div class="event-listing-title">What's up this month?</div>
              {{ _.each(eventsThisMonth, function(event) { }}
                  <div class="event-item">
					<div class="event-item-name">{= event.title }}</div>
					<div class="event-item-date">{= event.startDate.substr(event.startDate.length - 2) }} - {= event.endDate.substr(event.endDate.length - 2)}} {= month}}</div>
                  </div>
                {{ }); }}
        </div>
        </div>
      			</script>					
    			</div>  			
            </div>	
		</div>
	</div>
<div id="" class=" body_slider inactive"><div id="main_content"></div></div>
<script>
	
	$(document).ready( function() {
		
		_.templateSettings = {
				  interpolate: /\{\=(.+?)\}\}/g,
				  evaluate: /\{\{(.+?)\}\}/g,
				};
		
		//Setting some test Event Dates
		//To Do: Pull in event lists in JSON format using AJAX
		 var thisMonth = moment().format('YYYY-MM');
		 var eventArray = [
		    { startDate: thisMonth + '-10', endDate: thisMonth + '-14', title: 'Multi-Day Event', url: 'http://www.yahoo.com' },
		    { startDate: thisMonth + '-21', endDate: thisMonth + '-23', title: 'Another Multi-Day Event', url: 'http://www.hotmail.com'  }
		  ];
		 
				
		$('.cal').clndr({			
			    template: $('#template-calendar').html(),
			    events: eventArray,
			    multiDayEvents: {
			        startDate: 'startDate',
			        endDate: 'endDate'
			      },
			    showAdjacentMonths: false,
			    adjacentDaysChangeMonth: false,
			    clickEvents: {
			      click: function(target) {
			        console.log(target.events[0].startDate);
			      }
			    },
			    forceSixRows: true		 	
		});
  
	});
</script>

<jsp:include page="../includes/common_footer.jsp" />

