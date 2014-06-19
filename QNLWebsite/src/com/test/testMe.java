package com.test;

import java.util.List;

import com.qnl.facade.LibMenuFacade;
import com.qnl.core.LibMenu;

public class testMe
{
	LibMenu li;
	LibMenuFacade lmf = new LibMenuFacade();
	
	public testMe(){};
	
	public static void main(String[] args)
	{
		testMe t = new testMe();
		t.printMenuItem(-1);
	}


private void printMenuItem(int mid)
{		
	List<LibMenu> lis = lmf.getAllChildMenuItems(mid);
	
	if((mid > 1)&&(lis.size() > 0))
		System.out.println("<ul class='dropdown-menu'>");
	
	for(int i=0; i< lis.size(); i++)
	{
		li = lis.get(i);
		System.out.print("<li>");
		
		System.out.print("<a class='load_and_slide_left' href='"  + "'>" + li.getText() + "</a>");		
		printMenuItem(li.getId());
		
		System.out.print("</li>\n");
	}

	if((mid > 1)&&(lis.size() > 0))
		System.out.println("</ul>\n");
}
}