package com.qnl.dao;

import java.util.List;

import com.qnl.core.DbaseNCollect;


public class DbaseNCollectDAO extends GenericDAO<DbaseNCollect> 
{
	private static final long serialVersionUID = 1L;

	public DbaseNCollectDAO()
	{		
		super(DbaseNCollect.class);		
	}
	
	public List<DbaseNCollect> findAll()
	{
		return super.findAllResults(DbaseNCollect.findAll, null);
	}
	
}
