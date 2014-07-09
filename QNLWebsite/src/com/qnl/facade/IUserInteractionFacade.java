package com.qnl.facade;

import java.io.IOException;

public interface IUserInteractionFacade 
{
	public void refresh();
	public String save(Object o,Object opt, Object optAR, Object extraInfo) throws IOException;
	public String update(Object o, Object opt,  Object optAR, Object extraInfo) throws IOException;
	public String delete(Object o,  Object extraInfo) throws IOException;
	public void preUpdate(Object o,  Object extraInfo) throws IOException;
	
	public String onCreate_Create();
	public String onCreate_Update();
	
	public String onUpdate_Update();
	
	public String onDelete_Delete();
	
}
