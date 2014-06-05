package com.qnl.management;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.qnl.facade.CustomUrlFacade;

/**
 * Servlet Filter implementation class URLFilter
 */
@WebFilter("/URLFilter")
public class URLFilter implements Filter {

    /**
     * Default constructor. 
     */
    public URLFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		System.out.println("Filtering...");
		if(((HttpServletRequest)request).getRequestURI().toString().contains("/management/"))
				if(((HttpServletRequest)request).getSession().getAttribute("loggedInUser")==null)
				{
					if(request.getAttribute("forwardURL")==null)
						request.setAttribute("forwardURL", getURLEnd((HttpServletRequest) request));
					request.getRequestDispatcher("login.jsp").forward(request, response);					
				}
	
		if (getURLEnd((HttpServletRequest) request).contains(".")) 
		{
			System.out.println("Extension Found. Going to "	+ getURLEnd((HttpServletRequest) request));
			chain.doFilter(request, response);
		} 
		else
		{
			CustomUrlFacade cUFacade = (CustomUrlFacade)request.getServletContext().getAttribute("CustomUrlFacade");
			String url = cUFacade.findByFriendlyName(getURLEnd((HttpServletRequest) request)).getUrl();
			System.out.println("Forwarding to: " + url + ((url.contains("?"))?"&":"?") + ((HttpServletRequest) request).getQueryString()!=null?((HttpServletRequest) request).getQueryString():"");
			if(url.contains("/management/"))
			{
				if(((HttpServletRequest)request).getSession().getAttribute("loggedInUser")==null)
				{
					request.setAttribute("forwardURL", url);
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}			
			}
			((HttpServletResponse)response).sendRedirect(url + ((url.contains("?"))?"&":"?") + ((HttpServletRequest) request).getQueryString());					
		}		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}
	
	private String getURLEnd(HttpServletRequest sR) {
		String url = sR.getRequestURL().toString();

		String[] urlParts = url.split("/");
		return urlParts[urlParts.length - 1];
	}
	
}
