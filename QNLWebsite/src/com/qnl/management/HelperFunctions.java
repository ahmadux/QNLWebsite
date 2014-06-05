package com.qnl.management;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
//import java.io.OutputStream;

import java.io.IOException;

import java.nio.charset.*;
import java.nio.file.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class HelperFunctions 
{
	final static Charset ENCODING = StandardCharsets.UTF_8;
	public final static String templateDirectory = "templates";
	public final static String imageDirectory = "images";
	public final static String tempDirectory = "temp";
	public final static String documentDirectory = "documents";
	public final static String newsDirectory = "news";
	public final static String eventDirectory = "events";
	public final static String webPageDirectory = "pages";
	//public static ServletContext ctx;
		
	public static void writeFile(String fPath, InputStream ins) throws IOException
	{				
		Path path = Paths.get(fPath);		
		Files.copy(ins, path, StandardCopyOption.REPLACE_EXISTING); 
	}
		
	public static void writeFile(String fName, String[] contents) throws IOException
	{			
		Path path = Paths.get(fName);
		
		//System.out.println("xxxxxxxxxWriting File: " + fName);
		//System.out.println("xxxxxxxxx Contents ");
		
	    try (BufferedWriter writer = Files.newBufferedWriter(path, ENCODING))
	    {		    	
	    	for(String line : contents)
	    	{
	    		writer.write(line);
	    		System.out.println(line);
	    		writer.newLine();
	    	}
	    	writer.close();		    
	    }
	    System.out.println("xxxxxxxxx Contents ");
	}
	
	public static void unZipIt(String zipFile, String outputFolder) throws IOException
	{
		 
	     byte[] buffer = new byte[1024];
	 
	     try{
	 
	    	//create output directory is not exists
	    	File folder = new File(outputFolder);
	    	if(!folder.exists()){
	    		folder.mkdir();
	    	}
	 
	    	//get the zip file content
	    	ZipInputStream zis = new ZipInputStream(new FileInputStream(zipFile));
	    	//get the zipped file list entry
	    	ZipEntry ze = zis.getNextEntry();
	 
	    	while(ze!=null){
	 
	    	   String fileName = ze.getName();
	           File newFile = new File(outputFolder + File.separator + fileName);
	 
	           System.out.println("File Unzipped : "+ fileName);
	           
	             
	           FileOutputStream fos = new FileOutputStream(newFile);             
	           int len;
	           while ((len = zis.read(buffer)) > 0) 
	           {
	       			fos.write(buffer, 0, len);
	           }
	 
	           fos.close();
	           
	           ze = zis.getNextEntry();
	    	}
	 
	        zis.closeEntry();
	    	zis.close();
	 
	    	System.out.println("Done Unzipping");
	 
	    }catch(IOException ex){
	       throw new IOException(ex.getMessage()); 
	    }
	}
	
	public static String readFile(String fPath) throws IOException 
	{
	    StringBuilder sB = new StringBuilder("");	    			
		Path path = Paths.get(fPath);
		
	    try 
	    {
	    	BufferedReader reader = Files.newBufferedReader(path, ENCODING);
	    	String line = null;
	    	while ((line = reader.readLine()) != null)
	    	{
	    		//process each line in some way
	    		sB.append(line);
	    	}      
	      reader.close();
	    }
	   	finally
	   	{}
	    
	    return sB.toString();
	}
		
	public static void delete(String fPath) throws IOException
	{	
		Path path = Paths.get(fPath);
		if(path.toFile().exists())
		{
			if(!path.toFile().delete())
				throw new IOException("****************File not deleted @ " + path);
		}
	}
		
	public static void moveFile(String srcFile, String destFile) throws IOException
	{
		File sf = new File(srcFile);
		File df = new File(destFile);
		if(sf.exists())
		{
			if(Files.move(sf.toPath(),df.toPath(),StandardCopyOption.REPLACE_EXISTING) == null)
			//if(!sf.renameTo(df))
				throw new IOException("*********************File not moved");
		}
		
	}
	
	public static void copyFile(String srcFile, String asFile) throws IOException
	{
		File sf = new File(srcFile);
		File df = new File(asFile);
		
		if(sf.exists())
		{
			if(Files.copy(sf.toPath(),df.toPath(),StandardCopyOption.REPLACE_EXISTING) == null)
			//if(!sf.(df))
				throw new IOException("*********************File not moved");
		}
	}
	
	public static boolean isNumeric(String str)  
	{  
	  try  
	  {  
	    double d = Double.parseDouble(str);
	    d = d  +1;
	  }  
	  catch(NumberFormatException nfe)  
	  {  
	    return false;  
	  }  
	  return true;  
	}
}
