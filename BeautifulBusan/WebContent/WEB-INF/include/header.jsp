<%@page import="com.spring.domain.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
// 세션값 가져오기 
MemberVO mvo = (MemberVO)session.getAttribute("MemberVO");
String id = null;
String name = null;

if(mvo!=null){
	id = mvo.getId();
	name = mvo.getName();
}



%>

<div class="service_header">
	<div class="wrap_inner">
		<div class="f_l">
				<h1 class="f_l logops">
					<a href="../main/main" class="text_hide" title="Beautiful Busan"><img src="<c:url value="/resources/img/logo.png" />" width="180px" height="60px"></a>
				</h1>
		</div>
       
      	<ul id="menu" class="f_l">
			<li>
				<a href="#">Hot Place</a>
				<ul id="hp">
					<li><a href="../main/haeundae">Haeundae</a></li>
					<li><a href="../main/taejongdae">Taejongdae</a></li>
					<li><a href="../main/gwangan">Gwangan Bridge</a></li>
					<li><a href="../main/yongkung">Yongkung Temple</a></li>
				</ul>
			</li>
			<li><a href="../community/communityMain">Community</a></li>
			<li><a href="../gallery/main">Gallery</a></li>
			<li><a href="../news/main">News</a></li>
			<li><a href="../qna/main">Q &amp; A</a></li>
		</ul>
		<%
			if(id==null){
				%>
				<a href="../member/login" id="menu_join" class="f_r">시작하기</a>
				<%
			}
		%>
		<%
			if(id!=null){
				%>
						<div class="f_r as">
							<img src="<c:url value="/resources/img/joinicon01.png" />" width="55px" height="55px" id="joinicon">
						</div>
						<div class="inicon">
								<img src="<c:url value="/resources/img/joinicon01.png" />" width="70px" height="70px">
								<div class="inicon_sec1">
									<div class="sec1_in">
										<%=id %> 님 환영합니다!<br>
										<input type="button" value="회원정보 보기" onclick="location.href='../community/info'">
										<input type="button" value="글쓰기" onclick="location.href='../community/write'">
									</div>
								</div>
								<div class="inicon_sec2">
									<input type="button" value="로그아웃" onclick="location.href='../member/logout'" id="sec2_btn">
								</div>
						</div>
				<%
			}
		%>
	</div>
</div>

</body>
</html>