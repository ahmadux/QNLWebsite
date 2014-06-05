package com.qnl.dao;


import java.util.List;

import com.qnl.core.LibPage;


public class LibPageDAO extends GenericDAO<LibPage> 
{
	private static final long serialVersionUID = 1L;
	

	public LibPageDAO()
	{		
		super(LibPage.class);		
	}
	
	/*
	public LibPage findByID(int id)
	{
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("lpID", id);
		return super.findOneResult(LibPage.findByID, parameters);
	}
		
	public LibPage findByMenuID(int id)
	{
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("lp_lmID", id);
		return super.findOneResult(LibPage.findByMenuID, parameters);
	}
	*/
	
	public List<LibPage> findAll()
	{
		return super.findAllResults(LibPage.findAll, null);
	}
	
	public List<LibPage> findByKeyword(String words, boolean inArabic)
	{
		StringBuilder qString = new StringBuilder();
		String k = inArabic?"lp.keywrodsAr":"lp.keywords";
		String[] kw = words.split(",");
		for(int i=0; i < kw.length; i++)
		{
			if(qString.length() > 0)
				qString.append(" OR ");
			qString.append(k + " LIKE '%" + kw[i] + "%'");
		}
		
		return super.findAllResults("SELECT lp FROM LibPage lp WHERE " + qString.toString());
	}

	
}
