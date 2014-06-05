package com.qnl.management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qnl.facade.FacebookFacade;

/**
 * Servlet implementation class ExternalServices
 */
@WebServlet("/ExternalServices")
public class ExternalServices extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExternalServices() {
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
		FacebookFacade ff = new FacebookFacade();
		System.out.println("Facebook Client Created...");
		
		switch(request.getParameter("op").toString())
		{
			case "post":
				ff.publishPost(request.getParameter("msg"), request.getParameter("caption"));
				break;
			default:
				System.out.println("Facebook Operation not understood!");
		}
		
	}

}
