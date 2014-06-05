package com.qnl.dao;


import java.util.List;


import com.qnl.core.NewsCategory;

public class NewsCategoryDAO extends GenericDAO<NewsCategory> 
{
	private static final long serialVersionUID = 1L;
		

	public NewsCategoryDAO()
	{		
		super(NewsCategory.class);		
	}
	
	public List<NewsCategory> findAllNewsCategories()
	{	
		return super.findAllResults(NewsCategory.findAllNewsCategories,null);
	}
}
