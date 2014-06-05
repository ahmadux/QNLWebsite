package com.qnl.management;

import imageUtil.Image;
import imageUtil.ImageLoader;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;

import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class FileManagement
 */
@WebServlet("/FileManagement")
@MultipartConfig
public class FileManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String wMarkFile;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FileManagement() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		throw new ServletException("GET is not supported!");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Create path components to save the file		
		wMarkFile = request.getServletContext().getAttribute("WaterMarkFile").toString(); 
				
		String fOperation = request.getParameter("fop");
		boolean applyWM = (request.getParameter("wm") == null)||(request.getParameter("wm").equals(""))?false:true;
		
		String msg = "";		
		int resizeTo = (request.getParameter("resize") == null)|| (request.getParameter("resize").equals("")) ? 0: Integer.parseInt(request.getParameter("resize").toString());		
		System.out.println("Operation to perform: " + fOperation + ":" + resizeTo);
		boolean isImage = false;
		
		try {
			if(fOperation.equals("create"))
			{
				String fPath = request.getServletContext().getAttribute("FileStoragePath").toString() + File.separator + request.getParameter("npath").replace("/", File.separator) + File.separator + request.getParameter("folderName");
				System.out.println("Create: " + fPath);
				File f = new File(fPath);
				if(f.mkdir())						
					msg = "Folder successfully created!";
				else									
					throw new IOException("Cannot create folder!");
				return;
			}
			if (fOperation.equals("upload")) 
			{
				String newFileName = (request.getParameter("nfn") == null)|| (request.getParameter("nfn").equals("")) ? "": request.getParameter("nfn");String newFilePath = "";	
				Part filePart = request.getPart("file");
				String fileName = getFileName(filePart);
				String fileExtension = getFileExtension(fileName);
				
				String path = "";
				
				switch(fileExtension)
				{
					case "jpg":
					case "png":
					case "jpeg":
					case "gif":
						isImage = true;
						newFilePath = (request.getParameter("npath") == null)|| (request.getParameter("npath").equals("")) ? File.separator + "images" + File.separator: request.getServletContext().getAttribute("FileStoragePath").toString() + File.separator + request.getParameter("npath").replace("/", File.separator) + File.separator;
						newFileName = newFileName == "" ? fileName.replace("." + fileExtension, "") : newFileName;
						path = newFilePath + newFileName;
						Image image = ImageLoader.fromStream(filePart.getInputStream());
						
						switch (resizeTo) 
						{
							case 400:
								cropImage(image.getResizedToWidth(resizeTo), 400, 300)
										.writeToFile(new File(path + ".png"));
								break;
							case 600:								
								cropImage(image.getResizedToWidth(resizeTo), 600, 400)
										.writeToFile(new File(path + ".png"));
								break;
							default:
								image.writeToFile(new File(path + ".png"));
								break;
						}
						image.dispose();						
						System.out.println("Image" +  (resizeTo > 0 ? "(resized: " + resizeTo + ")" : "") + " Saved: " + path);
						
						if(applyWM)
							addWatermark(path + ".png");
						
						msg = "Image"	+ (resizeTo > 0 ? " resized (" + resizeTo + ") and"	: "") + (applyWM ? " Watermarked": "") +  " uploaded successfully!";
						break;
					case "zip":
						String tempPath = request.getServletContext().getAttribute("FileStoragePath").toString() + File.separator + "temp" + File.separator; 
						
						newFilePath = (request.getParameter("npath") == null)|| (request.getParameter("npath").equals("")) ? File.separator + "images" + File.separator: request.getServletContext().getAttribute("FileStoragePath").toString() + File.separator+ request.getParameter("npath").replace("/", File.separator) + File.separator;
						
						path = tempPath + newFileName;
						System.out.println("Writing...");
						HelperFunctions.writeFile(path + "." + fileExtension,filePart.getInputStream());
						System.out.println("Unzipping...");
						HelperFunctions.unZipIt(path + "." + fileExtension, newFilePath);
						System.out.println("Deleting...");
						HelperFunctions.delete(path + "." + fileExtension);
						System.out.println("Zipped files extracted to: " + path);
						msg = "Zipped files uploaded successfully!";
						break;
						
					default:
						newFilePath = (request.getParameter("npath") == null)|| (request.getParameter("npath").equals("")) ? "\\documents\\": "\\"+ request.getParameter("npath").replace("/", "\\") + "\\";
						newFileName = newFileName == "" ? fileName.replace("." + fileExtension, "") : newFileName;
						path = request.getServletContext().getAttribute("FileStoragePath").toString() + newFilePath + newFileName;						
						
						HelperFunctions.writeFile(path + "." + fileExtension,filePart.getInputStream());
						System.out.println("Document Saved: " + path + "." + fileExtension);
						msg = "Document file uploaded successfully!";
				}
				

			} 
			else  //Delete Files 
			{

				String[] fileList = request.getParameter("selectedFiles").split(",");
				for (String f : fileList) 
				{
					System.out.println("Deleting File..."+ request.getServletContext().getAttribute("FileStoragePath").toString() + File.separator + f);
					HelperFunctions.delete(request.getServletContext().getAttribute("FileStoragePath").toString() + File.separator + f);
				}
				msg = "All file(s) deleted successfully!";

			}
			
		} catch (FileNotFoundException fne) {
			System.out.println("Problems during " +  (isImage ? "image" : "file")+ (resizeTo > 0 ? "(resized: " + resizeTo + ")" : "")	+ " upload. Error: " + fne.getMessage());
			msg = "Error uploading " + (isImage ? "image" : "file")	+ (resizeTo > 0 ? "(resized: " + resizeTo + ")" : "") + "!";
		} catch (Exception ex) {
			System.out.println("Error in " + fOperation + " file(s)/folder..." + ex.getMessage());
			ex.printStackTrace();
			msg = "Error " + fOperation + " file(s)/folder!";
		} finally {
			response.sendRedirect(request.getParameter("rpath") + "&msg=" + msg);
		}

	}

	private Image cropImage(Image image, int w, int h) {
		int hNew = h;
		int wNew = w;

		if (image.getHeight() > h)
			hNew = (image.getHeight() - h) / 2;
		
		if(image.getWidth() > w)
			wNew = (image.getWidth() - w)/2;
				
		if (hNew <= h)
			return image.crop(wNew, hNew, w, h);
		return image;
	}

	private String getFileExtension(String fileName) {
		// TODO Auto-generated method stub
		return fileName.substring(fileName.lastIndexOf('.') + 1);
	}

	private String getFileName(Part part) {
		String filePath = "";
		

		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename")) {
				filePath = content.substring(content.indexOf('=') + 1);
				// Drop last Quotation mark
				filePath = filePath.substring(0, filePath.length() - 1);
				break;
			}
		}
		System.out.println("File Name: " + filePath.substring(filePath.lastIndexOf(File.separator) + 1).replace("\"", ""));
		return filePath.substring(filePath.lastIndexOf(File.separator) + 1).replace("\"",	"");
	}
	
	private void addWatermark(String fName)
	{
		addWatermark(fName, wMarkFile);
	}
	
	private void addWatermark(String fName, String wMarkFile)
	{	
	    try {
	    	
	        BufferedImage image = ImageIO.read(new File(fName));
	        BufferedImage overlay = ImageIO.read(new File(wMarkFile));

	        // create the new image, canvas size is the max. of both image sizes
	        int w = Math.max(image.getWidth(), overlay.getWidth());
	        int h = Math.max(image.getHeight(), overlay.getHeight());
	        BufferedImage combined = new BufferedImage(w, h, BufferedImage.TYPE_INT_ARGB);

	        // paint both images, preserving the alpha channels
	        Graphics g = combined.getGraphics();
	        g.drawImage(image, 0, 0, null);
	        g.drawImage(overlay, 10, 0, null);

	        ImageIO.write(combined, "PNG", new File(fName));
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
		
	}

}
