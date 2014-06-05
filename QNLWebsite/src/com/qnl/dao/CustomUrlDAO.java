package com.qnl.dao;


import java.util.List;


import com.qnl.core.CustomUrl;



public class CustomUrlDAO extends GenericDAO<CustomUrl> 
{
	private static final long serialVersionUID = 1L;
	

	public CustomUrlDAO()
	{		
		super(CustomUrl.class);		
	}
	
	/*
	 public CustomUrl findByFriendlyName(String fName)
	
	{
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("fName", fName);
		return super.findOneResult(CustomUrl.findByFriendlyName, parameters);
	}
	
		*/
	public List<CustomUrl> findAll()
	{
		return super.findAllResults(CustomUrl.findAll, null);
	}

}
