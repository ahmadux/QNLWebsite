package com.qnl.management;

import java.io.*;

import java.lang.reflect.*;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class fieldSetter
 */
@WebServlet("/fieldSetter")
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
	 * Accepts:
	 * @param oName = Object Class Name (without the word 'Facade')	
	 * @param id = ID of the target object. For INSERT, skip this parameter
	 * @param fNames = Comma-separated Values 
	 * @param nVals = Comma-separated Values (for boolean use '~' before the value)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		System.out.println("******************************AjaxToDB -- GET Method");
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String message = "Object from Database";
		request.setCharacterEncoding("UTF-8");
		// TODO Auto-generated method stub
		System.out.println("******************************AjaxToDB -- POST Method (ID: " + request.getParameter("id") + ")");
		try{
			Class<?> facadeClass = Class.forName("com.qnl.facade." + request.getParameter("oName") + "Facade");			
			Class<?> coreClass = Class.forName("com.qnl.core." + request.getParameter("oName"));
			
			//Object t = cF.newInstance();
			Object objectLoadedOnContext = request.getServletContext().getAttribute(request.getParameter("oName") + "Facade");
			
			
			//for(Field f: c.getDeclaredFields())
			//{
			//	out.println(f.getName() + ": "+ f.getType() + "<br />");
			//}
			
			Class<?>[] intentionParametersTypes = new Class<?>[4];
			intentionParametersTypes[0] = Object.class;
			intentionParametersTypes[1] = Object.class;
			intentionParametersTypes[2] = Object.class;
			intentionParametersTypes[3] = Object.class;
			
			Method mIntention = null;
			Object actualObject = null;
			Object theFile = request.getParameter("x");
			Object theFileArabic = request.getParameter("xAR");
			
			Object theFilePath = request.getServletContext().getAttribute("FileStoragePath");
			
			if((request.getParameter("id") != null) && (request.getParameter("id")!= ""))
			{
				Method mFind = facadeClass.getDeclaredMethod("findByID",int.class);
				actualObject = mFind.invoke(objectLoadedOnContext,Integer.parseInt(request.getParameter("id")));
				
				if(request.getParameter("delete") != null)
				{
					intentionParametersTypes = new Class<?>[2];
					intentionParametersTypes[0] = Object.class;
					intentionParametersTypes[1] = String.class;
					
					mIntention = facadeClass.getDeclaredMethod("delete", intentionParametersTypes);
					System.out.println("Delete " + message);
					mIntention.invoke(objectLoadedOnContext, actualObject, null);
					return;
				}
				else
				{
					mIntention = facadeClass.getDeclaredMethod("update",intentionParametersTypes);
					message = "Update " + message;
				}
			}
			else
			{
				mIntention = facadeClass.getDeclaredMethod("save",intentionParametersTypes);
				actualObject = coreClass.newInstance();
				message = "Save/Create " + message;
			}
			
			Map<String, String[]> parameters = request.getParameterMap();
			for(String parameter : parameters.keySet()) 
			{
				String mName = parameter;
				String mVal = parameters.get(parameter)[0];
				
				if((!mName.startsWith("x"))&&(mName != "file"))
				{
					System.out.println("********* Method: " + mName);
					if(mName.startsWith("obj"))
					{
						//Find the Object
						//System.out.println("***Find the Object - " + parameter.replace("obj", "") + "Facade.findByID(" + parameters.get(parameter)[0] +")");
						Class<?> cx = Class.forName("com.qnl.facade." + mName.replace("obj", "") + "Facade");			
						Class<?> cxx = Class.forName("com.qnl.core." + mName.replace("obj", ""));
						Object tx = request.getServletContext().getAttribute(mName.replace("obj", "") + "Facade");
						
						Method mFindx = cx.getDeclaredMethod("findByID",int.class);
						Object ox = mFindx.invoke(tx,Integer.parseInt(mVal));
						
						//Call setObject function
						//System.out.println(parameter.replace("obj", "set"));
														
						Method mSetx = coreClass.getDeclaredMethod(mName.replace("obj","set"),(cxx.cast(ox)).getClass());
						mSetx.invoke(coreClass.cast(actualObject), cxx.cast(ox));
						System.out.println("********* Method Called (Object): " + cxx.getName());
					}
					else
					{
						try
						{
							if(HelperFunctions.isNumeric(mVal)&&(!mName.startsWith("~")))
							{
								Method mSet = coreClass.getDeclaredMethod(mName,int.class);
								mSet.invoke(coreClass.cast(actualObject),Integer.parseInt(mVal));
								System.out.println("********* Method Called (Numeric): " + mName);
							}
							else
							{
								if(mName.startsWith("~"))
								{
									Method mSet = coreClass.getDeclaredMethod(mName.replace("~",""),byte.class);
									mSet.invoke(coreClass.cast(actualObject),Byte.parseByte(mVal));
									System.out.println("********* Method Called (Byte/Bit): " + mName.replace("~",""));
								}
								else
								{									
									Method mSet = coreClass.getDeclaredMethod(mName,String.class);
									mSet.invoke(coreClass.cast(actualObject),(mVal));
									System.out.println("********* Method Called (String): " + mName);
								}
							}
						}
						catch(NoSuchMethodException nsm)
						{
							System.out.println("No Such Method. Hence Skipping Field: " + mName);
						}
					}
						
				}				
				
			}
			System.out.println(message);
			Object oR = mIntention.invoke(objectLoadedOnContext,actualObject,theFile,theFileArabic,theFilePath);			
			response.getWriter().write("" + oR);
		}catch(Exception ex)
		{
			System.out.println("****************AjaxToDB(Post) Error:" + ex.getMessage());
			response.setStatus(500);
			ex.printStackTrace();
		
		}
		
		
	}
	
	
	

}
