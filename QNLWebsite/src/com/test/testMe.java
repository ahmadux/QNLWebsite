package com.test;





public class testMe extends parent
{
	public testMe()
	{
		
	}
	
	@Override
	public String getObject()
	{
		return "This is a string!";
	}
	
	public static void main(String[] args)
	{
		testMe t = new testMe();
		parent p = (parent)t;
		System.out.println(p.getObject());
	}
	
	
}

class parent
{
	public Object getObject(){ return null; }
	
}


