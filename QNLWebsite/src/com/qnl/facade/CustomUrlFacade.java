package com.qnl.facade;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.qnl.core.CustomUrl;
import com.qnl.dao.CustomUrlDAO;


public class CustomUrlFacade implements IUserInteractionFacade 
{
	CustomUrlDAO cuDAO = new CustomUrlDAO();
	Map<Integer, CustomUrl> customUrls;
	
	
	public CustomUrlFacade()
	{
		customUrls = new HashMap<Integer, CustomUrl>();
		refresh();
	}
	
	public CustomUrl findByID(int id)
	{
		return customUrls.get(Integer.valueOf(id));
	}
	
	
	@SuppressWarnings("rawtypes")
	public CustomUrl findByFriendlyName(String fName)
	{
		CustomUrl cU = null;
		
		Iterator it = customUrls.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
			if(((CustomUrl)pairs.getValue()).getFriendlyName().toLowerCase().equals(fName.toLowerCase()))
			{
					cU = (CustomUrl)pairs.getValue();
					break;
			}
	    }	
		return cU;
			
		
	}
	
	public void refresh()
	{
		List<CustomUrl> cUrls = null;
		customUrls.clear();
		cuDAO.beginTransaction();
		cUrls = cuDAO.findAll();
		cuDAO.closeTransaction();

		for (int i = 0; i < cUrls.size(); i++)
			customUrls.put(Integer.valueOf(cUrls.get(i).getId()), cUrls.get(i));
	}
	
	public String save(Object o,Object opt,Object optAR, Object extraInfo) throws IOException
	{		
		try
		{
			cuDAO.beginTransaction();
			cuDAO.save((CustomUrl)o);
			cuDAO.commit();
			return ((CustomUrl)o).getId() + "";
		}
		catch(Exception ex)
		{
			cuDAO.rollback();
			throw new IOException("**************** ERROR saving CustomURL: " + ex.getMessage());
		}
	}
	
	public String update(Object o, Object opt, Object optAR, Object extraInfo) throws IOException
	{
		try
		{
			cuDAO.beginTransaction();
			cuDAO.update((CustomUrl)o);
			cuDAO.commit();
			return ((CustomUrl)o).getId() + "";
		}
		catch(Exception ex)
		{
			cuDAO.rollback();
			throw new IOException("**************** ERROR updating CustomURL: " + ex.getMessage());
		}
	}
	
	public void delete(Object o,  Object extraInfo) throws IOException
	{
		try
		{
			cuDAO.beginTransaction();
			cuDAO.delete((CustomUrl)o);
			cuDAO.commit();
		}
		catch(Exception ex)
		{
			cuDAO.rollback();
			throw new IOException("**************** ERROR deleting CustomURL: " + ex.getMessage());
		}
	}
	
	public void preUpdate(Object o,  Object extraInfo) throws IOException
	{}
	
	
}
