package com.qnl.services;

class Request
{
	private String type;
	private String query;
	String city;
	String country;
	
	public Request(){}
	
		
	/***************************** Required by JAXB ***************/
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getQuery()
	{
		return query;
	}	
	public void setQuery(String q) {
		this.query = q;
		city = query.substring(0,query.indexOf(',')).trim();
		country = query.substring(query.indexOf(',') + 1).trim();
	}
	
	
}
