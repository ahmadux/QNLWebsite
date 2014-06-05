package com.qnl.services;

import java.util.ArrayList;
import java.util.List;

public class Book
{
	public String frontImg;
	public String spineImg;
	public String backImg;
	
	public List<String> contentPages;
	
	public String bookAuthor;
	public String bookISBN;
	public String bookEdition;
	public String bookPublisher;
	public String bookPubDate;
	public String bookTitle;
	public String bookDescription;
	
	public int bookHeight;
	public int bookWidth;
	public int spineWidth;
	
	public Book(int h, int w, int s)
	{
		bookHeight = h;
		bookWidth = w;
		spineWidth = s;
		contentPages = new ArrayList<String>();
	}	
}
