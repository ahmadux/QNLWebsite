package com.qnl.dao;


import java.util.List;

import com.qnl.core.LibTemplate;

public class LibTemplateDAO extends GenericDAO<LibTemplate> {
	private static final long serialVersionUID = 1L;
		
	public LibTemplateDAO()
	{		
		super(LibTemplate.class);		
	}
	
	/*
	  public LibTemplate findByID(int id)
	 
	{
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("ltID", id);
		return super.findOneResult(LibTemplate.findByID, parameters);
	}
	*/
	public List<LibTemplate> findAll()
	{		
		return super.findAllResults(LibTemplate.findAll, null);
	}
}
