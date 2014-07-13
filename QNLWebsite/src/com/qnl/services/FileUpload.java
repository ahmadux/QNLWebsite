package com.qnl.services;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;	 
import java.io.File;
import java.util.Iterator;
import java.util.List;	 
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/* Servlet implementation class UploadFile
 */
@WebServlet("/FileUpload")
public class FileUpload extends HttpServlet {
    private static final long serialVersionUID = 1L;
	 
	/**
	* Default constructor.
	*/
    public FileUpload() {
	        // TODO Auto-generated constructor stub
	    }
	 
	 /**
	  * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	  */
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  // TODO Auto-generated method stub
	 }
	 
	 /**
	  * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	  */
	 @SuppressWarnings({ "rawtypes", "unused" })
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	     
	         if (isMultipart) {
	          // Create a factory for disk-based file items
	          FileItemFactory factory = new DiskFileItemFactory();
	 
	          // Create a new file upload handler
	          ServletFileUpload upload = new ServletFileUpload(factory);
	   
	             try {
	              // Parse the request
	     List /* FileItem */ items = upload.parseRequest(request);
	     Iterator iterator = items.iterator();
	                 while (iterator.hasNext()) {
	                     FileItem item = (FileItem) iterator.next();
	                     if (!item.isFormField()) {
	                         String fileName = item.getName(); 
	                         
	                         File path = new File(request.getParameter("uploadTo"));
	                         if (!path.exists()) {
	                        	 	boolean status = path.mkdirs();
	                         }
	   
	                         File uploadedFile = new File(path + "/" + fileName);	                         
	                         item.write(uploadedFile);
	                         System.out.println("File Uploaded: " + uploadedFile.getAbsolutePath());
	                     }
	                 }
	             } catch (FileUploadException e) {
	                 e.printStackTrace();
	             } catch (Exception e) {
	                 e.printStackTrace();
	             }
	         }
	 }
	 
}
