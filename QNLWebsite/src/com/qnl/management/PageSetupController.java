package com.qnl.management;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.qnl.facade.LibPageFacade;

/**
 * Servlet implementation class PageSetupServlet
 */
@WebServlet("/PageSetupServlet")
public class PageSetupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageSetupController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest sReq, HttpServletResponse sResp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

			LibPageFacade lpf = (LibPageFacade) sReq.getServletContext().getAttribute("LibPageFacade");
			int pgID = ((sReq.getParameter("pgID")!=null)&&(sReq.getParameter("pgID").trim().length() > 0))?Integer.parseInt(sReq.getParameter("pgID").toString()):2;

		
			sReq.setAttribute("LibPage", lpf.findByID(pgID));
			System.out.println("Found  PageName. Going to pgID: "+ pgID);
			System.out.println("Forwarding request to -- renderPage.jsp");
	
			sReq.setAttribute("ServerTime", new java.util.Date().getTime());
			sReq.setAttribute("TemplateContentFile", lpf.findByID(pgID).getLibTemplate().getContentFile());
			sReq.setAttribute("URLModifier", "");
						
			sReq.setAttribute("PageContentFile", lpf.findByID(pgID).getContentFile());			
			sReq.setAttribute("PageHeader", lpf.findByID(pgID).getTitle());
			
			if(lpf.findByID(pgID).getLibMenu() != null)
				sReq.setAttribute("BreadCrumbs",((com.qnl.facade.LibMenuFacade) sReq.getServletContext().getAttribute("LibMenuFacade")).getBreadCrumbs(lpf.findByID(pgID).getLibMenu().getId(), ""));
			else
				sReq.setAttribute("BreadCrumbs", "No Breadcrumbs. Page is not linked to a Menu Item.");
			
			
			sReq.getRequestDispatcher("pages/renderPage.jsp").forward(sReq, sResp);
	}
	

}
