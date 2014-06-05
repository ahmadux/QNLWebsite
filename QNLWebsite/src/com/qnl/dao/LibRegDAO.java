package com.qnl.dao;

import java.util.List;


import com.qnl.core.LibRegistration;


public class LibRegDAO extends GenericDAO<LibRegistration>
{
	private static final long serialVersionUID = 1L;

	public LibRegDAO()
	{		
		super(LibRegistration.class);		
	}
	
	public List<LibRegistration> findAll()
	{
		return super.findAllResults(LibRegistration.findAll, null);
	}
}
