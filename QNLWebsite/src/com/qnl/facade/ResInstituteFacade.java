package com.qnl.facade;

import java.io.IOException;

import java.util.HashMap;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;


import com.qnl.core.ResInstitute;
import com.qnl.dao.ResInstituteDAO;

public class ResInstituteFacade implements IUserInteractionFacade {
	
	ResInstituteDAO resInstDAO = new ResInstituteDAO();
	Map<Integer, ResInstitute> resInsts;

	public ResInstituteFacade() {
		resInsts = new HashMap<Integer, ResInstitute>();
		refresh();

	}

	public void refresh() {

		resInsts.clear();
		List<ResInstitute> resInst = null;
		resInstDAO.beginTransaction();
		resInst = resInstDAO.findAll();
		resInstDAO.closeTransaction();

		for (int i = 0; i < resInst.size(); i++)
			resInsts.put(Integer.valueOf(resInst.get(i).getId()), resInst.get(i));
	}
	
	public List<ResInstitute> getResInstitute() {
		return new ArrayList<ResInstitute>(resInsts.values());
	}
	
	public ResInstitute findByID(int id) {
		return resInsts.get(id);
	}
	
	public List<ResInstitute> getLibraryRegistrationsSortedByName()
	{
		List<ResInstitute> l = getResInstitute();
		Collections.sort(l, new Comparator<ResInstitute>() {

	        public int compare(ResInstitute o1, ResInstitute o2) {
	            return o1.getName().trim().compareTo(o2.getName().trim());
	        }
	    });
		return l;
	}

	@Override
	public String save(Object o, Object opt, Object optAR, Object extraInfo)
			throws IOException {
		// TODO Auto-generated method stub
		ResInstitute res = (ResInstitute)o;
		try {			
			resInstDAO.beginTransaction();		
			resInstDAO.save(res);
			resInstDAO.commit();
			return res.getId() + "";
			//libPages.put(pg.getId(),pg);
		} catch (Exception ex) {
			resInstDAO.rollback();
			System.out.println("**************************ERROR: Could not save Research Intstitute " + ex.getMessage());
			throw new IOException(ex.getMessage());
		}
	}

	@Override
	public String update(Object o, Object opt, Object optAR, Object extraInfo)
			throws IOException {
		ResInstitute res = (ResInstitute)o;
		//LibRegistration oldreg = findByID(reg.getId());
		try {
			resInstDAO.beginTransaction();
			resInstDAO.update(res);
			resInstDAO.commit();
			return res.getId() + "";
			
		} catch (Exception ex) {
			resInstDAO.rollback();
			System.out.println("**************************ERROR: Could not update Research Intstitute. " + ex.getMessage());
			throw new IOException(ex.getMessage());
		}
	}

	@Override
	public void delete(Object o, Object extraInfo) throws IOException {
		ResInstitute res = (ResInstitute)o;
		
		try{
			resInstDAO.beginTransaction();
			resInstDAO.delete(res);
			resInstDAO.commit();			
			//libPages.remove(pg.getId());
		}catch(Exception ex)
		{
			resInstDAO.rollback();
			System.out.println("**************************ERROR: Could not delete Research Intstitute. " + ex.getMessage());
			throw new IOException(ex.getMessage());
		}

	}

	@Override
	public void preUpdate(Object o, Object extraInfo) throws IOException {
		// TODO Auto-generated method stub

	}
}
