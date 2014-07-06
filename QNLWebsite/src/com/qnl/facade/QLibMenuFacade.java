package com.qnl.facade;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qnl.core.LibMenu;
import com.qnl.dao.LibMenuDAO;

public class QLibMenuFacade extends QBaseFacade {
	
	public static final byte STATUS_APPROVED = 1;
	public static final byte STATUS_UNAPPROVED = 0;
	LibMenuDAO lmDAO = new LibMenuDAO();
	Map<Integer, LibMenu> libMenus;
	
	public QLibMenuFacade() {
		libMenus = new HashMap<Integer, LibMenu>();
		refresh();
	}
	
	public LibMenu findByID(int id) {
		// LibMenu lm = null;
		// lmDAO.beginTransaction();
		// lm = lmDAO.findByID(id);
		// lmDAO.closeTransaction();
		return libMenus.get(Integer.valueOf(id));
	}

	public String getBreadCrumbs(int id, String urlModifier) {
		String retVal = "";
		LibMenu lm = findByID(id);
		if (lm.getParentId() != -1)
			retVal = getBreadCrumbParents(lm.getParentId(), urlModifier);
		//else
			retVal +=  "&nbsp;>&nbsp;" + lm.getText();
		return retVal;
	} 

	private String getBreadCrumbParents(int id, String urlModifier) {
		String retVal = "";
		LibMenu lm = findByID(id);
		if (lm.getParentId() != -1)
			retVal = getBreadCrumbParents(lm.getParentId(), urlModifier);
		
		if(getURL(lm) != "javascript:void(0);")
			retVal += "&nbsp;>&nbsp;<a href='" + getURL(lm) + "'>"	+ lm.getText() + "</a>";
		else
			retVal += "&nbsp;>&nbsp;"	+ lm.getText();
		
		return retVal;
	}
	
	public String getCompleteMenu(String menuTyp) 
	{
		StringBuilder retVal = new StringBuilder("");		
		List<LibMenu> childMenuList;
		
		for (LibMenu pm: getAllParentMenuItems(menuTyp))
		{			
			childMenuList = getAllChildMenuItems(pm.getId(),menuTyp);
			if(childMenuList.size() > 0)
			{
				retVal.append("<li class='dropdown'><a href='" + getURL(pm) + "' class='dropdown-toggle' data-toggle='dropdown'>" + pm.getText() + "<b class='caret'></b></a>");
				retVal.append("<ul class='dropdown-menu'>");
				
				for( LibMenu m: childMenuList)
					retVal.append("<li><a class='" + m.getCSSClass() +"' href='" + getURL(m) + "'>" + m.getText() + "</a></li>");	
				
					retVal.append("</ul></li>");
			}
			else
			{
				if(pm.getText().equals("Home"))
					retVal.append("<li><a class='" + pm.getCSSClass() + "' href='" + getURL(pm) + "'><span class='glyphicon glyphicon-home'></span></a></li>");
				else
					retVal.append("<li><a class='" + pm.getCSSClass() + "' href='" + getURL(pm) + "'>" + pm.getText() + "</a></li>");
			}
		}
				
		return  "<ul class='nav navbar-nav'>" + retVal.toString() + "</ul>";
	}
	
	public String getCompleteMenu(byte approvalStatus, String menuTyp) 
	{
		StringBuilder retVal = new StringBuilder("");		
		List<LibMenu> childMenuList;
		
		for (LibMenu pm: getAllParentMenuItems(approvalStatus, menuTyp))
		{			
			childMenuList = getAllChildMenuItems(pm.getId(),approvalStatus, menuTyp);
			if(childMenuList.size() > 0)
			{
				retVal.append("<li class='dropdown'><a href='" + getURL(pm) + "' class='dropdown-toggle' data-toggle='dropdown'>" + pm.getText() + "<b class='caret'></b></a>");
				retVal.append("<ul class='dropdown-menu'>");
				
				for( LibMenu m: childMenuList)
					retVal.append("<li><a class='load_and_slide_left' href='" + getURL(m) + "'>" + m.getText() + "</a></li>");	
				
					retVal.append("</ul></li>");
			}
			else
			{
				if(pm.getText().equals("Home"))
					retVal.append("<li><a class='load_and_slide_left' href='" + getURL(pm) + "'><span class='glyphicon glyphicon-home'></span></a></li>");
				else
					retVal.append("<li><a class='load_and_slide_left' href='" + getURL(pm) + "'>" + pm.getText() + "</a></li>");
			}
		}
				
		return  "<ul class='nav navbar-nav'>" + retVal.toString() + "</ul>";
	}
		
	
	public String getCompleteBottomMenu(byte approvalStatus, String menuTyp) {
		return null;
	}

	public void refresh() {
		List<LibMenu> menus = null;
		libMenus.clear();
		lmDAO.beginTransaction();
		menus = lmDAO.findAllResults(LibMenu.findAll, null);
		lmDAO.closeTransaction();

		for (int i = 0; i < menus.size(); i++)
			libMenus.put(Integer.valueOf(menus.get(i).getId()), menus.get(i));

	}
	
