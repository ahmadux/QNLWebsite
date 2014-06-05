<%@tag description="Top News tag" pageEncoding="UTF-8" import="com.sun.syndication.feed.synd.*,com.qnl.services.*,com.sun.syndication.feed.synd.SyndFeed" %>
<%@attribute name="limitNews" required="true" type="String"%>

<div class="topStories">
	<%
		SyndFeed feeds = (SyndFeed)request.getServletContext().getAttribute("GulfTimesNewsFeeds");
		SyndEntry feed; 
		int limit = Integer.parseInt(limitNews);
		if(feeds != null)
		{		
			limit = feeds.getEntries().size() < limit?feeds.getEntries().size():limit;
					
			for(int i=0; limit > i; i++)
			{
				feed = (SyndEntryImpl)feeds.getEntries().get(i);
	%>
					
			<div class="storyText">
				<div class="storyHeadline">
					<%= feed.getTitle() %>&nbsp;<a href="<%= feed.getLink() %>" class="ui-icon ui-icon-link" title="<%= feed.getTitle() %>" style="display:inline-block"></a>
				</div>
				<div class="storyContent">
					<%= feed.getDescription().getValue() %>
				</div>
			</div>	
	<%
			}
		}
	%>
</div>