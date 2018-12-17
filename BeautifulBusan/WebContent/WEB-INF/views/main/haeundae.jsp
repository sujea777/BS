<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<img src="<c:url value="/resources/img/haeundae.jpg" />" width="1000px">
	<h1>Haeundae</h1>
	<p class="p_in">
		Haeundae boasts an ideal wide, sandy beach and shallow waters with gentle ripples. At the mention of ‘Busan’, ‘Haeundae’ is the first to spring to mind, and it surely is the city’s representative sort.
		<br>
		In particular, with the buildings and upscale hotels along the shoreline, the beach is well-known for its modern feel.
		<br>
		The rise of the sun of Haeundae resembles the blazing blast furnace. Many tourists come to visit Haeundae for the sunrise.
		<br><br>
	</p>
	<div id="map" class="map" style="width:90%;height:400px;"></div>

<script>
var mapOptions = {
    center: new naver.maps.LatLng(35.158696, 129.160341),
    zoom: 10
};

var map = new naver.maps.Map('map', mapOptions);
</script>
<br>
<h3>Getting there</h3>
<p class="p_in">
	From Busan Airport : Airport Limousine Bus No. 2 → Novotel Ambassador Hotel Bus Stop<br>
	From Busan Station : transfer to Metro Line 2 at Seomyeon → Get off at Haeundae (Exit 3 & 5)<br>
	From Busan Bus Terminal : transfer to Metro Line 3 at Yeonsan → transfer to Line 2 at Suyeoung → Get off at Haeundae (Exits 3 & 5)<br>
	Metro : Line 2 Haeundae Station (Exits 3 & 5) → Walk 600m in the direction of Haeundae Beach<br>
	By car : Gyeongbu Expressway → Busan City Expressway → Wondong IC → Haeundae Beach<br>
</p>
<br>
<h3>Contact</h3>
<p class="p_in">
	Haeundae-gu Office : 82-51-749-4081Haeundae Tourist Information Center : 82-51-749-5700
</p>
</div>




</body>
</html>