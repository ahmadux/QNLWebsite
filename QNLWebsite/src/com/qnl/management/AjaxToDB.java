package com.qnl.management;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AjaxToDB
 */
@WebServlet("/AjaxToDB")
public class AjaxToDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxToDB() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{		
		request.setCharacterEncoding("UTF-8");
		// TODO Auto-generated method stub
		System.out.println("******************************AjaxToDB -- POST Method (ID: " + request.getParameter("id") + ")");
		try{
			
			Class<?> facadeClass = Class.forName("com.qnl.facade." + request.getParameter("oName") + "Facade");	
			Object objectLoadedOnContext = request.getServletContext().getAttribute(request.getParameter("oName") + "Facade");
			
			if(request.getParameter("action")!=null){
				
				Method router = facadeClass.getMethod(request.getParameter("action"), HttpServletRequest.class, HttpServletResponse.class, java.util.Map.class);
				if(router!=null){
					router.invoke(objectLoadedOnContext,request,response,null);
					
				}
				else
				{
					System.out.println("Servlet ERORR: ACTION not found on router!");					
				}
				return;
			}
		}catch(Exception ex)
		{
			System.out.println("Error:" + ex.getMessage());
			ex.printStackTrace();
		}
	}

}
