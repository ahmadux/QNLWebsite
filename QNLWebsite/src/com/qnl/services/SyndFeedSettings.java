package com.qnl.services;

import java.io.FileWriter;
import java.io.Writer;
import java.util.Date;
import java.util.List;


import com.sun.syndication.feed.synd.SyndFeed;
import com.sun.syndication.feed.synd.SyndFeedImpl;
import com.sun.syndication.feed.synd.SyndImage;
import com.sun.syndication.feed.synd.SyndImageImpl;
import com.sun.syndication.io.FeedException;
import com.sun.syndication.io.SyndFeedOutput;

public class SyndFeedSettings 
{
	public SyndFeed feed;
	public String fileName = "rss.xml";
	public String feedType = "rss_2.0";
	public String feedTitle = "Qatar National Library (RSS Feed)";
	public String feedLink = "http://www.qnl.qa";
	public String feedDescription = "This is the official RSS feed for Qatar National Library. (C) Copyrights Qatar National Library 2013.";
	public String feedLanguage = "en-usa";
	
	public String feedImageURL = "http://www.qnl.qa/app/media/197";
	public String feedImageTitle = "Qatar National Library";
	public String feedImageLink = "http://www.qnl.qa";
	public String feedImageDescription = "(C) Copyrights Qatar National Library 2013. A member of Qatra Foundation.";
	//A Jazeera:  http://www.aljazeera.com/Services/Rss/?PostingId=2007731105943979989
	//Gulf Times: http://cs.gulf-times.com/GulfTimesNewsWebsite/rss.aspx?PortalName=GulfTimes&ListName=TopNewsList
	//BBC:        http://feeds.bbci.co.uk/news/world/asia/rss.xml

	public SyndFeedSettings()
	{
		feed = new SyndFeedImpl();
		SyndImage sImage = new SyndImageImpl();
		sImage.setTitle(feedImageTitle);
		sImage.setLink(feedImageLink);
		sImage.setDescription(feedImageDescription);
		sImage.setUrl(feedImageURL);
		feed.setImage(sImage);
		
		feed.setFeedType(feedType);     
	    feed.setTitle(feedTitle);
	    feed.setLink(feedLink);
	    feed.setPublishedDate(new Date());
	    feed.setCopyright("(C) Copyrights Qatar National Library 2013. A member of Qatar Foundation");
	    feed.setLanguage(feedLanguage);
	    feed.setDescription(feedDescription);
	    
	}
	
	public SyndFeedSettings(SyndFeed f)
	{
		feed = f;
		feedType = f.getFeedType();     
	    feedTitle = f.getTitle();
	    feedLink = f.getLink();
	    
	    if((f.getLinks().size() > 0)&&(feedLink !=null)&&(feedLink.trim() != ""))	    
	    		feedLink = f.getLinks().get(0).toString();	    
	    
	    feedDescription = f.getDescription();		
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void addFeedEntries(List entries)
	{
		if(entries != null)
			feed.getEntries().addAll(entries);
	}
	
	public void writeFeed() throws java.io.IOException, FeedException
	{
		Writer writer = new FileWriter(fileName);
        SyndFeedOutput output = new SyndFeedOutput();
        output.output(feed,writer);
        writer.close();
	}

}
