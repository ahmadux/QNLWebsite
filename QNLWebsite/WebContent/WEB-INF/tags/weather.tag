<%@tag description="Weather/Time tag" pageEncoding="UTF-8" import="com.qnl.services.*,java.util.*"%>
	<div class="dateTimeWeather">
		<div class="dateTime">
			<div class="time" id="time">
				${TimeService.getFormattedTime("hh:mm")}				
			</div>
			<script>
			var sT = ${ServerTime};
			var tDM = ${timeDifferenceMillis};
			
			updateTime();
			
			function updateTime() {
			   setTimeout(updateTime,10000);
			   sT += 10000;
			   var t = new Date(sT - tDM);
			   var str = t.getHours() + ":" + t.getMinutes();
			  // var str = t.get + ":" + t.getMinutes();
			   //alert(str);
			   $("#time").html(str);
			   
			}
			</script>			
			<div class="date">
				${TimeService.getFormattedTime("E, MMM dd yyyy")}<br />
				${SalahService.getHijri()}
			</div>
			<div class="desc">
				${WeatherService.getWeatherDesc(0)}
			</div>
		</div>
		<div class="weather">			
			<div class="img">
				<img src="${WeatherService.getWeatherIconURL(0)}" alt="Weather Image"
					title="${WeatherService.getWeatherDesc(0)}" />
			</div>
			<div class="temp">
				<font class="high">${WeatherService.getMaxTempC(0).intValue()}°C</font><font
					class="low">${WeatherService.getMinTempC(0).intValue()}°C</font>
			</div>
			<div class="info">
				${WeatherService.getWindspeedKmph(0)}km winds ${WeatherService.getWinddir16Point(0)}<br />
				 Pressure ${WeatherService.getPressure()} mbar<br />
				 Humidity at ${WeatherService.getHumidity()}%
			</div>			
		</div>
		
	</div>
