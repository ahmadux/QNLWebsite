// call this from the developer console and you can control both instances
var calendars = {};

$(document).ready( function() {

  // assuming you've got the appropriate language files,
  // clndr will respect whatever moment's language is set to.
  // moment.lang('ru');

  // here's some magic to make sure the dates are happening this month.
  var thisMonth = moment().format('YYYY-MM');

  var eventArray = [];
  
  $("#cal1 .event").each(function() {
		var event = {};
		event.startDate = $(this).attr('startDate');
		event.endDate = $(this).attr('endDate');
		event.venue = $(this).attr('venue');
		event.title = $(this).attr('title');		
		eventArray.push(event);
  });
  
  //$("#cal1").remove();

  
  //  { startDate: '2013-11-3', endDate: '2013-11-4', title: 'Book reading', venue: "Computer Lab 1, LAS Building" },
  //  { startDate: '2013-11-3', endDate: '2013-11-3', title: 'Book reading 2' , venue: "Room 46, Porta Cabin 5" },
//	{ startDate: '2013-11-7', endDate: '2013-11-9', title: 'Book reading 3' , venue: "Room 546, Student Center" },
//	{ startDate: '2013-11-10', endDate: '2013-11-13', title: 'Book reading 4', venue: "Computer Lab 1, LAS Building" },
//	{ startDate: '2013-11-14', endDate: '2013-11-14', title: 'Book reading 5', venue: "Room 546, Student Center" },
//	{ startDate: '2013-11-14', endDate: '2013-11-14', title: 'Book reading 6', venue: "Computer Lab 1, LAS Building" }
 // ];

  // the order of the click handlers is predictable.
  // direct click action callbacks come first: click, nextMonth, previousMonth, nextYear, previousYear, or today.
  // then onMonthChange (if the month changed).
  // finally onYearChange (if the year changed).

  calendars.clndr1 = $('.cal1').clndr({
    events: eventArray,
	template: $('#template-calendar').html(),
    // constraints: {
    //   startDate: '2013-11-01',
    //   endDate: '2013-11-15'
    // },
    clickEvents: {
      click: function(target) {
		var evStr = "";
        console.log(target);
        if($(target.element).hasClass('inactive')) {
          console.log('not a valid datepicker date.');
        } else {
			if(target.events.length > 0)
			{
				for(var i=0; i < target.events.length; i++)
				{
					evStr += "<br /><span class='eventTitle'>" + target.events[i].title + "</span>"
					evStr += "<br /><span class='eventVenue'>" + target.events[i].venue + "</span>";
					if(target.events[i].startDate != target.events[i].endDate)
						evStr += "<br /><span class='eventDates'>" + getFormattedDate(target.events[i].startDate) + " - " + getFormattedDate(target.events[i].endDate) + "</span>";
					else
						evStr += "<br /><span class='eventDates'>" + getFormattedDate(target.events[i].startDate) + "</span>";
				}
				$("#eventList").html(evStr);
				$("#eventListHead").text("Event(s) on " + target.date._i);
			}
        }
      },
      nextMonth: function() {		
        console.log('next month.');
      },
      previousMonth: function() {		
        console.log('previous month.');
      },
      onMonthChange: function() {
		loadEventsThisMonth();
        console.log('month changed.');
      },
      nextYear: function() {
        console.log('next year.');
      },
      previousYear: function() {
        console.log('previous year.');
      },
      onYearChange: function() {
        console.log('year changed.');
      }
    },
    multiDayEvents: {
      startDate: 'startDate',
      endDate: 'endDate'
    },
    showAdjacentMonths: true,
    adjacentDaysChangeMonth: false
  });

function getFormattedDate(dt)
{
	return moment(dt).format("DD MMM");
}  

  // bind both clndrs to the left and right arrow keys
  $(document).keydown( function(e) {
    if(e.keyCode == 37) {
      // left arrow
      calendars.clndr1.back();
      calendars.clndr2.back();
    }
    if(e.keyCode == 39) {
      // right arrow
      calendars.clndr1.forward();
      calendars.clndr2.forward();
    }
  });

});

function loadEventsThisMonth()
{
	var evStr = "";
	for(var i=0; i < eventsThisMonth.length; i++)
	{
		evStr += "<br /><span class='eventTitle'>" + eventsThisMonth[i].title + "</span>"
		evStr += "<br /><span class='eventVenue'>" + eventsThisMonth[i].venue + "</span>";
					if(eventsThisMonth[i].startDate != eventsThisMonth[i].endDate)
						evStr += "<br /><span class='eventDates'>" + getFormattedDate(eventsThisMonth[i].startDate) + " - " + getFormattedDate(eventsThisMonth[i].endDate) + "</span>";
					else
						evStr += "<br /><span class='eventDates'>" + getFormattedDate(eventsThisMonth[i].startDate) + "</span>";
				}
				$("#eventList").html(evStr);
				$("#eventListHead").text("Event(s) this month");

}