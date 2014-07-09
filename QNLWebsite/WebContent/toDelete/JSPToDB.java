package com.qnl.management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




/**
 * Servlet implementation class DataController
 */
@WebServlet("/DataController")
public class JSPToDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JSPToDB() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest sReq, HttpServletResponse sResp) throws ServletException, IOException {
		
		/*IUserInteractionFacade iU = null;
		Object o = null;
		Object o2 = null;
		String x = null;
		String xAR = null;
		sReq.setCharacterEncoding("UTF-8");
		switch(sReq.getParameter("oType").toUpperCase())
		{
			case "LP":
				LibPage lp;			
				LibMenu lm = null;
				
				iU = ((LibPageFacade)sReq.getServletContext().getAttribute("LibPageFacade"));
				
				if((sReq.getAttribute("oID") != null)&&(sReq.getAttribute("oID") != ""))
					lp = ((LibPageFacade)sReq.getServletContext().getAttribute("LibPageFacade")).findByID(Integer.parseInt(sReq.getAttribute("oID").toString()));			
				else
					lp = new LibPage();					
				
				//Assign all variables			
				lp.setTitle(sReq.getParameter("pg_Title"));
				lp.setTitleAr(sReq.getParameter("pg_Title_AR"));
				
				lp.setSummary(sReq.getParameter("pg_Summary"));
				lp.setSummaryAr(sReq.getParameter("pg_Summary_AR"));
				
				lp.setKeywords(sReq.getParameter("pg_Keywords"));
				lp.setLibTemplate(((LibTemplateFacade)sReq.getServletContext().getAttribute("LibTemplateFacade")).findByID(Integer.parseInt(sReq.getParameter("pg_TemplateID").toString())));
			
				lp.setContentFile(sReq.getParameter("pg_FriendlyName").toLowerCase().replace(" ","_") + ".jsp");
				lp.setContentFileAr(sReq.getParameter("pg_FriendlyName").toLowerCase().replace(" ","_") + "_AR.jsp");
				
				//lp.setUser(((UserFacade)sReq.getServletContext().getAttribute("UserFacade")).getUserHasID(11));
				//lp.setUser((User)sReq.getSession().getAttribute("loggedInUser"));					
				
				x = sReq.getParameter("pg_Content_EN");
				xAR = sReq.getParameter("pg_Content_AR");
				
				if((sReq.getParameter("pg_MenuID") != null)&&(sReq.getParameter("pg_MenuID").trim() != ""))
				{
					lm =  ((LibMenuFacade)sReq.getServletContext().getAttribute("LibMenuFacade")).findByID(Integer.parseInt(sReq.getAttribute("pg_MenuID").toString()));
					lm.getCustomUrl().setFriendlyName(sReq.getParameter("pg_FriendlyName").toLowerCase().replace(" ","_"));
					
					lp.setLibMenu(lm);
				}
								
				o = lp;
				o2 = lm.getCustomUrl();
				break;
				
			case "LT": 
				iU = (IUserInteractionFacade)((LibTemplateFacade)sReq.getServletContext().getAttribute("LibTemplateFacade")).findByID(Integer.parseInt(sReq.getAttribute("oID").toString()));
				break;
				
			case "AT": 
				iU = (IUserInteractionFacade)((AttachmentFacade)sReq.getServletContext().getAttribute("AttachmentFacade")).findByID(Integer.parseInt(sReq.getAttribute("oID").toString()));
				break;
		}
		
		switch(sReq.getParameter("oOper").toUpperCase())
		{
			case "ADD":
				iU.save(o, x, xAR, sReq.getServletContext().getAttribute("FileStoragePath").toString());
				if(o2 != null)
				{
					((CustomUrl)o2).setUrl("PageSetupController.do?pgID=" + ((LibPage)o).getId());
					iU.save(o2, null, null, null);
				}
				break;
			case "PUP":
				iU.update(o, x, xAR, sReq.getServletContext().getAttribute("FileStoragePath").toString());
				if(o2 != null)
				{
					((CustomUrl)o2).setUrl("PageSetupController.do?pgID=" + ((LibPage)o).getId());
					iU.update(o2, null, null, null);
				}
				break;
			case "UPD": 
				break;
			case "DEL": 
				break;
		}
		
		sResp.sendRedirect(sReq.getParameter("nURL"));
		*/
		
	}

}
