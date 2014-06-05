package com.qnl.facade;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import java.util.List;
import java.util.Map;

import com.qnl.core.Role;

import com.qnl.dao.RoleDAO;

public class RoleFacade implements IUserInteractionFacade {

	RoleDAO rDAO = new RoleDAO();
	Map<Integer,Role> roles; 
	
	public RoleFacade()
	{
		roles = new HashMap<Integer, Role>();
		refresh();
	}
	
	
	public Role findByID(int id) {
		// LibMenu lm = null;
		// lmDAO.beginTransaction();
		// lm = lmDAO.findByID(id);
		// lmDAO.closeTransaction();
		return roles.get(Integer.valueOf(id));
	}
	
	public void refresh() {
		// TODO Auto-generated method stub
		List<Role> rs = null;
		roles.clear();
		rDAO.beginTransaction();
		rs = rDAO.findAllRoles();
		rDAO.closeTransaction();
		
		for(int i=0; i<rs.size();i++)
			roles.put(Integer.valueOf(rs.get(i).getId()), rs.get(i));
	}

	public List<Role> getAllRoles()
	{
		return new ArrayList<Role>(roles.values());
	}
	
	@Override
	public String save(Object o, Object opt, Object optAR, Object extraInfo)
			throws IOException {
		// TODO Auto-generated method stub
		try
		{
			rDAO.beginTransaction();			
			rDAO.save((Role)o);
			rDAO.commit();
			return ((Role)o).getId() + "";
		}
		catch(Exception ex)
		{
			rDAO.rollback();
			throw new IOException("**************** ERROR saving Role: " + ex.getMessage());
		}		
	}

	@Override
	public String update(Object o, Object opt, Object optAR, Object extraInfo)
			throws IOException {
		// TODO Auto-generated method stub
		try
		{
			rDAO.beginTransaction();			
			rDAO.update((Role)o);
			rDAO.commit();
			return ((Role)o).getId() + "";
		}
		catch(Exception ex)
		{
			rDAO.rollback();
			throw new IOException("**************** ERROR updating Role: " + ex.getMessage());
		}
	}

	@Override
	public void delete(Object o, Object extraInfo) throws IOException {
		// TODO Auto-generated method stub
		try
		{
			rDAO.beginTransaction();			
			rDAO.delete((Role)o);
			rDAO.commit();			
		}
		catch(Exception ex)
		{
			rDAO.rollback();
			throw new IOException("**************** ERROR deleting Role: " + ex.getMessage());
		}
	}

	@Override
	public void preUpdate(Object o, Object extraInfo) throws IOException {
		// TODO Auto-generated method Object

	}

}
