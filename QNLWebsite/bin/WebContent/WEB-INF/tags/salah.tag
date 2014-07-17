<%@tag description="Salah tag" pageEncoding="UTF-8" import="com.qnl.services.*"%>

<div class="prayers">
	<div class="prayerTime">
		<div class="prayerName">Fajr</div>
		${SalahService.getFajr()}
	</div>
	<div class="prayerTime">
		<div class="prayerName">Sunrise</div>
		${SalahService.getSunrise()}
	</div>
	<div class="prayerTime">
		<div class="prayerName">Dhuhr</div>
		${SalahService.getDhuhr()}
	</div>
	<div class="prayerTime">
		<div class="prayerName">Asr</div>
		${SalahService.getAsr()}
	</div>
	<div class="prayerTime">
		<div class="prayerName">Maghrib</div>
		${SalahService.getMaghrib()}
	</div>
	<div class="prayerTime">
		<div class="prayerName">Isha</div>
		${SalahService.getIsha()}
	</div>
</div>