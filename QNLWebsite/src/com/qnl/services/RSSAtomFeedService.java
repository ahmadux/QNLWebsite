package com.qnl.services;
import java.net.URL;
import com.sun.syndication.feed.synd.SyndFeed;
import com.sun.syndication.io.SyndFeedInput;
import com.sun.syndication.io.XmlReader;
import com.sun.syndication.feed.synd.*;
 
import java.util.ArrayList;
import java.util.Date;

import java.util.List;

public class RSSAtomFeedService {
	 
	/**
	 *  @author uahmad
	 *
	 */ 
	public static enum feedEntryType {HTML, TEXT};
	   	
	public static SyndFeed readFeed(String feedUrl) {        
        SyndFeed feed= null;
        try {
        	URL feedURL = new URL(feedUrl);
            SyndFeedInput input = new SyndFeedInput();
            feed = input.build(new XmlReader(feedURL));
        }
        catch (Exception ex) 
        {
            ex.printStackTrace();
            System.out.println("ERROR: "+ex.getMessage());
        }
        return feed;
     }
    
        
    @SuppressWarnings({ "unchecked", "rawtypes" })
	public static void writeFeedEntry(SyndFeedSettings f, feedEntryType fType, String feedEntryTitle, String feedEntryLink, String feedEntryDescription, Date  feedEntryDate) throws java.text.ParseException
    {                    
	    List entries = new ArrayList();
	    SyndEntry entry;
	    SyndContent description;
	
	    entry = new SyndEntryImpl();
        entry.setTitle(feedEntryTitle);
        entry.setLink(feedEntryLink);
         
        entry.setPublishedDate(feedEntryDate);
        
        description = new SyndContentImpl();
        
        if(feedEntryType.TEXT == fType)
        	description.setType("text/plain");
        else
        	description.setType("text/html");
        
        description.setValue(feedEntryDescription);
        entry.setDescription(description);
        entries.add(entry);
        
        f.addFeedEntries(entries);
   
    }
}
