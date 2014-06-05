package com.qnl.core;

public class LibImage 
{
	private String imageName;
	private int imageHeight;
	private int imageWidth;
	private String imageLocation;
	private boolean _isFolder = false;
	
	public LibImage(String name, int height,int width, String location, boolean isFldr)
	{
		imageName = name;
		imageLocation = location;		
		imageHeight = height;
		imageWidth = width;		
		_isFolder = isFldr;
	}

	public String getImageName() {
		return imageName;
	}

	public boolean isFolder() {
		return _isFolder;
	}

	public void setFolder(boolean isFolder) {
		this._isFolder = isFolder;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public int getImageHeight() {
		return imageHeight;
	}

	public void setImageHeight(int imageHeight) {
		this.imageHeight = imageHeight;
	}

	public int getImageWidth() {
		return imageWidth;
	}

	public void setImageWidth(int imageWidth) {
		this.imageWidth = imageWidth;
	}

	public String getImageLocation() {
		return imageLocation;
	}

	public void setImageLocation(String imageLocation) {
		this.imageLocation = imageLocation;
	}
	
	
}
