package com.qnl.facade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.qnl.management.HelperFunctions;

import java.io.IOException;
import java.lang.reflect.*;
import java.util.HashMap;
import java.util.Map;

public class QBaseFacade 
{
	public QBaseFacade()
	{
	
	}
	
	public Class<?> getCoreClass() throws ClassNotFoundException
	{
		return Class.forName(getClass().toString().replace("class ","").replace(".facade", ".core").replace("Facade", ""));
	}
	
	//Overwrite in subClasses
	public Object findByID(int i){ return null; };
	
	public void refresh(){ System.out.println("REFRESH not implemented for " + this.getClass().toString() ); }
	public String save(Object o,Object opt, Object optAR, Object extraInfo) throws IOException{ System.out.println("SAVE not implemented for " + this.getClass().toString() ); return null;};
	public String update(Object o, Object opt,  Object optAR, Object extraInfo) throws IOException{ preUpdate(o, extraInfo); System.out.println("UPDATE not implemented for " + this.getClass().toString() ); return null;};
	public String delete(Object o,  Object extraInfo) throws IOException{ System.out.println("DELETE not implemented for " + this.getClass().toString() ); return null; };
	public void preUpdate(Object o,  Object extraInfo) throws IOException{  };
	
	public String onCreate_Create(){ return null; };
	public String onCreate_Update(){ return null;};
	
	public String onUpdate_Update(){ return null;};
	
	public String onDelete_Delete(){ return null;};
	
	public QBaseFacade getObjectFromContext(HttpServletRequest request, String objName)
	{
		return (QBaseFacade)request.getServletContext().getAttribute(objName);	
	}
	
	public void executeSetMethod(Object actualObject, String methodName, Class<?> parameterType, Object parameterValue) throws NoSuchMethodException, ClassNotFoundException, InvocationTargetException, IllegalAccessException
	{
		Method mSet = getCoreClass().getDeclaredMethod(methodName,parameterType);
		mSet.invoke(getCoreClass().cast(actualObject), parameterValue);
		
		System.out.println("********* Method Called: " + methodName);
	}
	
	public void doRoute_Delete(HttpServletRequest request, HttpServletResponse response, Map<String, String[]> optionalParams) throws NoSuchMethodException,Exception
	{
		String METHOD="Delete";
		request.setCharacterEncoding("UTF-8");
		
		String oName = optionalParams==null?request.getParameter("oName"):optionalParams.get("oName")[0];
		
		try{
			
			//Load object from ServletContext
			QBaseFacade objectLoadedOnContext =  getObjectFromContext(request, oName + "Facade");
					
			Object actualObject = null;
			Object theFilePath = request.getServletContext().getAttribute("FileStoragePath");
			
			if(optionalParams == null)
			{
				optionalParams = new HashMap<String, String[]>();
				Map<String, String[]> parameters = request.getParameterMap();
				optionalParams.putAll(parameters);
			}
			
			//Check if "id" has been passed
			if((optionalParams.get(oName.replace("Lib","") + "_" + "id")[0] != null) && (optionalParams.get(oName.replace("Lib","") + "_" + "id")[0]!= ""))
			{
				//Since "id" was passed, invoke "findByID" to get the Object to work with								
				actualObject = this.findByID(Integer.parseInt(optionalParams.get(oName.replace("Lib","") + "_" + "id")[0].toString()));
				System.out.println(METHOD + " --> " + actualObject.getClass());
				
				//We are now ready to call the appropriate invocation on the object as all the required fields are set...
				Object oR = this.delete(actualObject, theFilePath);
							
				//Reload on Context
				objectLoadedOnContext.refresh();
				
				//Check for methods: OnCreate_Create, OnUpdtae_Update and OnDelete_Delete
				if(onDelete_Delete() != null)
				{
					String tName = onDelete_Delete();
					
					//Set oName for next call
					optionalParams.put("oName" , new String[]{tName});
					
					//Load Result back on optionalParameters for possible use by next object
					optionalParams.put(tName.replace("Lib","") + "_obj" + oName , new String[]{"" + oR});
					
					((QBaseFacade)request.getServletContext().getAttribute(tName + "Facade")).doRoute_Delete(request, response, optionalParams);
					
				}
				System.out.println(actualObject + " --> ID: " + oR);
			}
			else
				System.out.println("Cannot delete object -- ID not found!");
			
		}catch(Exception ex)
		{
			System.out.println("**************** QBaseFacade (DELETE) Error:" + ex.getMessage());
			response.setStatus(500);
			ex.printStackTrace();		
		}
	}
		
