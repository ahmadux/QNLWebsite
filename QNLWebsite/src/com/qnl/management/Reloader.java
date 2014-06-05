package com.qnl.management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qnl.facade.AttachmentFacade;
import com.qnl.facade.CustomUrlFacade;
import com.qnl.facade.LibMenuFacade;
import com.qnl.facade.LibPageFacade;
import com.qnl.facade.LibRegistrationFacade;
import com.qnl.facade.LibTemplateFacade;
import com.qnl.facade.NewsCategoryFacade;
import com.qnl.facade.NewsItemFacade;
import com.qnl.facade.RoleFacade;
import com.qnl.facade.SubscribeFacade;

import com.qnl.facade.UserFacade;

/**
 * Servlet implementation class Reloader
 */
@WebServlet("/Reloader")
public class Reloader extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reloader() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		String p,x = request.getParameter("o");
		LibMenuFacade lmf = null;
		//request.getServletContext().setAttribute("FileStoragePath",request.getServletContext().getRealPath(""));
		
		String[] mx = x.split(",");
		
		for(int c=0; c < mx.length; c++)
		{
			switch(p=mx[c])
			{
				case"LibMenu":
					(lmf = (LibMenuFacade)request.getServletContext().getAttribute("LibMenuFacade")).refresh();
					request.getServletContext().setAttribute("completeMenu",lmf.getCompleteMenu(LibMenuFacade.STATUS_APPROVED));
					break;
				case "LibPage":
					((LibPageFacade)request.getServletContext().getAttribute("LibPageFacade")).refresh();				
					break;
				case "Attachment":
					((AttachmentFacade)request.getServletContext().getAttribute("AttachmentFacade")).refresh();
					break;
				case "LibTemplate":
					((LibTemplateFacade) request.getServletContext().getAttribute("LibTemplateFacade")).refresh();
					break;
				case "NewsItem":
					((NewsItemFacade)request.getServletContext().getAttribute("NewsItemFacade")).refresh();
					break;
				case "NewsCategory":
					((NewsCategoryFacade)request.getServletContext().getAttribute("NewsCategoryFacade")).refresh();
					break;
				case "CustomUrl":
					((CustomUrlFacade)request.getServletContext().getAttribute("CustomUrlFacade")).refresh();
					break;
				case "LibRegistration":
					((LibRegistrationFacade)request.getServletContext().getAttribute("LibRegistrationFacade")).refresh();
					break;
				case "User":
					((UserFacade)request.getServletContext().getAttribute("UserFacade")).refresh();
					break;	
				case "Role":
					((RoleFacade)request.getServletContext().getAttribute("RoleFacade")).refresh();
					break;	
				case "Subscribe":
					((SubscribeFacade)request.getServletContext().getAttribute("SubscribeFacade")).refresh();
					break;	
			}
			System.out.println("**************** " + p  + " Reloaded");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
