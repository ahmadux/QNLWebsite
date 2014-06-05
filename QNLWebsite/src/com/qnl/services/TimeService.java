package com.qnl.services;

import java.io.StringWriter;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement(name="data")
public class TimeService {
	
	private Request request;
	private Time_zone time_zone;
	private static TimeService t = null;
	
	protected TimeService()
	{
	}
	
	public static String getXMLString()
	{
		StringWriter sw = new StringWriter();
		if(t != null)
		{
			try {
				JAXBContext jc = JAXBContext.newInstance(TimeService.class);
				Marshaller m = jc.createMarshaller();
			    m.marshal(t,sw);
			    return sw.toString();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "<?xml version='1.0'?><error>No Can do!</error>";
	}
	
	public static TimeService getInstance() throws ServiceException
	{
		try {
			URL fileURL = new URL("http://api.worldweatheronline.com/free/v1/tz.ashx?q=Doha&format=xml&key=6g3f78wazyu6pdd8jndwgkqj");
			JAXBContext jc = JAXBContext.newInstance(TimeService.class);
			Unmarshaller u = jc.createUnmarshaller();
		    t = (TimeService)u.unmarshal(fileURL);		
		} catch (Exception ex) {
			// TODO Auto-generated catch block
			throw new ServiceException(ex);
		}
		return t;
	}
			
	
	public Request getRequest() {
		return request;
	}
	public void setRequest(Request r) {
		this.request = r;
	}
	public Time_zone getTime_zone() {
		return time_zone;
	}
	public void setTime_zone(Time_zone tz) {
		this.time_zone = tz;
	}
	
	public String getCity()
	{
		return request.city;
	}
	
	public String getCountry()
	{
		return request.country;
	}
	
	public int getMonth()
	{
		return time_zone.month;
	}
	
	public int getYear()
	{
		return time_zone.year;
	}
	
	public int getDay()
	{
		return time_zone.day;
	}
	
	public int getHours()
	{
		return time_zone.hours;
	}
	
	public int getMinutes()
	{
		return time_zone.minutes;
	}
	
	public String getFormattedTime(String format)
	{
		return new SimpleDateFormat(format).format(time_zone.currentTime);
	}
	
	public Date getCurrentDateTime()
	{
		return time_zone.currentTime;
	}
	
}

class Time_zone{
	private String localtime;
	private String utcOffset;
	int  year;
	int  month;
	int  day;
	int  hours;
	int  minutes;	
	Date currentTime;
	
	public Time_zone(){}

	/*************************** Required by JAXB **********/
	public String getLocaltime() {
		return localtime;
	}
	public void setLocaltime(String localtime) {
		this.localtime = localtime;
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		try {
			currentTime = dateFormat.parse(localtime);
			day = dateFormat.getCalendar().get(Calendar.DATE);
			month = dateFormat.getCalendar().get(Calendar.MONTH) + 1;
			year = dateFormat.getCalendar().get(Calendar.YEAR);
			hours = dateFormat.getCalendar().get(Calendar.HOUR_OF_DAY);
			minutes = dateFormat.getCalendar().get(Calendar.MINUTE);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	public String getUtcOffset() {
		return utcOffset;
	}
	public void setUtcOffset(String utcOffset) {
		this.utcOffset = utcOffset;
	}
	
	
	
}

