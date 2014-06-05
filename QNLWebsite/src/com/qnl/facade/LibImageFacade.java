package com.qnl.facade;

import imageUtil.Image;
import imageUtil.ImageLoader;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.qnl.core.LibImage;


public class LibImageFacade 
{
	private Map<String, LibImage> libImages;
	public static String baseFolder;
	
	public LibImageFacade()
	{	
	}
	
	public void loadImages(String folder) throws IOException
	{
		LibImage lImage;
		Image img;
		libImages = new HashMap<String, LibImage>();
		
		File fldr = new File(baseFolder + "\\" + folder);
		for(File f : fldr.listFiles())
		{			
			if(f.isDirectory())
				lImage = new LibImage(f.getName(),0,0,folder,true);
			else
			{
				img = loadImage(f.getAbsolutePath());
				lImage = new LibImage(f.getName(), img.getHeight(), img.getWidth(), folder, false);
			}
			libImages.put(f.getName(),lImage);
		}
		
	}	
	
	private Image loadImage(String fileName) throws IOException
	{
		Image testImage = null;
		if (testImage == null) {
            try {
                testImage = ImageLoader.fromFile(fileName);
            }
            catch (IOException ioe) {
               throw new IOException("ERROR: " + fileName + ": Could not load image!");
            }
        }
		
        return testImage;
	}

	public List<LibImage> getLibImages() {
		
		List<LibImage> lst = new ArrayList<LibImage>(libImages.values());
		Collections.sort(lst, new Comparator<LibImage>() {

	        public int compare(LibImage l1, LibImage l2) {
	        	if(l1.isFolder() && !l2.isFolder())
	        		return -1;
	        	if(!l1.isFolder() && l2.isFolder())
	        		return 1;
	        	if((!l1.isFolder() && !l2.isFolder())||(l1.isFolder() && l2.isFolder()))	        		
	        		return l1.getImageName().compareToIgnoreCase(l2.getImageName());
	        	return 0;
	        }
	    });
		return lst;
	}
	
	
	
}
