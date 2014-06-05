package com.qnl.facade;

import java.io.File;
import java.io.IOException;
import java.util.*;

import com.qnl.core.LibPage;

import com.qnl.dao.LibPageDAO;
import com.qnl.management.HelperFunctions;

public class LibPageFacade implements IUserInteractionFacade
{
	LibPageDAO libPageDAO = new LibPageDAO();
	Map<Integer,LibPage> libPages; 
	
	public LibPageFacade()
	{
		libPages = new HashMap<Integer, LibPage>();
		refresh(); 
	}
		
	public LibPage findByID(int id)
	{
		
		return libPages.get(Integer.valueOf(id));
		//libPageDAO.beginTransaction();
		//lp = libPageDAO.findByID(id);
		//libPageDAO.closeTransaction();
		//return lp;
	}
	
	public List<LibPage> getLibPages()
	{
		return new ArrayList<LibPage>(libPages.values());
	}
	
	@SuppressWarnings("rawtypes")	
	public LibPage findByMenuID(int id)
	{
		LibPage lp = null;		
		//libPageDAO.beginTransaction();
		//lp = libPageDAO.findByMenuID(id);
		//libPageDAO.closeTransaction();
		Iterator it = libPages.entrySet().iterator();
	    while (it.hasNext()) {
	        
			Map.Entry pairs = (Map.Entry)it.next();
			if(((LibPage)pairs.getValue()).getLibMenu() != null)
				if(((LibPage)pairs.getValue()).getLibMenu().getId() == id)
					lp = (LibPage)pairs.getValue();
	    }	
		return lp;	
	}
	
	
	//@SuppressWarnings("rawtypes")	
	//public LibPage findByFriendlyName(String pName)
	//{
	//	LibPage lp = null;
		//libPageDAO.beginTransaction();
		//lp = libPageDAO.findByMenuID(id);
		//libPageDAO.closeTransaction();
	//	Iterator it = libPages.entrySet().iterator();
	//    while (it.hasNext()) {
	        
	//		Map.Entry pairs = (Map.Entry)it.next();
	//        if(((LibPage)pairs.getValue()).getFriendlyName().toLowerCase().equals(pName.toLowerCase()))
	//        	lp = (LibPage)pairs.getValue();
	//    }	
	//	return lp;	
	//}
	
	public List<LibPage> findByKeywords(String keys, boolean inArabic)
	{
		List<LibPage> lps = null;
		libPageDAO.beginTransaction();
		lps = libPageDAO.findByKeyword(keys, inArabic);
		libPageDAO.closeTransaction();
		return lps;
	}
	
	public void refresh()
	{
		List<LibPage> lps = null;
		libPages.clear();
		libPageDAO.beginTransaction();
		lps = libPageDAO.findAll();
		libPageDAO.closeTransaction();
		
		for(int i=0; i<lps.size();i++)
			libPages.put(Integer.valueOf(lps.get(i).getId()), lps.get(i));
				
				
	}
	

	@Override
	public String save(Object o, Object pgHTML, Object pgHTMLAR, Object extraInfo) throws IOException
	{
		LibPage pg = (LibPage)o;
		try {			
			libPageDAO.beginTransaction();		
			libPageDAO.save(pg);
			HelperFunctions.writeFile(extraInfo.toString() + File.separator + HelperFunctions.webPageDirectory + File.separator + pg.getContentFile().toLowerCase(), pgHTML.toString().split("\n"));
			HelperFunctions.writeFile(extraInfo.toString() + File.separator + HelperFunctions.webPageDirectory + File.separator + pg.getContentFileAr().toLowerCase(), pgHTMLAR.toString().split("\n"));
			libPageDAO.commit();
			return pg.getId() + "";
			//libPages.put(pg.getId(),pg);
		} catch (IOException ioex) {
			libPageDAO.rollback();
			System.out.println("**************************ERROR: Could not save file. " + ioex.getMessage());
			throw new IOException(ioex.getMessage());
		} 
	}
	
	@Override
	public String update(Object o, Object pgHTML, Object pgHTMLAR,  Object extraInfo) throws IOException
	{
		LibPage pg = (LibPage)o;
		LibPage oldpg = findByID(pg.getId());
		try {
			libPageDAO.beginTransaction();
			
			//remove OLD files
			//HelperFunctions.delete(oldpg.getImage(),HelperFunctions.AS_IMAGE, extraInfo);
			HelperFunctions.delete(extraInfo.toString() + File.separator + HelperFunctions.webPageDirectory + File.separator + oldpg.getContentFile().toLowerCase());
			HelperFunctions.delete(extraInfo.toString() + File.separator + HelperFunctions.webPageDirectory + File.separator + oldpg.getContentFileAr().toLowerCase());
			//Save NEW Files
			HelperFunctions.writeFile(extraInfo.toString() + File.separator + HelperFunctions.webPageDirectory + File.separator + pg.getContentFile().toLowerCase(), pgHTML.toString().split("\n"));
			HelperFunctions.writeFile(extraInfo.toString() + File.separator + HelperFunctions.webPageDirectory + File.separator + pg.getContentFileAr().toLowerCase(), pgHTMLAR.toString().split("\n"));
			libPageDAO.update(pg);
			libPageDAO.commit();
			return pg.getId() + "";
			//libPages.put(pg.getId(),pg);
		} catch (IOException ioex) {
			libPageDAO.rollback();
			System.out.println("**************************ERROR: Could not update file. " + ioex.getMessage());
			throw new IOException(ioex.getMessage());
		}
	}
	
	
	public void delete(Object o, Object extraInfo) throws IOException
	{
		LibPage pg = (LibPage)o;		
		try{
			libPageDAO.beginTransaction();
			HelperFunctions.delete(extraInfo.toString() + File.separator + HelperFunctions.webPageDirectory + File.separator + pg.getContentFile().toLowerCase());
			HelperFunctions.delete(extraInfo.toString() + File.separator + HelperFunctions.webPageDirectory + File.separator + pg.getContentFileAr().toLowerCase());
			libPageDAO.delete(pg);
			libPageDAO.commit();			
			//libPages.remove(pg.getId());
		}catch(IOException ioex)
		{
			libPageDAO.rollback();
			System.out.println("**************************ERROR: Could not delete file. " + ioex.getMessage());
			throw new IOException(ioex.getMessage());
		}
		
	}
	
	public void preUpdate(Object o, Object extraInfo) throws IOException
	{}
	
}
