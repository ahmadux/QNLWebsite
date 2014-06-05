package com.qnl.facade;


import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import com.qnl.core.NewsCategory;
import com.qnl.dao.NewsCategoryDAO;

public class NewsCategoryFacade implements IUserInteractionFacade 
{
	NewsCategoryDAO newsCategoryDAO = new NewsCategoryDAO(); 
	Map<Integer, NewsCategory> newsCategories;
	
	public NewsCategoryFacade(){
		newsCategories = new HashMap<Integer,NewsCategory>();
		refresh();
	}
	
	public NewsCategory findByID(int id)
	{
		return newsCategories.get(id);
	}
	
	public List<NewsCategory> getAllNewsCategories()
	{
		return new ArrayList<NewsCategory>(newsCategories.values());
	}	
	
	public void refresh()
	{
		List<NewsCategory> ncs = null;
		newsCategoryDAO.beginTransaction();
		ncs = newsCategoryDAO.findAllNewsCategories();
		newsCategoryDAO.closeTransaction();	
		
		for(int i=0; i<ncs.size();i++)
			newsCategories.put(Integer.valueOf(ncs.get(i).getId()), ncs.get(i));
	}
	
	public String save(Object o, Object x, Object xAR, Object extraInfo)throws IOException
	{
		return null;
	}
	
	public String update(Object o, Object x, Object xAR, Object extraInfo)throws IOException
	{
		return null;
	}
	
	public void delete(Object o, Object extraInfo)throws IOException
	{}
	
	public void preUpdate(Object o, Object extraInfo) throws IOException
	{}
}
