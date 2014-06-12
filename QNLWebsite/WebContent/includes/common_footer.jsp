	<%@taglib tagdir="/WEB-INF/tags" prefix="customTags"%>
	</div>
	</div><!-- fullpage -->
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
var pages = [ 'landing', 'discover','subscribe','terms'];
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
					window.location.href = loc;
				}
			},
		complete: function(){ if(!asFormOnDesktop)resetSize(false);}
			
	});		
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
	if(history.state==null || history.state.location==undefined)
	history.replaceState({'location':window.location.href},document.title,window.location.href);
	
	if((wheight + 214) > 481)
		desktop = true;
	
	loadImages("olfir");
	resetSize(true);
	
	$("#newsSlidr").hover(function(){ newsSlider.stop(); },function(){ newsSlider.auto(); });
	$("#eventSlidr").hover(function(){ eventSlider.stop(); },function(){ eventSlider.auto(); });
	
	//serverTime = new Date($('.time').attr('data-serverTime')).getTime();
	//updateTime();
	
	window.onresize = function(e) {
		resetSize(true);
	};
	//insertWeatherIcon();
	
	$(document).on("click",".load_and_slide_left",function(e){
		e.preventDefault();
		var url_to_navigate = $(this).attr("href");
		if(url_to_navigate!='#' && url_to_navigate!=''){
			loadAndSlideLeft(url_to_navigate);
		}
	});
	
});

window.onpopstate = function(event){
	
	if(event.state!=null || event.state.location!='undefned' || event.state.location!=''){
	  loadAndSlideRight(event.state.location);
	}
}

/**
 *  Method to load the content and slide it across the page.
 */
function loadAndSlideLeft(url_to_navigate){

	$.ajax({
		url: url_to_navigate,
		type: "GET",
		dataType: "html",
		success: function(pData){
				var slider_to_deactivate = $(".body_slider.active");
				var slider_to_activate = $(".body_slider.inactive");
				var response = $('<html/>').html(pData);
				 
				$(slider_to_activate).css("left",$(window).width()).html(loadImagesStr(response.find('.body_slider.active').html()));
				
				$(slider_to_deactivate).animate({left: "-"+$(window).width()}, {duration: 300, queue:false,easing:'linear', done:function(){ 
					$(slider_to_deactivate).removeClass("active").addClass('inactive').css("left","3000px").html(""); 
					}
				});
				$(slider_to_activate).removeClass("inactive").addClass("active").animate({left: "0px"},{duration:300,queue:false,easing:'linear'});
				history.pushState({'location':url_to_navigate},document.title,url_to_navigate);
			},
		complete: function(){ resetSize(true); }
	});		
}

function loadAndSlideRight(url_to_navigate){

	$.ajax({
		url: url_to_navigate,
		type: "GET",
		dataType: "html",
		success: function(pData){
				var slider_to_deactivate = $(".body_slider.active");
				var slider_to_activate = $(".body_slider.inactive");
				var response = $('<html/>').html(pData);
				
				$(slider_to_activate).removeClass("inactive").addClass("active").css("left",'-2000px').html(loadImagesStr(response.find('.body_slider.active').html()));
				
				$(slider_to_deactivate).animate({left: $(window).width()}, {duration: 600, queue:false,easing:'linear', done:function(){ 
					$(slider_to_deactivate).removeClass("active").addClass('inactive').css("left","-2000px").html(""); 
					}
				}); 
				$(slider_to_activate).animate({left: "0px"},{duration:600,queue:false,easing:'linear'});
				//history.pushState({'location':url_to_navigate},document.title,url_to_navigate);
			},
		complete: function(){  resetSize(true); }
	});		
}

function resetSize(b) {
	
	if(desktop)
	//	$(".home").height($(window).height() - 214);
	
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
			$(this).html("<img src='http://localhost:8080/LocalQNLWebsite/" + $(this).attr("data-Image") + "' alt='' title='' />");
		});
	}
	
}

function loadImagesStr(htmlSource)
{	
	if(desktop)
	{
		var tree = $("<div>" + htmlSource + "</div>");
		tree.find('.img').html(function(){ return "<img src='http://localhost:8080/LocalQNLWebsite/" + $(this).attr("data-Image") + "' />"; } );
		htmlSource = tree.html();
	}
	return htmlSource;
}

</script>
</html>