package com.qnl.management;



import java.io.File;
import java.sql.DriverManager;
import java.sql.SQLException;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Set;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


import com.qnl.facade.*;
//import com.qnl.services.RSSAtomFeedService;
//import com.qnl.services.SalahService;
//import com.qnl.services.ServiceException;
//import com.qnl.services.TimeService;
//import com.qnl.services.WeatherService;
//import com.sun.syndication.feed.synd.SyndFeed;

public class Initializer implements ServletContextListener {

	@SuppressWarnings("deprecation")
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		Enumeration<java.sql.Driver> drivers = DriverManager.getDrivers();
		java.sql.Driver d = null;
		while(drivers.hasMoreElements())
		{
			try{
				d = drivers.nextElement();
				DriverManager.deregisterDriver(d);
			}catch(SQLException sx)
			{}
		}
		
		Set<Thread> threadSet = Thread.getAllStackTraces().keySet();
		Thread[] threadArray = threadSet.toArray(new Thread[threadSet.size()]);
		for(Thread t:threadArray)
		{
			if(t.getName().contains("Abandoned connection cleanup thread"))
			{
				synchronized (t) {
					t.stop();
				}
			}
		}
		
		try{
			Thread.sleep(1000);
		}catch(InterruptedException iex)
		{}
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub		
		LibMenuFacade lmf = null;
		LibImageFacade.baseFolder = sce.getServletContext().getRealPath("");
		LibDocumentFacade.baseFolder = sce.getServletContext().getRealPath("");
			
		System.out.println("**************** Start Init");
		try
		{
			//WeatherService ws = WeatherService.getInstance();
			//SalahService ss = SalahService.getInstance();
			//TimeService ts = TimeService.getInstance();
			//SyndFeed feeds = RSSAtomFeedService.readFeed("http://cs.gulf-times.com/GulfTimesNewsWebsite/rss.aspx?PortalName=Gulftimes&SectionName=Qatar&NewsCat=178"); 
			
			//sce.getServletContext().setAttribute("WeatherService",ws);			
			//sce.getServletContext().setAttribute("SalahService",ss);			
			//sce.getServletContext().setAttribute("TimeService",ts);			
			//sce.getServletContext().setAttribute("GulfTimesNewsFeeds",feeds);
				
			//lif.loadImages("images");
			sce.getServletContext().setAttribute("LibImageFacade", new LibImageFacade());
			sce.getServletContext().setAttribute("LibDocumentFacade",new LibDocumentFacade());
			
			
		}catch(Exception se)
		{
			System.out.println("****************Service Error:" + se.getMessage());
			se.printStackTrace();
		}//catch(IOException ioex)
		//{
		//	System.out.println("****************Image Load Error:" + ioex.getMessage());
		//	ioex.printStackTrace();
		//}
				
		sce.getServletContext().setAttribute("FileStoragePath",sce.getServletContext().getRealPath(""));
		sce.getServletContext().setAttribute("LibMenuFacade",lmf = new LibMenuFacade());		
		sce.getServletContext().setAttribute("LibPageFacade",new LibPageFacade());
		sce.getServletContext().setAttribute("AttachmentFacade", new AttachmentFacade());
		sce.getServletContext().setAttribute("LibTemplateFacade",new LibTemplateFacade());
		sce.getServletContext().setAttribute("NewsItemFacade",new NewsItemFacade());
		sce.getServletContext().setAttribute("NewsCategoryFacade",new NewsCategoryFacade());
		sce.getServletContext().setAttribute("CustomUrlFacade",new CustomUrlFacade());
		sce.getServletContext().setAttribute("DbaseNCollectFacade",new DbaseNCollectFacade());
		sce.getServletContext().setAttribute("LibRegistrationFacade",new LibRegistrationFacade());
		sce.getServletContext().setAttribute("CompleteMenu",lmf.getCompleteMenu(LibMenuFacade.STATUS_APPROVED));
		sce.getServletContext().setAttribute("CompleteBottomMenu",lmf.getCompleteBottomMenu(LibMenuFacade.STATUS_APPROVED));
		sce.getServletContext().setAttribute("UserFacade", new UserFacade());
		sce.getServletContext().setAttribute("RoleFacade", new RoleFacade());
		sce.getServletContext().setAttribute("SubscribeFacade", new SubscribeFacade());
		sce.getServletContext().setAttribute("ManagementFiles", new File(sce.getServletContext().getRealPath("") + File.separator + "management"));
		sce.getServletContext().setAttribute("WaterMarkFile", new File(sce.getServletContext().getRealPath("") + File.separator + "images" + File.separator + "watermark" + File.separator + "WaterMarkFile.png"));
		
		//To Implement
		sce.getServletContext().setAttribute("FileLocker",new HashMap<String,String>());		
				
		
		System.out.println("**************** End Init");
		
	}

}
