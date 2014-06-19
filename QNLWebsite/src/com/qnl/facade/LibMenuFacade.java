package com.qnl.facade;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;




import com.qnl.core.LibMenu;



import com.qnl.dao.LibMenuDAO;

public class LibMenuFacade implements IUserInteractionFacade
{

	public static final byte STATUS_APPROVED = 1;
	public static final byte STATUS_UNAPPROVED = 0;
	LibMenuDAO lmDAO = new LibMenuDAO();
	Map<Integer, LibMenu> libMenus;

	public LibMenuFacade() {
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
	
	public String getCompleteMenu() {
		StringBuilder retVal = new StringBuilder("");
		
		List<LibMenu> childMenuList;
		
		//retVal.append("<div class='row-fluid'><div class='span10 offset1'><div class='navbar navbar-inverse'><div class='navbar-inner'><div class='container'><a class='btn btn-navbar' data-toggle='collapse'	data-target='.navbar-responsive-collapse'> <span class='icon-bar'></span> <span class='icon-bar'></span> <span class='icon-bar'></span></a><div class='nav-collapse collapse navbar-responsive-collapse'>
		retVal.append("<ul class='nav'>");
		
		
		for (LibMenu pm: getAllParentMenuItems())
		{			
			childMenuList = getAllChildMenuItems(pm.getId());
			if(childMenuList.size() > 0)
			{
				retVal.append("<li class='dropdown'><a href='" + getURL(pm) + "' class='dropdown-toggle' data-toggle='dropdown'>" + pm.getText() + "<b class='caret'></b></a>");
				retVal.append("<ul class='dropdown-menu'>");
				
				for( LibMenu m: childMenuList)
					retVal.append("<li><a href='" + getURL(m) + "'>" + m.getText() + "</a></li>");	
				
					retVal.append("</ul></li>");
			}
			else
			{
				retVal.append("<li><a href='" + getURL(pm) + "'>" + pm.getText() + "</a></li>");
			}
		}
		
		//retVal.append("</ul></div></div></div></div></div></div>");
		
		return "<ul class='nav'>" + retVal.toString() + "</ul>";
	}
	
	public String getCompleteMenu(byte approvalStatus) {
		StringBuilder retVal = new StringBuilder("");
		
		List<LibMenu> childMenuList;
		
		retVal.append("<div class='row-fluid'><div class='span10 offset1'><div class='navbar navbar-inverse'><div class='navbar-inner'><div class='container'><a class='btn btn-navbar' data-toggle='collapse'	data-target='.navbar-responsive-collapse'> <span class='icon-bar'></span> <span class='icon-bar'></span> <span class='icon-bar'></span></a><div class='nav-collapse collapse navbar-responsive-collapse'><ul class='nav'>");
		
		
		for (LibMenu pm: getAllParentMenuItems(approvalStatus))
		{			
			childMenuList = getAllChildMenuItems(pm.getId(),approvalStatus);
			if(childMenuList.size() > 0)
			{
				retVal.append("<li class='dropdown'><a href='" + getURL(pm) + "' class='dropdown-toggle' data-toggle='dropdown'>" + pm.getText() + "<b class='caret'></b></a>");
				retVal.append("<ul class='dropdown-menu'>");
				
				for( LibMenu m: childMenuList)
					retVal.append("<li><a href='" + getURL(m) + "'>" + m.getText() + "</a></li>");	
				
					retVal.append("</ul></li>");
			}
			else
			{
				retVal.append("<li><a href='" + getURL(pm) + "'>" + pm.getText() + "</a></li>");
			}
		}
		
				
		retVal.append("</ul></div></div></div></div></div></div>");
		
		return retVal.toString();
	}
	
	public String getCompleteBottomMenu(byte approvalStatus) {
		StringBuilder retVal = new StringBuilder("");
		boolean first = true;
		 
		List<LibMenu> childMenuList;
		List<LibMenu> parentMenuList = getAllParentMenuItems(approvalStatus);
		
		int perFS = Math.round(parentMenuList.size() / 3) + 1;
		int limit = parentMenuList.size(); 
		if(parentMenuList.size() % 3 == 0)
			perFS -= 1;
		int fsCounter = 0;
		int fs = 0;
		
		retVal.append("<div class='row-fluid footer'>");
				
		for (LibMenu pm: parentMenuList)
		{			
			if(fsCounter == 0)
			{
				retVal.append("<div class='span3" + (first?" offset1'>":"'>"));			
				if(first)							
					first = false;
			}
			
			childMenuList = getAllChildMenuItems(pm.getId(),approvalStatus);			
			retVal.append("<fieldset title='" + pm.getText() + "'><legend>" + pm.getText()  + "</legend>");
			
			if(childMenuList.size() > 0)
			{	
				for( LibMenu m: childMenuList)
					retVal.append("<a href='" + getURL(m) + "'>" + m.getText() + "</a><br />");					
			}
			else
				retVal.append("<a href='" + getURL(pm) + "'>" + pm.getText() + "</a><br />");
			
			retVal.append("</fieldset>");
			
			fsCounter++;
			fs++;
			if((perFS == fsCounter)||(fs == limit))
			{
				retVal.append("</div>");
				fsCounter = 0;
			}
		}
		
		
		retVal.append("<div class='row-fluid'>");
		retVal.append("<div class='span10 offset1'>");
		retVal.append("<fieldset title='Share'><legend>Share</legend><a href='#'><i class='icon-facebook icon-2x'></i></a><a href='#'><i class='icon-twitter icon-2x'></i></a><a href='#'><i class='icon-google-plus-sign icon-2x'></i></a>");
		retVal.append("&nbsp;&nbsp;&nbsp;Stay up-to-date with our comprehensive newsletter<div class='input-append'><input class='span10' id='appendedInputButton' type='email' placeholder='username@email.com'><button class='btn btn-inverse' type='button'>Sign-up</button></div></fieldset>");
		retVal.append("</div>");		
		retVal.append("</div>");
		retVal.append("</div>");
		return retVal.toString();
	}

	/*
	private String getMenuHierarchy(int menuID) {
		String retVal = "";
		String url = "";
		List<LibMenu> menuList = getAllChildMenuItems(menuID);
		
		for (int i = 0; i < menuList.size(); i++)
		{			
			url = ((LibMenu) menuList.get(i)).getCustomUrl()!=null?((LibMenu) menuList.get(i)).getCustomUrl().getFriendlyName():((LibMenu) menuList.get(i)).getExtra2();
			if(url == null)
				url = "javascript:void(0);";
			retVal += "<li><a href='" + url  + "'>" + ((LibMenu) menuList.get(i)).getText() + "</a>" + getMenuHierarchy(((LibMenu) menuList.get(i)).getId())
					+ "</li>";
		}
		return retVal != "" ? "<div class='ldd_submenu'><ul>" + retVal + "</ul></div>" : "";
	}
	
	private String getMenuHierarchy(int menuID,byte approvalStatus) {
		String retVal = "";
		String url = "";
		List<LibMenu> menuList = getAllChildMenuItems(menuID, approvalStatus);
		
		for (int i = 0; i < menuList.size(); i++)
		{			
			url = ((LibMenu) menuList.get(i)).getCustomUrl()!=null?((LibMenu) menuList.get(i)).getCustomUrl().getFriendlyName():((LibMenu) menuList.get(i)).getExtra2();
			if(url == null)
				url = "javascript:void(0);";
			retVal += "<li><a href='" + url  + "'>" + ((LibMenu) menuList.get(i)).getText() + "</a>" + getMenuHierarchy(((LibMenu) menuList.get(i)).getId())
					+ "</li>";
		}
		return retVal != "" ? "<div class='ldd_submenu'><ul>" + retVal + "</ul></div>" : "";
	}
	*/

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
	public List<LibMenu> getAllParentMenuItems()
	{
		List<LibMenu> parentMenus = new ArrayList<LibMenu>();
		
		Iterator it = libMenus.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
			if(((LibMenu)pairs.getValue()).getParentId() == -1)				
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
	public List<LibMenu> getAllParentMenuItems(byte approvalStatus)
	{
		List<LibMenu> parentMenus = new ArrayList<LibMenu>();
		
		Iterator it = libMenus.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
			if((((LibMenu)pairs.getValue()).getParentId() == -1)&&(((LibMenu)pairs.getValue()).getApproved() == approvalStatus))				
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
	public List<LibMenu> getAllChildMenuItems(int mid)
	{
		List<LibMenu> childMenus = new ArrayList<LibMenu>();
		Iterator it = libMenus.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
			if(((LibMenu)pairs.getValue()).getParentId() == mid)				
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
	public List<LibMenu> getAllChildMenuItems(int mid,byte approvalStatus)
	{
		List<LibMenu> childMenus = new ArrayList<LibMenu>();
		Iterator it = libMenus.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
			if((((LibMenu)pairs.getValue()).getParentId() == mid)&&(((LibMenu)pairs.getValue()).getApproved() == approvalStatus))				
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
	
	public void delete(Object o,  Object extraInfo) throws IOException
	{
		try
		{
			lmDAO.beginTransaction();
			lmDAO.delete((LibMenu)o);
			lmDAO.commit();
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
