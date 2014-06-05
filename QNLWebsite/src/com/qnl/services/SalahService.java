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

/**
 * @author uahmad
 *
 */

@XmlRootElement(name="prayer")
public class SalahService 
{
		private static SalahService s = null;
		private Time fajr;
		private Time sunrise;
		private Time dhuhr;
		private Time asr;
		private Time maghrib;
		private Time isha;
		private String hijri;
		private String date;
		private int day;
		private int month;
		private int year;
		private Date currentDate;
		 
				
		public int getDay()
		{
			return day;
		}
		
		public int getMonth()
		{
			return month;
		}
		
		public int getYear()
		{
			return year;
		}
		
		public Date getCurrentDate()
		{
			return currentDate;
		}
		
		public String getFormattedCurrentDate(String format)
		{			
			return new SimpleDateFormat(format).format(currentDate);
		}
		
		protected SalahService()
		{
				
		}
		
		public static String getXMLString()
		{
			StringWriter sw = new StringWriter();
			if(s != null)
			{
				try {
					JAXBContext jc = JAXBContext.newInstance(SalahService.class);
					Marshaller m = jc.createMarshaller();
				    m.marshal(s,sw);
				    return sw.toString();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return "<?xml version='1.0'?><error>No Can do!</error>";
		}
		
		public static SalahService getInstance() throws ServiceException
		{
			try {
				URL fileURL = new URL("http://www.islamicfinder.org/prayer_service.php?country=qatar&city=doha&state=01&zipcode=&latitude=25.2867&longitude=51.5333&timezone=3&HanfiShafi=1&pmethod=4&fajrTwilight1=10&fajrTwilight2=10&ishaTwilight=10&ishaInterval=30&dhuhrInterval=1&maghribInterval=1&dayLight=0&simpleFormat=xml");				
				JAXBContext jc = JAXBContext.newInstance(SalahService.class);
				Unmarshaller u = jc.createUnmarshaller();
			    s = (SalahService)u.unmarshal(fileURL);
			    
			    											
			} catch (Exception ex) {
				// TODO Auto-generated catch block
				throw new ServiceException(ex);
			}
			return s;
		}
				
		public String getFajr() {
			return fajr.toString();
		}

		public void setFajr(String fajr) {
			this.fajr = new Time(fajr,false);
		}

		public String getSunrise() {
			return sunrise.toString();
		}

		public void setSunrise(String sunrise) {
			this.sunrise = new Time(sunrise,false);
		}

		public String getDhuhr() {
			return dhuhr.toString();
		}

		public void setDhuhr(String dhuhr) {
			this.dhuhr = new Time(dhuhr,false);
		}

		public String getAsr() {
			return asr.toString();
		}

		public void setAsr(String asr) {
			this.asr = new Time(asr,true);
		}

		public String getMaghrib() {
			return maghrib.toString();
		}

		public void setMaghrib(String maghrib) {
			this.maghrib = new Time(maghrib,true);
		}

		public String getIsha() {
			return isha.toString();
		}

		public void setIsha(String isha) {
			this.isha = new Time(isha,true);
		}

		public String getHijri() {
			return hijri;
		}

		public void setHijri(String hijri) {
			this.hijri = hijri;
		}

		public String getDate() {
			return date;
		}

		public void setDate(String date) {
			this.date = date;
			SimpleDateFormat dateFormat = new SimpleDateFormat("MMMM dd, yyyy");
			try {
				currentDate = dateFormat.parse(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			day = 	dateFormat.getCalendar().get(Calendar.DATE);
			month = dateFormat.getCalendar().get(Calendar.MONTH) + 1;
			year = dateFormat.getCalendar().get(Calendar.YEAR);
		}
	
	
}

class Time
{
	public int hours;
	public int minutes;
	public int value;
	
				
	public Time(String s, boolean PM)
	{
		hours = Integer.parseInt(s.substring(0,s.indexOf(':')).trim());
		if(PM)
			hours += 12;
		minutes = Integer.parseInt(s.substring(s.indexOf(':') + 1).trim());
		value = (hours * 60) + minutes; 
	}
	
	public String toString()
	{
		return hours + ":" + (minutes<10?"0" + minutes:minutes);
	}
	
}
