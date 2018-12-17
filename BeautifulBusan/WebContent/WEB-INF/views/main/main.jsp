<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beautiful Busan</title>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<%
	//weather wt = new weather();
	//int temp = (int)wt.weather();
%>
<body id="fix">
	<figure class="vid">
		<video loop autoplay>
			<source src="<c:url value="/resources/img/bs.mp4" />" type="video/mp4"/>
		</video>
	</figure>
	<!-- video -->
	
	
	
	<header>
		<ul id="gnb">
			<li class="on">
				<a href="#"><em><i class="fa fa-refresh fa-spin"></i>Hot Place</em></a>
				<ul>
					<li><a href="./haeundae"><em>Haeundae</em></a></li>
					<li><a href="./taejongdae"><em>Taejongdae</em></a></li>
					<li><a href="./gwangan"><em>Gwangan Bridge</em></a></li>
					<li><a href="./yongkung"><em>Yongkung Temple</em></a></li>
				</ul>
			</li>
			
			<li>
				<a href="../community/communityMain"><em>Community</em></a>
			</li>
			
			<li>
				<a href="../gallery/main"><em>Gallery</em></a>
			</li>
			
			<li>
				<a href="../news/main"><em>News</em></a>
			</li>
			<li>
				<a href="../qna/main"><em>Q 	&amp; A</em></a>
			</li>
		</ul>
	</header>
	<!-- header -->
	
	<ul id="sns">
		<li><a href="#"><i class="fa fa-facebook"></i></a></li>
		<li><a href="#"><i class="fa fa-twitter"></i></a></li>
		<li><a href="#"><i class="fa fa-youtube"></i></a></li>
		<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
		<li><a href="#"><i class="fa fa-android"></i></a></li>
	</ul>
	<!-- sns -->
	
	<section class="txtBox">
		<p class="txt">Beutiful <b>Busan !</b></p>
		<p class="tit">37<em>℃</em></p>
	</section>
	<!-- txtbox -->
	
	

</body>
</html>