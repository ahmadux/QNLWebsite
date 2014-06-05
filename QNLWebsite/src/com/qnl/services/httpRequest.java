package com.qnl.services;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import javax.net.ssl.HttpsURLConnection;
import java.net.URL;



public class httpRequest 
{	
	private static String USER_AGENT = "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36";
	private static String lang = "en-US,en;q=0.5";
	
	private static String sendPost(String url, String urlParameters) throws Exception 
	{
		return sendPost(url,urlParameters,lang,USER_AGENT); 
	}
	
	@SuppressWarnings("unused")
	private static String sendPost(String url, String urlParameters, String _lang) throws Exception 
	{
		return sendPost(url,urlParameters,_lang, USER_AGENT);
 
	}
	
	private static String sendPost(String url, String urlParameters, String _lang, String uAgent) throws Exception 
	{
		if(url.startsWith("https"))
			return sendPostHttps(url, urlParameters, _lang, uAgent);
		return sendPostHttp(url, urlParameters, _lang, uAgent);
	}
	
	private static String sendPostHttps(String url, String urlParameters, String _lang, String uAgent) throws Exception
	{
		URL obj = new URL(url);
		HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
 
		//add reuqest header
		con.setRequestMethod("POST");
		con.setRequestProperty("User-Agent", uAgent);
		con.setRequestProperty("Accept-Language", _lang);
 
		// Send post request
		con.setDoOutput(true);
		if(urlParameters != null)
		{
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(urlParameters);
			wr.flush();
			wr.close();
		}
 
		int responseCode = con.getResponseCode();
		System.out.println("Response Code (" + url + "?" + urlParameters + "): " + responseCode);
 
		BufferedReader in = new BufferedReader(
		        new InputStreamReader(con.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();
 
		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
 
		//print result
		return response.toString();
 
	}
	
	private static String sendPostHttp(String url, String urlParameters, String _lang, String uAgent) throws Exception
	{
		URL obj = new URL(url);
		
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
 
		//add reuqest header
		con.setRequestMethod("POST");
		con.setRequestProperty("User-Agent", uAgent);
		con.setRequestProperty("Accept-Language", _lang);
 
		// Send post request
		con.setDoOutput(true);
		if(urlParameters != null)
		{
			System.out.print("here");
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(urlParameters);
			wr.flush();
			wr.close();
		}
 
		int responseCode = con.getResponseCode();
		System.out.println("Response Code (" + url + "?" + urlParameters + "): " + responseCode);
 
		BufferedReader in = new BufferedReader(
		        new InputStreamReader(con.getInputStream(),"UTF-8"));
		String inputLine;
		StringBuffer response = new StringBuffer();
 
		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
 
		//print result
		return response.toString();
 
	}
	
	public static void main(String[] args)
	{
		try{
			System.out.println(httpRequest.sendPost("https://library.qnl.qa/iii/cas/login;jsessionid=C405CC29353BFA8AB5C85B4646485E7C?service=https%3A%2F%2Flibrary.qnl.qa%3A443%2Fpatroninfo~S1%2FIIITICKET&scope=1","code=10000123&pin=1234&Log+In=Log+in&lt=_c31C338F3-0DEC-8FC2-4EE6-7D548BEBAE57_k0D9C19EC-9408-03E4-1F54-CF343AFB6B8F&_eventId=submit"));
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
 
}
	

