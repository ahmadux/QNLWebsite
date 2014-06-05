package com.qnl.facade;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.qnl.core.LibDocument;


public class LibDocumentFacade 
{
	private Map<String, LibDocument> libDocs;
	public static String baseFolder;
	
	public LibDocumentFacade()
	{	
	}
	
	public void loadDocuments(String folder) throws IOException
	{
		LibDocument lDoc;		
		libDocs = new HashMap<String, LibDocument>();
		
		File fldr = new File(baseFolder + "\\" + folder);
		for(File f : fldr.listFiles())
		{			
			if(f.isDirectory())
				lDoc = new LibDocument(f.getName(),0,folder,true);
			else
			{				
				lDoc = new LibDocument(f.getName(), f.length(), folder, false);
			}
			libDocs.put(f.getName(),lDoc);
		}
		
	}	
		

	public List<LibDocument> getLibDocuments() {
		
		List<LibDocument> lst = new ArrayList<LibDocument>(libDocs.values());
		Collections.sort(lst, new Comparator<LibDocument>() {

	        public int compare(LibDocument d1, LibDocument d2) {
	        	if(d1.isFolder() && !d2.isFolder())
	        		return -1;
	        	if(!d1.isFolder() && d2.isFolder())
	        		return 1;
	        	if((!d1.isFolder() && !d2.isFolder())||(d1.isFolder() && d2.isFolder()))	        		
	        		return d1.getDocumentName().compareToIgnoreCase(d2.getDocumentName());
	        	return 0;
	        }
	    });
		return lst;
	}
	
	
	
}
