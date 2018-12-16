<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>Beautiful Busan - Community</title>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
</head>
<body>
<%@ include file="/WEB-INF/include/header.jsp" %>

<!-- board -->
<div id="board">

<c:forEach items="${list}" var="boardVO">
	<div class="board_in">
		<div class="board_title"><a href="./read?num=${boardVO.idx }">${boardVO.title }</a></div>
		<div class="board_content"><a href="./read?num=${boardVO.idx }">${boardVO.content }</a></div>
		<div class="board_footer"><span class="name_span">by. ${boardVO.name }</span><span class="ft_sp"> · <fmt:formatDate value="${boardVO.writetime }" pattern="MM월 dd일 HH:mm"/> </span></div>
	</div>
</c:forEach>


<!-- <a href="board.jsp?pageSize=/%=pageSize=pageSize+5%>" id="more">더 보기</a> -->
</div>
<!-- board -->

</body>
</html>