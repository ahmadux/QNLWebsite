package com.qnl.facade;

import java.io.IOException;
import java.util.ArrayList;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import com.qnl.core.Subscribe;

import com.qnl.dao.SubscribeDAO;

public class SubscribeFacade extends QBaseFacade{

	SubscribeDAO sbcrDAO = new SubscribeDAO();
	
	Map<Integer, Subscribe> sbcrs;
	
	public SubscribeFacade(){
		sbcrs=new HashMap<Integer,Subscribe>();
		refresh();
	}
	
	public List<Subscribe> getSbcrs()
	{
		return new ArrayList<Subscribe>(sbcrs.values());
	}
	
	public Subscribe findByID(int id) {
	
		return sbcrs.get(Integer.valueOf(id));
	}
	
	
	public void refresh() {
		sbcrs.clear();		
		List<Subscribe> sbcr = null;
		sbcrDAO.beginTransaction();
		sbcr = sbcrDAO.findAll();
		sbcrDAO.closeTransaction();

		for (int i = 0; i < sbcr.size(); i++)
			sbcrs.put(Integer.valueOf(sbcr.get(i).getId()), sbcr.get(i));
	}
	
	@Override
	public String save(Object o, Object opt, Object optAR, Object extraInfo)
			throws IOException {
		// TODO Auto-generated method stub

		Subscribe s = (Subscribe) o;
		try {
			sbcrDAO.beginTransaction();
			sbcrDAO.save(s);
			sbcrDAO.commit();
			return s.getId() + "";
		} catch (Exception ex) {
			sbcrDAO.rollback();
			throw new IOException(
					"**************** ERROR saving Subscribes: "
							+ ex.getMessage());
		}		
	}

	@Override
	public String update(Object o, Object opt, Object optAR, Object extraInfo)
			throws IOException {
		
		Subscribe s = (Subscribe) o;
		try {
			sbcrDAO.beginTransaction();
			sbcrDAO.update(s);
			sbcrDAO.commit();
			return s.getId() + "";
		} catch (Exception ex) {
			sbcrDAO.rollback();
			throw new IOException(
					"**************** ERROR updating DbaseNCollects: "
							+ ex.getMessage());
		}
	}

	@Override
	public String delete(Object o, Object extraInfo) throws IOException {
		// DbaseNCollect d = (DbaseNCollect) o;
		String s = ((Subscribe)o).getId() + "";
		try {
			sbcrDAO.beginTransaction();
			sbcrDAO.delete((Subscribe) o);
			sbcrDAO.commit();			
			return s;
		} catch (Exception ex) {
			sbcrDAO.rollback();
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
		return Subscribe.class;
	}
	 
}
