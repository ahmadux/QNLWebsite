package com.qnl.facade;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import com.qnl.core.Attachment;
import com.qnl.core.LibTemplate;
import com.qnl.dao.LibTemplateDAO;
import com.qnl.management.HelperFunctions;

public class LibTemplateFacade extends QBaseFacade 
{
	LibTemplateDAO libTemplateDAO = new LibTemplateDAO(); 
		
	private Map<Integer,LibTemplate> libTemplates; 
	
	public LibTemplateFacade(){
		libTemplates = new HashMap<Integer, LibTemplate>();
		refresh();
	}
	
	public LibTemplate findByID(int id)
	{
		//LibTemplate lt = null;
		//libTemplateDAO.beginTransaction();
		//lt = libTemplateDAO.findByID(id);
		//libTemplateDAO.closeTransaction();
		//return lt;
		return libTemplates.get(Integer.valueOf(id));
	}
	
	public List<LibTemplate> getAllTemplates()
	{
		return new ArrayList<LibTemplate>(libTemplates.values());
	}
	
	public void refresh()
	{
		libTemplates.clear();
		List<LibTemplate> lts = null;
		libTemplateDAO.beginTransaction();
		lts = libTemplateDAO.findAll();
		libTemplateDAO.closeTransaction();
		
		for(int i=0; i<lts.size(); i++)
			libTemplates.put(Integer.valueOf(lts.get(i).getId()), lts.get(i));	
		
	}
	
	
	public String save(Object o, Object pgHTML, Object pgHTMLAR, Object extraInfo) throws IOException
	{
		LibTemplate pgt = (LibTemplate)o;
		libTemplateDAO.beginTransaction();
		try {

			libTemplateDAO.save(pgt);
			HelperFunctions.writeFile(extraInfo.toString() + File.separator + HelperFunctions.templateDirectory + File.separator + pgt.getContentFile(), pgHTML.toString().split("\n"));
			libTemplateDAO.commit();
			return pgt.getId() + "";
		} catch (IOException ioex) {
			libTemplateDAO.rollback();
			System.out.println("**************************ERROR: Could not save file. " + ioex.getMessage());
			throw new IOException(ioex.getMessage());
		} 
	}
	
	
	public String update(Object o, Object pgHTML, Object pgHTMLAR, Object extraInfo) throws IOException
	{
		LibTemplate pgt = (LibTemplate)o;
		libTemplateDAO.beginTransaction();
		try {

			libTemplateDAO.update(pgt);
			HelperFunctions.writeFile(extraInfo.toString() + File.separator + HelperFunctions.templateDirectory + File.separator + pgt.getContentFile(), pgHTML.toString().split("\n"));
			libTemplateDAO.commit();
			return pgt.getId() + "";
		} catch (IOException ioex) {
			libTemplateDAO.rollback();
			System.out.println("**************************ERROR: Could not update file. " + ioex.getMessage());
			throw new IOException(ioex.getMessage());
		} 
	}
	
	public String delete(Object o,Object extraInfo) throws IOException
	{		
		LibTemplate pgt = (LibTemplate)o;
		String s = pgt.getId() + "";
		libTemplateDAO.beginTransaction();		
		try{
			HelperFunctions.delete(extraInfo.toString()	+ File.separator + HelperFunctions.templateDirectory + File.separator + pgt.getContentFile());
			libTemplateDAO.delete(pgt);
			libTemplateDAO.commit();
			return s;
		}catch(IOException ioex)
		{
			libTemplateDAO.rollback();
			System.out.println("**************************Could not delete file: " + ((Attachment)o).getSrc());
			throw new IOException(ioex.getMessage());
		}
		
	}
	
	public void preUpdate(Object o, Object extraInfo) throws IOException
	{}
	
	
	@Override
	public String onCreate_Create() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public String onCreate_Update() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public String onUpdate_Update() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public String onDelete_Delete() {
		// TODO Auto-generated method stub
		return null;
	}
}