	public void doRoute_Update(HttpServletRequest request, HttpServletResponse response, Map<String, String[]> optionalParams) throws NoSuchMethodException,Exception
	{
		String METHOD="Update";
		request.setCharacterEncoding("UTF-8");
		
		String oName = optionalParams==null?request.getParameter("oName"):optionalParams.get("oName")[0];
		
		try{											
			//Load object from ServletContext
			QBaseFacade objectLoadedOnContext =  getObjectFromContext(request, oName + "Facade");				
			Object actualObject = null;
			
			
			if(optionalParams == null)
			{
				optionalParams = new HashMap<String, String[]>();
				Map<String, String[]> parameters = request.getParameterMap();
				optionalParams.putAll(parameters);
			}
			
			//Check if HTML files need to be created. Only for LibPage.
			Object theFile = optionalParams.get(oName.replace("Lib","") + "_" + "x")!=null?optionalParams.get(oName.replace("Lib","") + "_" + "x")[0]:null;
			Object theFileArabic = optionalParams.get(oName.replace("Lib", "") + "_" + "xAR")!=null?optionalParams.get(oName.replace("Lib", "") + "_" + "xAR")[0]:null;			
			Object theFilePath = request.getServletContext().getAttribute("FileStoragePath");
			
			if((optionalParams.get(oName.replace("Lib","") + "_" + "id")[0] != null) && (optionalParams.get(oName.replace("Lib","") + "_" + "id")[0]!= ""))
			{
				//Since "id" was passed, invoke "findByID" to get the Object to work with						
				actualObject = this.findByID(Integer.parseInt(optionalParams.get(oName.replace("Lib","") + "_" + "id")[0].toString()));				
				
				//Set the appropriate fields on the object			
				for(String parameter : optionalParams.keySet())
				//Get only valid parameters (example: starting with "Page" or "Menu")	
					if(parameter.startsWith(oName.replace("Lib","")))	
					{
						String mName = parameter.replace(oName.replace("Lib","") + "_", "");
						String mVal = optionalParams.get(parameter)[0];
						
						//Skip passed-parameters starting with "x" or named "file"
						if((!mName.startsWith("x"))&&(mName != "file"))
						{
							System.out.println("********* Method: " + mName);
							
							try
							{
								//Passed-parameters starting with "obj" are foreignKey attached objects. Load them using "findByID" and the value passed in the parameter						
								if(mName.startsWith("obj"))
								{	
									QBaseFacade connectedObject = getObjectFromContext(request, mName.replace("obj", "") + "Facade");
																	
									Object ox = connectedObject.findByID(Integer.parseInt(mVal));
									
									//Set this conenctObject reference on the actualObject
									executeSetMethod(actualObject, mName.replace("obj","set"),connectedObject.getCoreClass(),ox);									
								}
								else
								{								
									//Check if the value is numeric BUT does not start with "~", this it is an integer
									if(HelperFunctions.isNumeric(mVal)&&(!mName.startsWith("~")))
									{
										executeSetMethod(actualObject, mName, int.class, Integer.parseInt(mVal));										
									}
									else
									{
										//If it starts with a "~" it must be a byte
										if(mName.startsWith("~"))
										{
											executeSetMethod(actualObject, mName.replace("~",""), byte.class, Byte.parseByte(mVal));											
										}
										else
										{	
											//Else it must be a String
											executeSetMethod(actualObject, mName, String.class, mVal);	
										}
									 }								
								  }
							}
							catch(NoSuchMethodException nsm)
							{
									//Method name not found on object. So skip it.
									System.out.println("No Such Method. Hence Skipping Field: " + mName);
							}
						}
								
					}//if(parameter.startsWith(oName.replace("Lib",""))
				//for end
				
				System.out.println(METHOD + " --> " + actualObject.getClass());
			
				//We are now ready to call the appropriate invocation on the object as all the required fields are set...			
				Object oR = objectLoadedOnContext.update(actualObject,theFile,theFileArabic,theFilePath);
				
				//Reload on Context
				objectLoadedOnContext.refresh();
				
				//Check for methods: OnCreate_Create, OnUpdtae_Update and OnDelete_Delete
				if(onUpdate_Update() != null)
				{
					String tName = onUpdate_Update();
					
					//Set oName for next call
					optionalParams.put("oName" , new String[]{tName});
					
					//Load Result back on optionalParameters for possible use by next object
					optionalParams.put(tName.replace("Lib","") + "_obj" + oName , new String[]{"" + oR});
					
					((QBaseFacade)request.getServletContext().getAttribute(tName + "Facade")).doRoute_Update(request, response, optionalParams);
					
				}		
				System.out.println(actualObject + " --> ID: " + oR);
			}
			else
				System.out.println("Cannot update object -- ID not found!");
			
		}catch(Exception ex)
		{
			System.out.println("**************** QBaseFacade (UPDATE) Error:" + ex.getMessage());
			response.setStatus(500);
			ex.printStackTrace();		
		}
		
	}
	
