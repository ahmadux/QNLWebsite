package com.qnl.dao;

import java.util.List;


import com.qnl.core.Subscribe;

public class SubscribeDAO extends GenericDAO<Subscribe>  {
	private static final long serialVersionUID = 1L;

	public SubscribeDAO()
	{		
		super(Subscribe.class);		
	}
	
	public List<Subscribe> findAll()
	{
		return super.findAllResults(Subscribe.findAll, null);
	}

}
