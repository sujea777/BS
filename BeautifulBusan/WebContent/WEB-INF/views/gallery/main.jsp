<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beautiful Busan - 갤러리</title>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
</head>
<body>
<%@ include file="/WEB-INF/include/header.jsp" %>

<div class="div_positon">
	<h1>Gallery</h1>
	<div class="gallery">
		<c:forEach items="${ list}" var="GalleryVO">
			<a href="gRead.jsp?num=${GalleryVO.num }"><img src=" <c:url value="/resources/thumb/${GalleryVO.thumb }" />"> </a>
		</c:forEach>
	</div>
	
	<div class="news_tb">
	
	
	</div>
	
	<div>
		<c:if test="${MemberVO ne null }">
				<c:if test="${MemberVO.id eq 'admin' }">
					<input type="button" value="글 쓰기" onclick="location.href='write'" class="wl">
				</c:if>
		</c:if>

	</div>

</div>


</body>
</html>