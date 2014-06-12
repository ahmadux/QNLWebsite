package com.qnl.services;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import imageUtil.Image;
import imageUtil.ImageLoader;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResponsiveImage
 */
@WebServlet("/ResponsiveImage")
public class ResponsiveImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResponsiveImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		double factor = 0;
		
		String fileName = request.getParameter("f").toString();
		String fPath = request.getServletContext().getAttribute("FileStoragePath") + File.separator  + "images" + File.separator + "backgrounds";
		int wReq = Integer.parseInt(request.getParameter("dimX").toString());
		int yReq = Integer.parseInt(request.getParameter("dimY").toString());
		String fParams = request.getParameter("dimX").toString() + "x" + request.getParameter("dimY").toString();
		String fExt = ".jpg";
		//Check for Image generated
		System.out.println("Fetching Image...");
		File f = new File(fPath + File.separator +  fileName + fParams + fExt);
		if(!f.exists())
		{
			System.out.println("Not Found. Building Image...");
			Image img = ImageLoader.fromFile(new File(fPath + File.separator +  fileName + fExt));
			//TO DO:Resize the Image as necessary
			//Save it for future use			
			factor = (double)yReq/(double)img.getHeight();
			f = img.getResizedToWidth(Integer.parseInt("" + Math.round(img.getWidth() * factor))).crop(0, 0, wReq, yReq).writeToFile(new File(fPath + File.separator +  fileName + fParams + fExt));
			
			img.dispose();
		}
	
		
		//Return the Image
		response.setContentType("image/jpg");
		OutputStream os = response.getOutputStream();
		
		byte[] buf = new byte[8192];
        InputStream is = new FileInputStream(f);
        int c = 0;
        while ((c = is.read(buf, 0, buf.length)) > 0) {
            os.write(buf, 0, c);
            os.flush();
        }
		
		os.close();
		is.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
