package com.qnl.facade;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.lang.reflect.*;

public class QBaseFacade {
	
	public QBaseFacade(){
		
	}
	
	public void doRoute(HttpServletRequest request, HttpServletResponse response) throws NoSuchMethodException,Exception{
		
		if(request.getParameter("action") !=null){
			
			String methodName  	= request.getParameter("action");
			
			Method methodToCall = this.getClass().getMethod(methodName,HttpServletRequest.class,HttpServletResponse.class);
			
			if( (methodToCall.getModifiers() & Modifier.PUBLIC ) != 0 ){
		
				try{
					methodToCall.invoke(this,request,response);
					
				}catch(Exception ex){
					
					ex.printStackTrace();
				}
			}
			
		}
		
	}
}
