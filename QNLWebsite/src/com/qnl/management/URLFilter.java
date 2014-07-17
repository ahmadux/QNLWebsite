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

import com.qnl.core.CustomUrl;
import com.qnl.core.LibMenu;
import com.qnl.core.LibPage;
import com.qnl.facade.CustomUrlFacade;
import com.qnl.facade.LibMenuFacade;
import com.qnl.facade.LibPageFacade;


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
		
		
		
		request.getServletContext().setAttribute("BaseServerPath", request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getServletContext().getContextPath());
		// pass the request along the filter chain
		System.out.println("Filtering...");
		CustomUrl cU;
		String urlAddon = "";
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
			cU = cUFacade.findByFriendlyName(getURLEnd((HttpServletRequest) request));
			String url = cU.getUrl();
			urlAddon = ((HttpServletRequest)request).getQueryString()!=null?((url.contains("?"))?"&":"?") + ((HttpServletRequest)request).getQueryString():"";
			System.out.println("Forwarding to: " + url);
			
			if(url.contains("/management/"))
			{
				if(((HttpServletRequest)request).getSession().getAttribute("loggedInUser")==null)
				{
					request.setAttribute("forwardURL", url);
					request.getRequestDispatcher("login.jsp").forward(request, response);
					return;
				}			
			}
			if(url.contains("pages/"))
			{
				LibMenu lm = null;
				LibMenuFacade lmf = (LibMenuFacade)request.getServletContext().getAttribute("LibMenuFacade");
				LibPageFacade lpf = (LibPageFacade)request.getServletContext().getAttribute("LibPageFacade");
				String bImage = "";
				
				lm = lmf.findByCustomURLID(cU.getId());
				bImage = lm!=null?((LibPage)lpf.findByMenuID(lm.getId())).getImage():"";
				
				request.setAttribute("BACKGROUNDIMAGE",bImage!=null?bImage:"");	
				System.out.println("BackgroundIamge: " + bImage);	
				
				request.getRequestDispatcher(url + urlAddon).forward(request, response);
				return;
			}	
			
			
			
			((HttpServletResponse)response).sendRedirect(url + urlAddon);					
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
