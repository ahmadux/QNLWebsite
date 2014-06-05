package com.qnl.facade;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.qnl.dao.*;
import com.qnl.core.*;

public class UserFacade implements IUserInteractionFacade
{
	UserDAO uDAO = new UserDAO();
	Map<Integer,User> users; 
	
	public UserFacade()
	{
		users = new HashMap<Integer, User>();
		refresh();
	}
	
	public void refresh() {
		// TODO Auto-generated method stub
		List<User> us = null;
		users.clear();
		uDAO.beginTransaction();
		us = uDAO.findAllUsers();
		uDAO.closeTransaction();
		
		for(int i=0; i<us.size();i++)
			users.put(Integer.valueOf(us.get(i).getId()), us.get(i));
	}

	@SuppressWarnings("rawtypes")
	public User getUserHasEmail(String uEmail)
	{
		User u = null;
		Iterator it = users.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
	        if(((User)pairs.getValue()).getEmail().equals(uEmail))
	        	u = (User)pairs.getValue();
	    }	
		return u;
	}
	
	@SuppressWarnings("rawtypes")
	public User getUserHasName(String uName)
	{
		User u = null;
		Iterator it = users.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
	        if(((User)pairs.getValue()).getName().equals(uName))
	        	u = (User)pairs.getValue();
	    }	
		return u;
	}
	
	@SuppressWarnings("rawtypes")
	public User getUserIsInRole(Role role)
	{
		User u = null;
		Iterator it = users.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
	        if(((User)pairs.getValue()).getUserRoles().contains(role))
	        	u = (User)pairs.getValue();
	    }	
		return u;
	}
	
	@SuppressWarnings("rawtypes")
	public User getUserIsInRole(String strRole)
	{
		User u = null;
		Iterator it = users.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
	        for(UserRole ur: ((User)pairs.getValue()).getUserRoles())
	        	if(ur.getRole().getName().equals(strRole))
	        		u = (User)pairs.getValue();
	    }	
		return u;
	}
		
	
	public User findByID(int id)
	{
		return users.get(Integer.valueOf(id));
	}
	
	@Override
	public String save(Object o, Object pgHTML, Object pgHTMLAR, Object extraInfo) throws IOException
	{		
		User u = (User)o;
		try{
			uDAO.beginTransaction();
			uDAO.save(u);
			uDAO.commit();
			return u.getId() + "";
		}catch (Exception e)
		{
			uDAO.rollback();
			System.out.println("********************ERROR saving User: " );
			throw new IOException(e.getMessage());
		}finally
		{
			uDAO.closeTransaction();
		}
		
		//return retV;
	}
	
	
	public String update(Object o, Object pgHTML, Object pgHTMLAR,  Object extraInfo) throws IOException 
	{
		return null;
	}
	
	public void delete(Object o, Object uName) throws IOException 
	{}
	
	public void preUpdate(Object o, Object uName) throws IOException 
	{}
	
	public List<User> getAllUsers()
	{
		return new ArrayList<User>(users.values());
	}
	
	
}
