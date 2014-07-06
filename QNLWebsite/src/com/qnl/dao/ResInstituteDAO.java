package com.qnl.dao;

import java.util.List;

import com.qnl.core.ResInstitute;


public class ResInstituteDAO extends GenericDAO<ResInstitute>
{
	private static final long serialVersionUID = 1L;

	public ResInstituteDAO()
	{		
		super(ResInstitute.class);		
	}
	
	public List<ResInstitute> findAll()
	{
		return super.findAllResults(ResInstitute.findAll, null);
	}

}
