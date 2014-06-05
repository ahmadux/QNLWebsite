package com.qnl.dao;


import com.qnl.core.LibMenu;


public class LibMenuDAO extends GenericDAO<LibMenu> 
{

	private static final long serialVersionUID = 1L;

	public LibMenuDAO()
	{		
		super(LibMenu.class);		
	}
	
	//public LibMenu  findByID(int id)
	//{
	//	Map<String, Object> parameters = new HashMap<String, Object>();
	//	parameters.put("lmID", id);
	//	return super.findOneResult(LibMenu.findByID, parameters);
	//}
	
}
