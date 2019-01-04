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
<title>Beautiful Busan - Q &amp; A</title>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=64N06f1MLGx5gysJg6mV&callback=initMap"></script>
</head>
<body>
<%@ include file="/WEB-INF/include/header.jsp" %>

<form method="post">
	<div class="info">
		<h1>문의하기</h1>
		<p>
		관리자에게 문의할 수 있습니다. <br>
		문의 시 연락 받을 연락처를 반드시 기입해주세요
		</p>
		<div class="info_ddd">
			<div class="info_div">
				<div><br>작성자 연락처</div>
				<div><br><input type="text" name="sender" size="41" class="textarea2"></div>
			</div>
			<div class="info_div">
				<div><br>제목</div>
				<div><br><input type="text" name="title" size="41" class="textarea2"></div>
			</div>
			<div class="info_div2">
				<div><br>내용</div>
				<div><br><textarea rows="27" cols="40" name="content" class="textarea2"></textarea></div>
			</div>
			<div class="info_div">
				<div id="info_up"><br><input type="submit" value="문의하기"></div>
			</div>
		</div>

	</div>
</form>

</body>
</html>