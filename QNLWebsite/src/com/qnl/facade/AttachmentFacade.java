package com.qnl.facade;

import java.io.File;
import java.io.IOException;
import java.util.*;


import com.qnl.core.Attachment;

import com.qnl.dao.AttachmentDAO;
import com.qnl.management.HelperFunctions;

public class AttachmentFacade extends QBaseFacade 
{
	AttachmentDAO aDAO = new AttachmentDAO();
	Map<Integer, Attachment> attachments;
	
	public AttachmentFacade()
	{
		attachments = new HashMap<Integer, Attachment>();
		refresh();
		
	}
	
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
	
	public Attachment findByID(int id)
	{		
		return attachments.get(Integer.valueOf(id));
	}
		
	public void refresh()
	{
		attachments.clear();
		List<Attachment> atts = null;
		aDAO.beginTransaction();
		atts = aDAO.findAll();
		aDAO.closeTransaction();
		
		for(int i=0; i<atts.size(); i++)
			attachments.put(Integer.valueOf(atts.get(i).getId()), atts.get(i));
	}
	
	/**
	 * String X is the name of the uploaded file. IT will be copied to the ATTACHMENT folder from the TEMP folder.
	 *
	 * @param extraInfo denotes the basePath
	 */
	public String save(Object o, Object x, Object xAR, Object extraInfo) throws IOException
	{
		Attachment a =(Attachment)o;
		aDAO.beginTransaction();
		try
		{
			//if((a.getSrcAr() == null)||(a.getSrcAr().trim().length() == 0))
			//	a.setSrcAr(a.getSrc());
			
			aDAO.save(a);
			
			HelperFunctions.moveFile(extraInfo + File.separator + HelperFunctions.tempDirectory + File.separator + a.getSrc(), extraInfo.toString() + File.separator + HelperFunctions.imageDirectory  + File.separator + a.getId() + "_" + a.getSrc());
			
			if(!a.getSrc().equals(a.getSrcAr()))			
				HelperFunctions.moveFile(extraInfo + File.separator + HelperFunctions.tempDirectory + File.separator + a.getSrcAr(), extraInfo.toString() + File.separator + HelperFunctions.imageDirectory  + File.separator + a.getId() + "_" + a.getSrcAr());
			
			a.setSrc(a.getId() + "_" + a.getSrc());
			a.setSrcAr(a.getId() + "_" + a.getSrcAr());
			
			aDAO.commit();
			return a.getId() + "";
		}catch(IOException ioex)
		{
			aDAO.rollback();
			System.out.println("**************************Attachment: Could not save file: " + a.getSrc());
			throw new IOException(ioex.getMessage());
		}
			
	}
	
	/**
	 * String X is the name of the uploaded file. It will have been copied to the ATTACHMENT folder(in the 'preUpdate' function) from the TEMP folder.
	 *
	 * @param extraInfo denotes the basePath
	 */
	 
	public String update(Object o, Object x, Object xAR, Object extraInfo) throws IOException
	{
		Attachment a =(Attachment)o;
		aDAO.beginTransaction();
		try
		{
			//if((a.getSrcAr() == null)||(a.getSrcAr().trim().length() == 0))
			//	a.setSrcAr(a.getSrc());
			
			HelperFunctions.moveFile(extraInfo + File.separator + HelperFunctions.tempDirectory + File.separator + a.getSrc(), extraInfo.toString() + File.separator + HelperFunctions.imageDirectory  + File.separator + a.getId() + "_" + a.getSrc());
			
			if(!a.getSrc().equals(a.getSrcAr()))			
				HelperFunctions.moveFile(extraInfo + File.separator + HelperFunctions.tempDirectory + File.separator + a.getSrcAr(), extraInfo.toString() + File.separator + HelperFunctions.imageDirectory  + File.separator + a.getId() + "_" + a.getSrcAr());
			
			a.setSrc(a.getId() + "_" + a.getSrc());
			a.setSrcAr(a.getId() + "_" + a.getSrcAr());
			
			aDAO.update(a);			
			aDAO.commit();
			return a.getId() + "";
		}catch(IOException ioex)
		{
			aDAO.rollback();
			System.out.println("**************************Attachemnt: Could not save file: " + a.getSrc());
			throw new IOException(ioex.getMessage());
		}
					
	}
	
	/**
	 * @param extraInfo denotes the basePath
	 */
	public String delete(Object o, Object extraInfo) throws IOException
	{
		String s = 	((Attachment)o).getId() + "";	
		try{
			aDAO.beginTransaction();
			HelperFunctions.delete(extraInfo.toString() + ((Attachment)o).getSrc());
			HelperFunctions.delete(extraInfo.toString() + ((Attachment)o).getSrcAr());
			aDAO.delete((Attachment)o);
			aDAO.commit();
			return s;
		}catch(IOException ioex)
		{
			aDAO.rollback();
			System.out.println("**************************Attachemnt: Could not delete file: " + ((Attachment)o).getSrc());
			throw new IOException(ioex.getMessage());
		}
		
	}
	
	/**
	 * @param extraInfo denotes the basePath
	 */
	public void preUpdate(Object o, Object extraInfo) throws IOException
	{		
		try
		{
			HelperFunctions.copyFile(extraInfo + File.separator + ((Attachment)o).getId() + "_" + ((Attachment)o).getSrc(),extraInfo.toString() + "/temp/" + ((Attachment)o).getSrc());
			HelperFunctions.copyFile(extraInfo + File.separator + ((Attachment)o).getId() + "_" + ((Attachment)o).getSrcAr(),extraInfo.toString() + "/temp/" + ((Attachment)o).getSrcAr());
			
		}catch(IOException ioex)
		{
			System.out.println("**************************Attachemnt: Could not ready (For preUpdate) file: " + ((Attachment)o).getSrc());
			throw new IOException(ioex.getMessage());
		}
	}
	
	@Override
	public Class<?> getCoreClass()
	{
		return Attachment.class;
	}
}
