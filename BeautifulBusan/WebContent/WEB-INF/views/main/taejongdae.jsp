<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% 
    String ctx = request.getContextPath();    
    pageContext.setAttribute("ctx", ctx);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beautiful Busan - Hot Place</title>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=64N06f1MLGx5gysJg6mV&callback=initMap"></script>
</head>
<body>

<%@ include file="/WEB-INF/include/header.jsp" %>

<div id="board">
	<img src="<c:url value="/resources/img/taejongdae.jpeg" />" width="1000px">
	<h1>Taejongdae</h1>
	<p class="p_in">
		Taejongdae was named after the 29th king of Silla Dynasty King Taejong Muyeol(Kim-Chun-chu).<Br>
		While traveling around the country, King Taejong had been attracted to this spot with its rugged cliffs surrounded by dense pine forests and the sea he enjoyed shooting arrows here.<Br><Br>

		Taejongdae is abundant in its cliffs, which seem as if they have been trimmed by the sea, and uniquely-formed rocks, believed to have been formed during the 4th interglacial period 120,000 years ago.<Br><Br>

		The breathtaking views here enable visitors to appreciate Busan's natural history.<Br><br>
	</p>
	<div id="map" class="map" style="width:90%;height:400px;"></div>

<script>
var mapOptions = {
    center: new naver.maps.LatLng(35.053040, 129.087288),
    zoom: 10
};

var map = new naver.maps.Map('map', mapOptions);
</script>
<br>
<h3>Getting there</h3>
<p class="p_in">
From Gimhae Airport : Airport Limousine Bus(Busan station) → Chungmu-dong Seo-gu Office bus stop → Bus#8 → Taejongdae Terminus<Br>
From Busan Station :Metro Line 1 Nampo (Exit 6) → Bus 8, 30, 66, 88 → Taejongdae Terminus<Br>
From Busan Bus Terminal :Metro Line 1 Nampo (Exit 6) → Bus 8, 30, 66, 88→ Taejongdae Terminus<Br>
Metro :Metro Line 1 Busan station (Exit 7) → Bus 66,88,101 → Taejongdae Terminus<Br>
Road Information : Gyeongbu Expressway → Busan City Expressway Busan Bridge → Yeongdo-gu Office → Taejongdae<Br>
</p>
<Br>
<h3>Contact</h3>
<p class="p_in">
Yeongdo-gu Office : 82-51-419-4061<br>
Taejongdae Park Office : 82-51-405-2004<br>
</p>
</div>


</body>
</html>