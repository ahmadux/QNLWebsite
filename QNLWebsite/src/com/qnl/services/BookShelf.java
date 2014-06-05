package com.qnl.services;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;





public class BookShelf 
{
	public List<Book> books;
	
	public BookShelf(String booksDirectory) throws IOException
	{
		File booksDir;
		File tempFile;
		books = new ArrayList<Book>();
		booksDir = new File(booksDirectory);
		String h = null, w = null, sW = null;
		System.out.println(booksDir.toString());
		for(File f:booksDir.listFiles())
		{
			if(f.isDirectory()&&(f.listFiles().length > 0))
			{			
				System.out.println("DIR: " + f.getName());
				String descStr = getFileContents(getFile(f.listFiles(),"description.txt"));
				System.out.println("File Contents: " + descStr);
				h = betweenText("HEIGHT:",";",descStr);
				w = betweenText("WIDTH:",";",descStr);
				sW = betweenText("SPINE:",";",descStr);	
				System.out.println(h + " :" + w + ":" + sW);
				
				Book b = new Book(h==null?400:Integer.parseInt(h),w==null?300:Integer.parseInt(w),sW==null?40:Integer.parseInt(sW));
				
				b.bookAuthor = betweenText("AUTHOR:",";",descStr);
				b.bookDescription = betweenText("DESCRIPTION:",";",descStr);
				b.bookEdition = betweenText("EDITION:",";",descStr);
				b.bookISBN = betweenText("ISBN:",";",descStr);
				b.bookPubDate = betweenText("PUBDATE:",";",descStr);
				b.bookPublisher = betweenText("PUBLISHER:",";",descStr);
				b.bookTitle = betweenText("TITLE:",";",descStr);
				
				tempFile = getFile(f.listFiles(),"front.png");
				b.frontImg = tempFile!=null?tempFile.getName():null;
				
				tempFile = getFile(f.listFiles(),"back.png");
				b.backImg = tempFile!=null?tempFile.getName():null;
				
				tempFile = getFile(f.listFiles(),"spine.png");
				b.spineImg = tempFile!=null?tempFile.getName():null;
				
				for( File ff:f.listFiles(new FileFilter() {
				    public boolean accept(File f) {
				        return f.getName().endsWith(".html");
				    }
				}))
				{
					System.out.println("File: " + ff.getName());
					b.contentPages.add(getFileContents(ff));
				}
				
				books.add(b);
				
				
			}
		}
	}
	
	private File getFile(File[] lst, String  fName)
	{
		File fR = null;
		for( File f:lst)
		{			
			//System.out.print("Name: " + f.getName());
			if(f.getName().equals(fName))
			{
				fR = f;
				break;
			}
		}
		return fR;
	}
	
	private String getFileContents(File f) throws IOException
	{
		if(f != null)
		{
			Path path = Paths.get(f.getCanonicalPath());
			List<String> l = Files.readAllLines(path, StandardCharsets.UTF_8);
			StringBuilder sB = new StringBuilder();
			for( String s: l)
				sB.append(s);
			
			return sB.toString();
		}
		return null;
	}
	
	private String betweenText(String startFrom, String endAt, String fromStr)
	{
		String subStr = fromStr.substring(fromStr.indexOf(startFrom) + startFrom.length()); 
		return subStr.substring(0,subStr.indexOf(endAt));
	}
}



