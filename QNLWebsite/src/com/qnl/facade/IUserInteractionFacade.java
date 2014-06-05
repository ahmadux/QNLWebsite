package com.qnl.facade;

import java.io.IOException;

public interface IUserInteractionFacade 
{
	public String save(Object o,Object opt, Object optAR, Object extraInfo) throws IOException;
	public String update(Object o, Object opt,  Object optAR, Object extraInfo) throws IOException;
	public void delete(Object o,  Object extraInfo) throws IOException;
	public void preUpdate(Object o,  Object extraInfo) throws IOException;
	
}
