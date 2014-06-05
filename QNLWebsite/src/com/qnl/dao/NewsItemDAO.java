package com.qnl.dao;

import java.util.*;

import com.qnl.core.NewsItem;

public class NewsItemDAO extends GenericDAO<NewsItem> 
{
	private static final long serialVersionUID = 1L;
	public NewsItemDAO()
	{		
		super(NewsItem.class);		
	}
		
	public List<NewsItem> findAll()
	{
		return super.findAllResults(NewsItem.findAll, null);
	}
	
	public List<NewsItem> findByKeyword(String words, boolean inArabic)
	{
		StringBuilder qString = new StringBuilder();
		String k = inArabic?"ni.keywrodsAr":"ni.keywords";
		String[] kw = words.split(",");
		for(int i=0; i < kw.length; i++)
		{
			if(qString.length() > 0)
				qString.append(" OR ");
			qString.append(k + " LIKE '%" + kw[i] + "%'");
		}
		
		return super.findAllResults("SELECT ni FROM NewsItem ni WHERE " + qString.toString());
	}

}
