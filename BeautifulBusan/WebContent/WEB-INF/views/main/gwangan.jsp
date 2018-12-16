<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% 
    String ctx = request.getContextPath();    
    pageContext.setAttribute("ctx", ctx);
%>
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
	<img src="<c:url value="/resources/img/gwangan.jpg"/>" width="1000px">
	<h1>Gwangan Bridge</h1>
	<p class="p_in">
		Gwangan Bridge with the total length of 7.4km is the longest bridge in Korea. <br>
		Along with its function as the bridge, the scenery from the bridge shows the unending horizon of the ocean and Ohryuk Island. <br>
		Dong-baek Island and Moonhill. In addition, it also includes Korea's finest lighting, displaying brilliant colored lights every day of the week. <br>
		<br>
		Gwangan bridge, at night, is the perfect spot for a romantic stroll on the beach.<br><br>
	</p>
	<div id="map" class="map" style="width:90%;height:400px;"></div>

<script>
var mapOptions = {
    center: new naver.maps.LatLng(35.153084, 129.118645),
    zoom: 10
};

var map = new naver.maps.Map('map', mapOptions);
</script>
<br>
<H3>Getting there</H3>
<p class="p_in">
From Busan Airport : Airport Limousine Bus No. 2 → Namcheondong (in front of Hwamok Apt.)<br>
From Busan Station : transfer to Metro Line 2 at Seomyeon → Line 2 Gwangan Station (Exit 3 & 5)<br>
From Busan Bus Terminal : transfer to Metro Line 3 at Yeonsan → transfer to Line 2 at Suyeoung → Line 2 Gwangan (Exit 3 & 5)<br>
Metro : Line 2 Gwangan Station → 800m in the direction of Gwangalli Beach<br>
Road Information : Gyeongbu Expressway → Busan City Expressway → Weondong IC → Suyeong IC → Gwangalli Beach<br>
</p>
<br>
<h3>Contact</h3>
<p class="p_in">
Suyeong-gu Office : 82-51-610-4071<br>
Suyeong Tourist Information : 82-51-610-4216<br>
Nam-gu Office : 82-51-607-4601<br>
</p>
</div>



</body>
</html>