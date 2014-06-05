package com.qnl.management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qnl.core.User;
import com.qnl.facade.UserFacade;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String u = request.getParameter("_userName");
		String p = request.getParameter("_password");
		System.out.println("Looking for user..." + u);
		User usr = ((UserFacade)((HttpServletRequest)request).getServletContext().getAttribute("UserFacade")).getUserHasName(u);
		System.out.println("Validating user for password (" + p + ") : " + usr.getName() + "/" + usr.validate(p));
		if(usr.validate(p))
		{
			System.out.println("User validated!");
			((HttpServletRequest)request).getSession().setAttribute("loggedInUser", usr);
			System.out.println("Forwarding to URL..." + request.getParameter("forwardURL"));
			response.sendRedirect("management/" + request.getParameter("forwardURL"));
		}
		else
		{
			request.setAttribute("forwardURL",request.getParameter("forwardURL"));
			response.sendRedirect("management/login.jsp?msg=Error: Invalid Username or password!");			
		}
	}

}
