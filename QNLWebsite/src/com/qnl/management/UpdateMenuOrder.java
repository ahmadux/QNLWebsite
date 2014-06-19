package com.qnl.management;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.qnl.core.LibMenu;
import com.qnl.facade.LibMenuFacade;

/**
 * Servlet implementation class updateMenuOrder
 */
@WebServlet("/updateMenuOrder")
public class UpdateMenuOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMenuOrder() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		LibMenu lm;
		LibMenuFacade lmf = (LibMenuFacade)request.getServletContext().getAttribute("LibMenuFacade");
		Enumeration<String> paramNames = request.getParameterNames();
		while(paramNames.hasMoreElements())
		{
			String paramName = ((String)paramNames.nextElement());
			int paramValue = Integer.parseInt(request.getParameter(paramName));
			lm = lmf.findByID(Integer.parseInt(paramName));
			lm.setOrder(paramValue);
			lmf.update(lm, null, null, null);
		}
		lmf.refresh();
		
		//request.getServletContext().setAttribute("LibMenuFacade",lmf);		
	}

}
