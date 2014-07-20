package com.qnl.facade;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


import com.qnl.core.DbaseNCollect;

import com.qnl.dao.DbaseNCollectDAO;

public class DbaseNCollectFacade extends QBaseFacade {

	DbaseNCollectDAO dbncDAO = new DbaseNCollectDAO();
	
	Map<Integer, DbaseNCollect> dbncs;

	public DbaseNCollectFacade() {
		dbncs = new HashMap<Integer, DbaseNCollect>();
		refresh();
	}

	public List<DbaseNCollect> getDbncsSortedByName()
	{
		List<DbaseNCollect> d = getDbncs();
		Collections.sort(d, new Comparator<DbaseNCollect>() {

	        public int compare(DbaseNCollect o1, DbaseNCollect o2) {
	            return o1.getName().compareTo(o2.getName().trim().toUpperCase());
	        }
	    });
		return d;
	}
	
	public List<DbaseNCollect> getDbncsSortedByNameAr()
	{
		List<DbaseNCollect> d = getDbncs();
		Collections.sort(d, new Comparator<DbaseNCollect>() {

	        public int compare(DbaseNCollect o1, DbaseNCollect o2) {
	            return o1.getNameAr().compareTo(o2.getNameAr().trim());
	        }
	    });
		return d;
	}

	public List<DbaseNCollect> getDbncs()
	{
		return new ArrayList<DbaseNCollect>(dbncs.values());
	}
	
	public DbaseNCollect findByID(int id) {
	
		return dbncs.get(Integer.valueOf(id));
	}
	 

	@SuppressWarnings("rawtypes")
	public List<DbaseNCollect> findByTypeAndAccess(String typ,
			String access, String lang) {
		List<DbaseNCollect> dbs = new ArrayList<>();

		Iterator it = dbncs.entrySet().iterator();
		while (it.hasNext()) {

			Map.Entry pairs = (Map.Entry) it.next();
			if ((typ == null)
					|| (((DbaseNCollect) pairs.getValue()).getType()
							.equals(typ)))
				if ((access == null)
						|| (((DbaseNCollect) pairs.getValue()).getAccess()
								.equals(access)))
					if ((lang == null)
							|| (((DbaseNCollect) pairs.getValue())
									.getLanguages().contains(lang)))
						dbs.add((DbaseNCollect) pairs.getValue());
		}

		return dbs;
	}

	public List<DbaseNCollect> findByType(String typ) {
		return findByTypeAndAccess(typ, null, null);
	}

	public List<DbaseNCollect> findByAccess(String access) {
		return findByTypeAndAccess(null, access, null);
	}

	public List<DbaseNCollect> findByLanguage(String lang) {
		return findByTypeAndAccess(null, null, lang);
	}

	public void refresh() {
		dbncs.clear();
		List<DbaseNCollect> dbcs = null;
		dbncDAO.beginTransaction();
		dbcs = dbncDAO.findAll();
		dbncDAO.closeTransaction();

		for (int i = 0; i < dbcs.size(); i++)
			dbncs.put(Integer.valueOf(dbcs.get(i).getId()), dbcs.get(i));
	}

	@Override
	public String save(Object o, Object opt, Object optAR, Object extraInfo)
			throws IOException {
		// TODO Auto-generated method stub

		DbaseNCollect d = (DbaseNCollect) o;
		try {
			dbncDAO.beginTransaction();
			dbncDAO.save(d);
			dbncDAO.commit();
			return d.getId() + "";
		} catch (Exception ex) {
			dbncDAO.rollback();
			throw new IOException(
					"**************** ERROR saving DbaseNCollects: "
							+ ex.getMessage());
		}		
	}

	@Override
	public String update(Object o, Object opt, Object optAR, Object extraInfo)
			throws IOException {
		
		DbaseNCollect d = (DbaseNCollect) o;
		try {
			dbncDAO.beginTransaction();
			dbncDAO.update(d);
			dbncDAO.commit();
			return d.getId() + "";
		} catch (Exception ex) {
			dbncDAO.rollback();
			throw new IOException(
					"**************** ERROR updating DbaseNCollects: "
							+ ex.getMessage());
		}
	}

	@Override
	public String delete(Object o, Object extraInfo) throws IOException {
		String s = ((DbaseNCollect) o).getId() + "";
		
		try {
			dbncDAO.beginTransaction();
			dbncDAO.delete((DbaseNCollect) o);
			dbncDAO.commit();			
			return s;
		} catch (Exception ex) {
			dbncDAO.rollback();
			throw new IOException(
					"**************** ERROR deleting DbaseNCollects: "
							+ ex.getMessage());
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
		return DbaseNCollect.class;
	}

}
