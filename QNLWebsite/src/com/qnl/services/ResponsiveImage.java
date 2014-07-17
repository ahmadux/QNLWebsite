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
		int wReq = 1;
		int yReq = 1;
		int wOff = 0;
		int yOff = 0;
		
		String fParams = "";
		String fParamsOff = "";
		
		String fileName = request.getParameter("f").toString();
		String fPath = request.getServletContext().getAttribute("FileStoragePath") + File.separator  + "images" + File.separator + "backgrounds";
		String fExt = ".jpg";
		
		if(request.getParameter("dimX") != null)
		{
			wReq = Integer.parseInt(request.getParameter("dimX").toString());
			yReq = Integer.parseInt(request.getParameter("dimY").toString());
			fParams = "_" + wReq + "x" + yReq;			
			
		}	
		
		if(request.getParameter("offX") != null)
			wOff = Integer.parseInt(request.getParameter("offX").toString());
		
		if(request.getParameter("offY") != null)
			yOff = Integer.parseInt(request.getParameter("offY").toString());
		
		if((wOff  > 0)||(yOff > 0))
			fParamsOff = "-" + wOff + "x" + yOff;			
			
		
		//Check for Image generated
		System.out.println("Fetching Image...");
		File f = new File(fPath + File.separator +  fileName + fParams  + fParamsOff+ fExt);
		
		if(!f.exists())
		{
			System.out.println("Not Found. Building Image...");
			Image img = ImageLoader.fromFile(new File(fPath + File.separator +  fileName + fExt));
			//Resize the Image as necessary. Unfortunately, only scales down and not up. :(			
			//Save it for future use			
			
			factor = ((double)yReq/(double)img.getHeight()) + 0.01;
			f = img.crop(wOff,yOff,img.getWidth(),img.getHeight()).getResizedToWidth(Integer.parseInt("" + Math.round(img.getWidth() * factor))).crop(0, 0, wReq, yReq).writeToFile(new File(fPath + File.separator +  fileName + fParams + fParamsOff +   fExt));
			
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