	public void doRoute_Create(HttpServletRequest request, HttpServletResponse response, Map<String, String[]> optionalParams) throws NoSuchMethodException,Exception
	{
		String METHOD="Create";
		request.setCharacterEncoding("UTF-8");
		
		String oName = optionalParams==null?request.getParameter("oName"):optionalParams.get("oName")[0];
		
		try{											
			//Load object from ServletContext
			QBaseFacade objectLoadedOnContext =  getObjectFromContext(request, oName + "Facade");				
			Object actualObject = getCoreClass().newInstance();
			
			
			if(optionalParams == null)
			{
				optionalParams = new HashMap<String, String[]>();
				Map<String, String[]> parameters = request.getParameterMap();
				optionalParams.putAll(parameters);
			}
			
			//Check if HTML files need to be created. Only for LibPage.
			Object theFile = optionalParams.get(oName.replace("Lib","") + "_" + "x")!=null?optionalParams.get(oName.replace("Lib","") + "_" + "x")[0]:null;
			Object theFileArabic = optionalParams.get(oName.replace("Lib", "") + "_" + "xAR")!=null?optionalParams.get(oName.replace("Lib", "") + "_" + "xAR")[0]:null;			
			Object theFilePath = request.getServletContext().getAttribute("FileStoragePath");
			
			//Set the appropriate fields on the object			
			for(String parameter : optionalParams.keySet())
			//Get only valid parameters (example: starting with "Page" or "Menu")	
				if(parameter.startsWith(oName.replace("Lib","")))	
				{
					String mName = parameter.replace(oName.replace("Lib","") + "_", "");
					String mVal = optionalParams.get(parameter)[0];
					
					//Skip passed-parameters starting with "x" or named "file"
					if((!mName.startsWith("x"))&&(mName != "file"))
					{
						System.out.println("********* Method: " + mName);
						
						try
						{
							//Passed-parameters starting with "obj" are foreignKey attached objects. Load them using "findByID" and the value passed in the parameter						
							if(mName.startsWith("obj"))
							{	
								QBaseFacade connectedObject = getObjectFromContext(request, mName.replace("obj", "") + "Facade");
																
								Object ox = connectedObject.findByID(Integer.parseInt(mVal));
								
								executeSetMethod(actualObject, mName.replace("obj","set"),connectedObject.getCoreClass(),ox);								
							}
							else
							{								
								//Check if the value is numeric BUT does not start with "~", this it is an integer
								if(HelperFunctions.isNumeric(mVal)&&(!mName.startsWith("~")))
								{
									executeSetMethod(actualObject, mName, int.class, Integer.parseInt(mVal));								
								}
								else
								{
									//If it starts with a "~" it must be a byte
									if(mName.startsWith("~"))
									{
										executeSetMethod(actualObject, mName.replace("~",""), byte.class, Byte.parseByte(mVal));										
									}
									else
									{	
										//Else it must be a String
										executeSetMethod(actualObject, mName, String.class, mVal);										
									}
								 }								
							  }
						}
						catch(NoSuchMethodException nsm)
						{
								//Method name not found on object. So skip it.
								System.out.println("No Such Method. Hence Skipping Field: " + mName);
						}
					}
							
				}//if(parameter.startsWith(oName.replace("Lib",""))
			//for end
			
			System.out.println(METHOD + " --> " + actualObject.getClass());
		
			//We are now ready to call the appropriate invocation on the object as all the required fields are set...			
			Object oR = objectLoadedOnContext.save(actualObject,theFile,theFileArabic,theFilePath);
			
			//Reload on Context
			objectLoadedOnContext.refresh();
			
			//Check for methods: OnCreate_Create, OnUpdtae_Update and OnDelete_Delete
			if(onCreate_Update() != null)
			{
				String tName = onCreate_Update();
				
				//Set oName for next call
				optionalParams.put("oName" , new String[]{tName});
				
				//Load Result back on optionalParameters for possible use by next object
				optionalParams.put(tName.replace("Lib","") + "_obj" + oName , new String[]{"" + oR});
				
				((QBaseFacade)request.getServletContext().getAttribute(tName + "Facade")).doRoute_Update(request, response, optionalParams);
				
			}
			
			if(onCreate_Create() != null)
			{
				String tName = onCreate_Create();
				
				//Set oName for next call
				optionalParams.put("oName" , new String[]{tName});
				
				//Load Result back on optionalParameters for possible use by next object
				optionalParams.put(tName.replace("Lib","") + "_obj" + oName , new String[]{"" + oR});
				
				((QBaseFacade)request.getServletContext().getAttribute(tName + "Facade")).doRoute_Create(request, response, optionalParams);
				
			}		
			System.out.println(actualObject + " --> ID: " + oR);
		
		
		}catch(Exception ex)
		{
			System.out.println("**************** QBaseFacade (CREATE) Error:" + ex.getMessage());
			response.setStatus(500);
			ex.printStackTrace();		
		}
	}	
	
}
