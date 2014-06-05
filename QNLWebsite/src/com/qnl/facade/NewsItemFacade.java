package com.qnl.facade;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;

import java.util.List;
import java.util.Map;




import com.qnl.core.NewsItem;
import com.qnl.core.User;
import com.qnl.dao.NewsItemDAO;


public class NewsItemFacade implements IUserInteractionFacade 
{
	
	NewsItemDAO newsItemDAO = new NewsItemDAO(); 
	Map<Integer,NewsItem> news;
	
	public NewsItemFacade(){
		news = new HashMap<Integer, NewsItem>();
		refresh();
		
	}
	
	public NewsItem findByID(int id)
	{
		//NewsItem ni = null;
		//newsItemDAO.beginTransaction();
		//ni = newsItemDAO.findByID(id);
		//newsItemDAO.closeTransaction();
		//return ni;
		return news.get(Integer.valueOf(id));
	}
	
	@SuppressWarnings("rawtypes")
	public List<NewsItem> findAllNewsInCategory(int cid)
	{
		List<NewsItem> nIs = new ArrayList<NewsItem>();
		
		Iterator it = news.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
			if(((NewsItem)pairs.getValue()).getNewsCategory().getId() == cid)				
				nIs.add((NewsItem)pairs.getValue());
	    }		
		
	    Collections.sort(nIs,new Comparator<NewsItem>()
	    {
	    	public int compare(NewsItem i, NewsItem j)
	    	{
	    		return ((i.getPublishDate().getTime() - j.getPublishDate().getTime()) < 0)?1:-1;
	    	}
	    	
	    });	    
	    
		return nIs;
	}
	
	@SuppressWarnings("rawtypes")
	public List<NewsItem> findAllNews(User u)
	{
		List<NewsItem> nis = new ArrayList<NewsItem>();
		if(u.isAdmin())
			nis =  new ArrayList<NewsItem>(news.values());
		else
		{
			Iterator it = news.entrySet().iterator();
		    while (it.hasNext()) {		        
				Map.Entry pairs = (Map.Entry)it.next();
				//if(((NewsItem)pairs.getValue()).getNewsCategory().canAccess(u))				
				nis.add((NewsItem)pairs.getValue());
		    }	
		 //return nis;
		}
		
		Collections.sort(nis,new Comparator<NewsItem>()
	    {
	    	public int compare(NewsItem i, NewsItem j)
	    	{
	    		return ((i.getPublishDate().getTime() - j.getPublishDate().getTime()) < 0)?1:-1;
	    	}
	    	
	    });
		
		return nis;
	}
	
	
	public List<NewsItem> findAllNews()
	{
		List<NewsItem> nis = new ArrayList<NewsItem>();
		nis =  new ArrayList<NewsItem>(news.values());
				
		Collections.sort(nis,new Comparator<NewsItem>()
	    {
	    	public int compare(NewsItem i, NewsItem j)
	    	{
	    		return ((i.getPublishDate().getTime() - j.getPublishDate().getTime()) < 0)?1:-1;
	    	}
	    	
	    });
		
		return nis;
	}
	
	public List<NewsItem> findAllNewsWithKeywords(String words, boolean inArabic)
	{
		List<NewsItem> nis = null;
		newsItemDAO.beginTransaction();
		nis = newsItemDAO.findByKeyword(words, inArabic);
		newsItemDAO.closeTransaction();
		
		Collections.sort(nis,new Comparator<NewsItem>()
	    {
	    	public int compare(NewsItem i, NewsItem j)
	    	{
	    		return ((i.getPublishDate().getTime() - j.getPublishDate().getTime()) < 0)?1:-1;
	    	}
	    	
	    });
		
		return nis;
	}
	
	public void refresh()
	{
		List<NewsItem> nIs = null;
		news.clear();
		newsItemDAO.beginTransaction();
		nIs = newsItemDAO.findAll();
		newsItemDAO.closeTransaction();
		
		for(int i=0; i<nIs.size();i++)
			news.put(Integer.valueOf(nIs.get(i).getId()), nIs.get(i));
	}
	
	public String save(Object o, Object x, Object xAR, Object extraInfo) throws IOException
	{
		NewsItem ni = (NewsItem)o;				
		newsItemDAO.beginTransaction();		
		newsItemDAO.save(ni);			
		newsItemDAO.commit();
		return ni.getId() + "";
	}
	
	public String update(Object o, Object x, Object xAR, Object extraInfo)throws IOException
	{
		NewsItem ni = (NewsItem)o;				
		newsItemDAO.beginTransaction();		
		newsItemDAO.update(ni);			
		newsItemDAO.commit();
		return ni.getId() + "";
	}
	
	public void delete(Object o, Object extraInfo)throws IOException
	{
		NewsItem ni = (NewsItem)o;				
		newsItemDAO.beginTransaction();		
		newsItemDAO.delete(ni);			
		newsItemDAO.commit();		
	}
	
	public void preUpdate(Object o, Object extraInfo) throws IOException
	{}
	
}
