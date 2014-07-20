package com.qnl.facade;


import java.io.IOException;

import java.util.HashMap;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;






import com.qnl.core.LibRegistration;
import com.qnl.dao.LibRegDAO;

public class LibRegistrationFacade extends QBaseFacade {

	
	LibRegDAO lRegDAO = new LibRegDAO();
	Map<String, LibRegistration> libRegs;

	public LibRegistrationFacade() {
		libRegs = new HashMap<String, LibRegistration>();
		refresh();

	}

	public void refresh() {

		libRegs.clear();
		List<LibRegistration> lRegs = null;
		lRegDAO.beginTransaction();
		lRegs = lRegDAO.findAll();
		lRegDAO.closeTransaction();

		for (int i = 0; i < lRegs.size(); i++)
			libRegs.put(lRegs.get(i).getId() + "", lRegs.get(i));
	}

	public List<LibRegistration> getLibRegs() {
		return new ArrayList<LibRegistration>(libRegs.values());
	}


	public LibRegistration findByID(int id) {
		// Attachment a = null;
		// aDAO.beginTransaction();
		// a = aDAO.findByID(id);
		// aDAO.closeTransaction();
		return libRegs.get(id + "");
	}
	
	public List<LibRegistration> getLibraryRegistrationsSortedByName()
	{
		List<LibRegistration> l = getLibRegs();
		Collections.sort(l, new Comparator<LibRegistration>() {

	        public int compare(LibRegistration o1, LibRegistration o2) {
	            return o1.getLibraryName().trim().toUpperCase().compareTo(o2.getLibraryName().trim().toUpperCase());
	        }
	    });
		return l;
	}
	
	public List<LibRegistration> getLibraryRegistrationsSortedByNameAr()
	{
		List<LibRegistration> l = getLibRegs();
		Collections.sort(l, new Comparator<LibRegistration>() {

	        public int compare(LibRegistration o1, LibRegistration o2) {
	            return o1.getLibraryName_AR().trim().compareTo(o2.getLibraryName_AR().trim());
	        }
	    });
		return l;
	}
	
	public List<LibRegistration> getLibraryRegistrationsSortedByTypeAndName()
	{
		List<LibRegistration> l = getLibRegs();
		Collections.sort(l, new Comparator<LibRegistration>() {

	        public int compare(LibRegistration o1, LibRegistration o2) {
	            return (o1.getLibraryType().split(",")[0].trim() + ":" + o1.getLibraryName().trim().toUpperCase()).compareTo(o2.getLibraryType().split(",")[0].trim() + ":" + o2.getLibraryName().trim().toUpperCase());
	        }
	    });
		return l;
	}
	
	public List<LibRegistration> getLibraryRegistrationsSortedByTypeAndNameAr()
	{
		List<LibRegistration> l = getLibRegs();
		Collections.sort(l, new Comparator<LibRegistration>() {

	        public int compare(LibRegistration o1, LibRegistration o2) {
	        	return (o1.getLibraryType().split(",")[0].trim() + ":" + o1.getLibraryName_AR().trim()).compareTo(o2.getLibraryType().split(",")[0].trim() + ":" + o2.getLibraryName_AR().trim());
	        }
	    });
		return l;
	}
	
	@Override
	public String save(Object o, Object opt, Object optAR, Object extraInfo)
			throws IOException {
		// TODO Auto-generated method stub
		LibRegistration reg = (LibRegistration)o;
		try {			
			lRegDAO.beginTransaction();		
			lRegDAO.save(reg);
			lRegDAO.commit();
			return reg.getId() + "";
			//libPages.put(pg.getId(),pg);
		} catch (Exception ex) {
			lRegDAO.rollback();
			System.out.println("**************************ERROR: Could not save Lib Reg. " + ex.getMessage());
			throw new IOException(ex.getMessage());
		}
	}

	@Override
	public String update(Object o, Object opt, Object optAR, Object extraInfo)
			throws IOException {
		LibRegistration reg = (LibRegistration)o;
		//LibRegistration oldreg = findByID(reg.getId());
		try {
			lRegDAO.beginTransaction();
			lRegDAO.update(reg);
			lRegDAO.commit();
			return reg.getId() + "";
			
		} catch (Exception ex) {
			lRegDAO.rollback();
			System.out.println("**************************ERROR: Could not update Lib Reg. " + ex.getMessage());
			throw new IOException(ex.getMessage());
		}
	}

	@Override
	public String delete(Object o, Object extraInfo) throws IOException {
		LibRegistration reg = (LibRegistration)o;
		String s = reg.getId() + "";
		try{
			lRegDAO.beginTransaction();
			lRegDAO.delete(reg);
			lRegDAO.commit();		
			return s;
			//libPages.remove(pg.getId());
		}catch(Exception ex)
		{
			lRegDAO.rollback();
			System.out.println("**************************ERROR: Could not delete Lib Reg. " + ex.getMessage());
			throw new IOException(ex.getMessage());
		}

	}

	@Override
	public void preUpdate(Object o, Object extraInfo) throws IOException {
		// TODO Auto-generated method stub

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
	
	@Override
	public Class<?> getCoreClass()
	{
		return LibRegistration.class;
	}
}
