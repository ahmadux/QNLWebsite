package com.qnl.services;

import java.io.StringWriter;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;


import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author uahmad
 *
 */
@XmlRootElement(name="data")
public class WeatherService 
{
	private static WeatherService w = null;
	private Request request;
	private Current_Condition current_condition;
	private List<Weather> weather = new ArrayList<Weather>();
	
	protected WeatherService()
	{
				
	}
	
	public static WeatherService getInstance() throws ServiceException
	{
		try {
			URL fileURL = new URL("http://api.worldweatheronline.com/free/v1/weather.ashx?q=Doha,Qatar&format=xml&num_of_days=5&key=7faqawr5wyztaf6mq8v3pwvp");
			JAXBContext jc = JAXBContext.newInstance(WeatherService.class);
			Unmarshaller u = jc.createUnmarshaller();
		    w = (WeatherService)u.unmarshal(fileURL);		
		} catch (Exception ex) {
			// TODO Auto-generated catch block
			throw new ServiceException(ex);
		}
		return w;
	}
	
	public static WeatherService getInstance(int days) throws ServiceException
	{
		try {
			URL fileURL = new URL("http://api.worldweatheronline.com/free/v1/weather.ashx?q=Doha,Qatar&format=xml&num_of_days=" + days +"&key=7faqawr5wyztaf6mq8v3pwvp");
			JAXBContext jc = JAXBContext.newInstance(WeatherService.class);
			Unmarshaller u = jc.createUnmarshaller();
		    w = (WeatherService)u.unmarshal(fileURL);		
		} catch (Exception ex) {
			// TODO Auto-generated catch block
			throw new ServiceException(ex);
		}
		return w;
	}
		
