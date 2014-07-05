package com.qnl.management;

import imageUtil.Image;
import imageUtil.ImageLoader;

import java.io.File;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.qnl.core.LibPage;
import com.qnl.core.NewsItem;
import com.qnl.facade.LibPageFacade;
import com.qnl.facade.NewsItemFacade;


/**
 * Servlet implementation class FileUpload
 */
@WebServlet("/FileUpload")
@MultipartConfig
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileUpload() {
        super();
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fType = request.getParameter("type").toString();		
		String msg = "";
		
		Part filePart;
		Image image;
		
		String fID = request.getParameter("fid").toString();
		File tmp = null;
		String path = "";
		System.out.println("Upload File Type: " + fType + " | " + fID);
				
		try {
			switch(fType)
			{
				case "newsItemMainImage":
											
					filePart = request.getPart("file");					
					image = ImageLoader.fromStream(filePart.getInputStream());
					
					path =  request.getServletContext().getAttribute("FileStoragePath") +   File.separator + "images" + File.separator + "news" + File.separator + fID;
					tmp = new File(path);
					
					if(!tmp.exists())
						tmp.mkdir();
					
					resizeImageAspectRatio(image).getResizedToWidth(300).writeToFile(new File(path + File.separator  +  "_mainImage.jpg"));
					resizeImageAspectRatio(image).getResizedToWidth(100).writeToFile(new File(path + File.separator +  "_mainImage_tb.jpg"));
					
					image.dispose();
					
					NewsItemFacade nIF = ((NewsItemFacade)request.getServletContext().getAttribute("NewsItemFacade"));
					NewsItem ni = nIF.findByID(Integer.parseInt(request.getParameter("nid")));
					ni.setImage("../images/news/" +  fID + "/_mainImage.jpg");
					nIF.update(ni, null,null, null);
					
					nIF.refresh();
					request.getServletContext().setAttribute("NewsItemFacade", nIF);
					
					msg = "File uploaded.";
					break;
					
				case "backgroundImage":
					
					filePart = request.getPart("file");					
					image = ImageLoader.fromStream(filePart.getInputStream());
					
					path =  request.getServletContext().getAttribute("FileStoragePath") +   File.separator + "images" + File.separator + "backgrounds" + File.separator + fID;
					tmp = new File(path);
					
					if(!tmp.exists())
						tmp.mkdir();
					
					image.writeToFile(new File(path + File.separator  +  request.getParameter("fid") + ".jpg"));
					
					image.crop(0,0,320,480).writeToFile(new File(path + File.separator +  request.getParameter("fid") + "_320x480.jpg"));
					image.crop(0,0,800,600).writeToFile(new File(path + File.separator +  request.getParameter("fid") + "_800x600.jpg"));
					
					image.dispose();
					
					
					LibPageFacade lf = ((LibPageFacade)request.getServletContext().getAttribute("LibPageFacade"));
					LibPage lp = lf.findByID(Integer.parseInt(request.getParameter("fid")));
					lp.setImage(request.getServletContext().getAttribute("BaseServerPath").toString() + "/" +  "ResponsiveImage.do?f=" + request.getParameter("fid") + "/" + request.getParameter("fid"));
					lf.update(lp, null,null, null);
					
					//lf.refresh();
					request.getServletContext().setAttribute("LibPageFacade", lf);
					
					msg = "File uploaded.";
					break;
					
			}		
		} catch (Exception ex) {
			System.out.println("Error in uploading file..." + ex.getMessage());
			ex.printStackTrace();
			msg = "Error uploading file";
		} finally {
			response.sendRedirect(request.getParameter("rPath").toString() + (request.getParameter("rPath").toString().indexOf("?")>0?"&":"?") + "msg=" + msg);
		}

	}

	private Image resizeImageAspectRatio(Image image) {
		int wd = image.getWidth();
		int hd = image.getHeight();
		 
		
		if((wd*3/4) > hd)
			wd = hd * 4/3; 
		else
			hd = wd * 3/4;
		
		int wDiff = (image.getWidth() - wd); 
		int hDiff = (image.getHeight() - hd);
		
		return image.crop(wDiff/2, hDiff/2, wd + wDiff/2, hd + hDiff/2);		
	}
	

	
}
