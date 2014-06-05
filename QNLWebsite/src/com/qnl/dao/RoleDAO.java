package com.qnl.dao;

import java.util.List;
import com.qnl.core.Role;


public class RoleDAO extends GenericDAO<Role>
{
	private static final long serialVersionUID = 1L;

	public RoleDAO()
	{		
		super(Role.class);		
	}
		
	
	public List<Role> findAllRoles()
	{		
		return super.findAllResults(Role.findAllRoles, null);
	}		
	
}
