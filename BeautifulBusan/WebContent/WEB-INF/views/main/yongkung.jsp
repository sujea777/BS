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
	<img src="<c:url value="/resources/img/youngkung.jpg" />" width="1000px">
	<h1>Yongkung Temple</h1>
	<p class="p_in">
		Originally this spot was called Younduam where the so-called Mireuk rock was towering magnificentlye but as the temple had to go through the Japanese invasion that savagely destroyed the temple and a defense lin that runs over the temple was established after the Korean war had ended up in an armistice.
		<br><br>
		Four lions stones are supporting the pagoda on the 4 corners of the first story, and a sea god is supporting it toward the sanctum on the same story, which means the defense of Buddhist and the sea god's support of the Buddha.
		<br><br>
		The beautiful backdrop of the ocean makes the temple a popular tourist hotspot.
		<br><br>
	</p>
	<div id="map" class="map" style="width:90%;height:400px;"></div>

<script>
var mapOptions = {
    center: new naver.maps.LatLng(35.188344, 129.223262),
    zoom: 10
};

var map = new naver.maps.Map('map', mapOptions);
</script>
<br>
<h3>Getting there</h3>
<p class="p_in">
Subway line 2 to Haeundae Station (Exit 1,3 or 5) → Change to bus no. 181 → Get off at younkungsa
</p>
<br>
<h3>Contact</h3>
<p class="p_in">
Yongkung Temple : 82-51-722-7744
</p>
</div>


</body>
</html>