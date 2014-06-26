package com.test;

import com.qnl.facade.LibMenuFacade;

public class testMe
{
	public testMe()
	{
		System.out.println(new LibMenuFacade().getCompleteMenu("MENU"));
		
		System.out.println(new LibMenuFacade().getCompleteMenu((byte)1, "MENU"));
	}
	
	public static void main(String[] args)
	{
		testMe t = new testMe();
	}
	
	
}


