package com.qnl.core;

public class LibDocument 
{
	private String documentName;	
	private String documentLocation;
	private long documentSize;
	private String documentType;
	
	public LibDocument(String name, long dSize, String location, boolean isFldr)
	{
		documentName = name;
		documentLocation = location;		
		documentSize = dSize;		
		if(isFldr)
			documentType = "";
		else
			documentType = name.substring(name.lastIndexOf(".") + 1).toUpperCase();
	}

	public String getDocumentName() {
		return documentName;
	}

	public String getDocumentType() {
		return documentType;
	}

	public boolean isFolder()
	{
		return documentType == "";
	}
	
	public void setDocumentType(String documentType) {
		this.documentType = documentType;
	}

	public void setDocumentName(String docName) {
		this.documentName = docName;
	}

	public String getDocumentSize() {
		if(documentSize > 1048576)
			return Math.ceil(((double)documentSize) /((double)1048576)) + " MB";
		
		if(documentSize > 1024)
			return Math.ceil(((double)documentSize) / ((double)1024)) + " KB";
		
		return documentSize + " bytes";
	}
		
	public String getDocumentLocation() {
		return documentLocation;
	}

	public void setDocumentLocation(String dLocation) {
		this.documentLocation = dLocation;
	}
	
	
}