	@SuppressWarnings("rawtypes")
	public List<LibMenu> getAllParentMenuItems(String menuTyp)
	{
		List<LibMenu> parentMenus = new ArrayList<LibMenu>();
		
		Iterator it = libMenus.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
			if((((LibMenu)pairs.getValue()).getParentId() == -1)&&(((LibMenu)pairs.getValue()).getMenuType().contains(menuTyp)))				
				parentMenus.add((LibMenu)pairs.getValue());
	    }	
	    
	    Collections.sort(parentMenus,new Comparator<LibMenu>()
	    {
	    	public int compare(LibMenu i, LibMenu j)
	    	{
	    		return i.getOrder() - j.getOrder();
	    	}
	    	
	    });	 

		return parentMenus;
	}
	
	@SuppressWarnings("rawtypes")
	public List<LibMenu> getAllParentMenuItems(byte approvalStatus, String menuTyp)
	{
		List<LibMenu> parentMenus = new ArrayList<LibMenu>();
		
		Iterator it = libMenus.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
			if((((LibMenu)pairs.getValue()).getParentId() == -1)&&(((LibMenu)pairs.getValue()).getApproved() == approvalStatus)&&(((LibMenu)pairs.getValue()).getMenuType().contains(menuTyp)))				
				parentMenus.add((LibMenu)pairs.getValue());
	    }	
	    
	    Collections.sort(parentMenus,new Comparator<LibMenu>()
	    {
	    	public int compare(LibMenu i, LibMenu j)
	    	{
	    		return i.getOrder() - j.getOrder();
	    	}
	    	
	    });	 
		return parentMenus;
	}
	
	@SuppressWarnings("rawtypes")
	public List<LibMenu> getAllChildMenuItems(int mid, String menuTyp)
	{
		List<LibMenu> childMenus = new ArrayList<LibMenu>();
		Iterator it = libMenus.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
			if((((LibMenu)pairs.getValue()).getParentId() == mid)&&(((LibMenu)pairs.getValue()).getMenuType().contains(menuTyp)))				
				childMenus.add((LibMenu)pairs.getValue());
	    }	
	    
	    Collections.sort(childMenus,new Comparator<LibMenu>()
	    {
	    	public int compare(LibMenu i, LibMenu j)
	    	{
	    		return i.getOrder() - j.getOrder();
	    	}
	    	
	    });	 
	    
		return childMenus;
	}
	
	@SuppressWarnings("rawtypes")
	public List<LibMenu> getAllChildMenuItems(int mid,byte approvalStatus, String menuTyp)
	{
		List<LibMenu> childMenus = new ArrayList<LibMenu>();
		Iterator it = libMenus.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
			if((((LibMenu)pairs.getValue()).getParentId() == mid)&&(((LibMenu)pairs.getValue()).getApproved() == approvalStatus)&&(((LibMenu)pairs.getValue()).getMenuType().contains(menuTyp)))				
				childMenus.add((LibMenu)pairs.getValue());
	    }	
	    
	    Collections.sort(childMenus,new Comparator<LibMenu>()
	    {
	    	public int compare(LibMenu i, LibMenu j)
	    	{
	    		return i.getOrder() - j.getOrder();
	    	}
	    	
	    });	 
		return childMenus;
	}
	
	public String save(Object o,Object opt, Object optAR, Object extraInfo) throws IOException
	{
		try
		{
			lmDAO.beginTransaction();			
			lmDAO.save((LibMenu)o);
			lmDAO.commit();
			return ((LibMenu)o).getId() + "";
		}
		catch(Exception ex)
		{
			lmDAO.rollback();
			throw new IOException("**************** ERROR saving LibMenu: " + ex.getMessage());
		}
	}
	
	public String update(Object o, Object opt, Object optAR,  Object extraInfo) throws IOException
	{
		try
		{
			lmDAO.beginTransaction();
			lmDAO.update((LibMenu)o);
			lmDAO.commit();
			return ((LibMenu)o).getId() + "";
		}
		catch(Exception ex)
		{
			lmDAO.rollback();
			throw new IOException("**************** ERROR updating LibMenu: " + ex.getMessage());
		}
	}
		
	public void delete(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		try
		{
			int menuId = Integer.parseInt(request.getParameter("id"));
			if(menuId>0){
				LibMenu lm = this.findByID(Integer.parseInt(request.getParameter("id")));
				lmDAO.beginTransaction();
				lmDAO.delete(lm);
				lmDAO.commit();
				
				
				
			}
			else{
				throw new Exception("Cannot find the Menu Item");
			}
		}
		catch(Exception ex)
		{
			lmDAO.rollback();
			throw new IOException("**************** ERROR deleting LibMenu: " + ex.getMessage());
		}
	}
	

	
	public void preUpdate(Object o,  Object extraInfo) throws IOException
	{}
	
	private String getURL(LibMenu lm)
	{
		 String url = (lm.getCustomUrl().getUrl()!=null)?lm.getCustomUrl().getFriendlyName():lm.getExtra2();
		 if(url == null)
			 url = "javascript:void(0);";
		 return url;
	}

}
