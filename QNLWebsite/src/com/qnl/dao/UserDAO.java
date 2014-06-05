package com.qnl.dao;


import java.util.List;


import com.qnl.core.User;

public class UserDAO extends GenericDAO<User> 
{
	private static final long serialVersionUID = 1L;

	public UserDAO()
	{		
		super(User.class);		
	}
		
	
	public List<User> findAllUsers()
	{
		//Map<String, Object> parameters = new HashMap<String, Object>();
		//parameters.put("uEmail", email);
		return super.findAllResults(User.findAllUsers, null);
	}
	
}
