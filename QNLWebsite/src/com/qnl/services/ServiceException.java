package com.qnl.services;

public class ServiceException extends Exception 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String internalExceptionMessage;
	private String customMessage = "Service Exception: Error in calling service";
	/**
	 * 
	 * @param ex: Original Exception
	 * customeMessage: Simply says Service Exception: Error in calling service
	 */
	public ServiceException( Exception ex)
	{
		ex.printStackTrace();
		internalExceptionMessage = ex.getMessage();				
	}
	
	/**
	 * 
	 * @param ex: Original exception
	 * @param customMessage: MEssage to display
	 */
	public ServiceException( Exception ex, String customMessage)
	{
		ex.printStackTrace();
		internalExceptionMessage = ex.getMessage();
		this.customMessage = customMessage;
	}
	
	public String getCustomMessage()
	{
		return customMessage;
	}
}