	public static String getXMLString()
	{
		StringWriter sw = new StringWriter();
		if(w != null)
		{
			try {
				JAXBContext jc = JAXBContext.newInstance(WeatherService.class);
				Marshaller m = jc.createMarshaller();
			    m.marshal(w,sw);
			    return sw.toString();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "<?xml version='1.0'?><error>No Can do!</error>";
	}
	
	public String getCity()
	{
		return request.city;
	}
	
	public String getCountry()
	{
		return request.country;
	}
	
	public String getObservation_time() {
		return current_condition.getObservation_time();
	}
	
	public String getDate(int i) {
		if((weather.size() <= 0)&&(weather.size() <= i))
			return null;
		return weather.get(i).getDate();
	}
	
	public Double getTempC() {
		return current_condition.getTemp_C();
	}
	
	public Double getTempF() {
		return current_condition.getTemp_F();
	}
	
	public Double getMaxTempC(int i) {
		if((weather.size() <= 0)&&(weather.size() <= i))
			return null;
		return weather.get(i).getTempMaxC();
	}
	
	public Double getMaxTempF(int i) {
		if((weather.size() <= 0)&&(weather.size() <= i))
			return null;
		return weather.get(i).getTempMaxF();
	}
	
	public Double getMinTempC(int i) {
		if((weather.size() <= 0)&&(weather.size() <= i))
			return null;
		return weather.get(i).getTempMinC();
	}
	
	public Double getMinTempF(int i) {
		if((weather.size() <= 0)&&(weather.size() <= i))
			return null;
		return weather.get(i).getTempMinF();
	}
		
	/**
	 * @param 0 for current, 0-n for list item
	 * @return
	 */
	public String getWeatherIconURL(int i) {
		if((weather.size() <= 0)&&(weather.size() <= i))
			return null;		
		return weather.get(i).getWeatherIconUrl();
	}
	
	/**
	 * @param 0 for current, 0-n for list item
	 * @return
	 */
	public String getWeatherDesc(int i) {
		
		if((weather.size() <= 0)&&(weather.size() <= i))
			return null;
		
		return weather.get(i).getWeatherDesc();		
	}
	
	/**
	 * @param 0 for current, 0-n for list item
	 * @return
	 */
	public Double getWindspeedMiles(int i) {		
		
		if((weather.size() <= 0)&&(weather.size() <= i))
			return null;
		return weather.get(i).getWindspeedMiles();		
	}
	
	/**
	 * @param 0 for current, 0-n for list item
	 * @return
	 */
	public Double getWindspeedKmph(int i) {		
		
		if(weather.size() < i)
			return null;
		return weather.get(i).getWindspeedKmph();
	}
	
	/**
	 * @param -1 for current, 0-n for list item
	 * @return
	 */
	public Double getWinddirDegree(int i) {		
		
		if((weather.size() <= 0)&&(weather.size() <= i))
			return null;
		return weather.get(i).getWinddirDegree();
	}
	
	/**
	 * @param 0 for current, 0-n for list item
	 * @return
	 */
	public String getWinddir16Point(int i) {		
		
		if((weather.size() <= 0)&&(weather.size() <= i))
			return null;
		return weather.get(i).getWinddir16Point();
	}
	
	/**
	 * @param 0 for current, 0-n for list item
	 * @return
	 */
	public Double getPrecipMM(int i) {		
		
		if((weather.size() <= 0)&&(weather.size() <= i))
			return null;
		return weather.get(i).getPrecipMM();
	}
	
	public Double getHumidity() {
		return current_condition.getHumidity();
	}
	
	public Double getVisibility() {
		return current_condition.getVisibility();
	}
	
	public Double getPressure() {
		return current_condition.getPressure();
	}
	
	public Double getCloudcover() {
		return current_condition.getCloudcover();
	}
	
	public String getWeatherCode()
	{
		return current_condition.getWeatherCode();
	}
	
	/*************************************** Required by JAXB */
	public Request getRequest() {
		return request;
	}

	public void setRequest(Request request) {
		this.request = request;
	}

	public Current_Condition getCurrent_condition() {
		return current_condition;
	}

	public void setCurrent_condition(Current_Condition current_condition) {
		this.current_condition = current_condition;
	}	

	public List<Weather> getWeather() {
		return weather;
	}

	public void setWeather(List<Weather> ws) {
		this.weather = ws;
	}
}

class Current_Condition
{
	private String observation_time;
	private double temp_C;
	private double temp_F;
	private String weatherCode;
	private String weatherIconUrl;
	private String weatherDesc;
	private double windspeedMiles;
	private double windspeedKmph;
	private double winddirDegree;
	private String winddir16Point;
	private double precipMM;
	private double humidity;
	private double visibility;
	private double pressure;
	private double cloudcover;
	
	public Current_Condition(){}
	
	/******************************* Required by JAXB */
	public String getObservation_time() {
		return observation_time;
	}
	public void setObservation_time(String observation_time) {
		this.observation_time = observation_time;
	}
	public double getTemp_C() {
		return temp_C;
	}
	public void setTemp_C(double temp_C) {
		this.temp_C = temp_C;
	}
	public double getTemp_F() {
		return temp_F;
	}
	public void setTemp_F(double temp_F) {
		this.temp_F = temp_F;
	}
	public String getWeatherCode() {
		return weatherCode;
	}
	public void setWeatherCode(String weatherCode) {
		this.weatherCode = weatherCode;
	}
	public String getWeatherIconUrl() {
		return weatherIconUrl;
	}
	public void setWeatherIconUrl(String weatherIconURL) {
		this.weatherIconUrl = weatherIconURL;
	}
	public String getWeatherDesc() {
		return weatherDesc;
	}
	public void setWeatherDesc(String weatherDesc) {
		this.weatherDesc = weatherDesc;
	}
	public double getWindspeedMiles() {
		return windspeedMiles;
	}
	public void setWindspeedMiles(double windspeedMiles) {
		this.windspeedMiles = windspeedMiles;
	}
	public double getWindspeedKmph() {
		return windspeedKmph;
	}
	public void setWindspeedKmph(double windspeedKmph) {
		this.windspeedKmph = windspeedKmph;
	}
	public double getWinddirDegree() {
		return winddirDegree;
	}
	public void setWinddirDegree(double winddirDegree) {
		this.winddirDegree = winddirDegree;
	}
	public String getWinddir16Point() {
		return winddir16Point;
	}
	public void setWinddir16Point(String winddir16Point) {
		this.winddir16Point = winddir16Point;
	}
	public double getPrecipMM() {
		return precipMM;
	}
	public void setPrecipMM(double precipMM) {
		this.precipMM = precipMM;
	}
	
	/**
	 * @param measured in %
	 * */
	public double getHumidity() {
		return humidity;
	}
	public void setHumidity(double humidity) {
		this.humidity = humidity;
	}
	
	/**
	 * @param measured in km
	 * */
	public double getVisibility() {
		return visibility;
	}
	public void setVisibility(double visibility) {
		this.visibility = visibility;
	}
	
	/**
	 * @param measured in mbar
	 * */
	public double getPressure() {
		return pressure;
	}
	public void setPressure(double pressure) {
		this.pressure = pressure;
	}
	public double getCloudcover() {
		return cloudcover;
	}
	public void setCloudcover(double cloudcover) {
		this.cloudcover = cloudcover;
	}

}

class Weather
{
	private String date;
	private double tempMaxC;
	private double tempMaxF;
	private double tempMinC;
	private double tempMinF;
	private double windspeedMiles;
	private double windspeedKmph;
	private String winddirection; //hmmm.......
	private String winddir16Point;
	private double winddirDegree;	
	private String weatherCode;
	private String weatherIconUrl;
	private String weatherDesc;	
	private double precipMM;
	
	
	public Weather(){}
	
	/******************************* Required by JAXB */
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getTempMaxC() {
		return tempMaxC;
	}
	public void setTempMaxC(double tempMaxC) {
		this.tempMaxC = tempMaxC;
	}
	public double getTempMaxF() {
		return tempMaxF;
	}
	public void setTempMaxF(double tempMaxF) {
		this.tempMaxF = tempMaxF;
	}
	public double getTempMinC() {
		return tempMinC;
	}
	public void setTempMinC(double tempMinC) {
		this.tempMinC = tempMinC;
	}
	public double getTempMinF() {
		return tempMinF;
	}
	public void setTempMinF(double tempMinF) {
		this.tempMinF = tempMinF;
	}
	public double getWindspeedMiles() {
		return windspeedMiles;
	}
	public void setWindspeedMiles(double windspeedMiles) {
		this.windspeedMiles = windspeedMiles;
	}
	public double getWindspeedKmph() {
		return windspeedKmph;
	}
	public void setWindspeedKmph(double windspeedKmph) {
		this.windspeedKmph = windspeedKmph;
	}
	public String getWinddirection() {
		return winddirection;
	}
	public void setWinddirection(String winddirection) {
		this.winddirection = winddirection;
	}
	public String getWinddir16Point() {
		return winddir16Point;
	}
	public void setWinddir16Point(String winddir16Point) {
		this.winddir16Point = winddir16Point;
	}
	public double getWinddirDegree() {
		return winddirDegree;
	}
	public void setWinddirDegree(double winddirDegree) {
		this.winddirDegree = winddirDegree;
	}
	public String getWeatherCode() {
		return weatherCode;
	}
	public void setWeatherCode(String weatherCode) {
		this.weatherCode = weatherCode;
	}
	public String getWeatherIconUrl() {
		return weatherIconUrl;
	}
	public void setWeatherIconUrl(String weatherIconURL) {
		this.weatherIconUrl = weatherIconURL;
	}
	public String getWeatherDesc() {
		return weatherDesc;
	}
	public void setWeatherDesc(String weatherDesc) {
		this.weatherDesc = weatherDesc;
	}
	public double getPrecipMM() {
		return precipMM;
	}
	public void setPrecipMM(double precipMM) {
		this.precipMM = precipMM;
	}
}
