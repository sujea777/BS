<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beautiful Busan - 글쓰기</title>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
</head>
<body>
<%@ include file="/WEB-INF/include/header.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	if(id==null){
		response.sendRedirect("../member/login");
	}
	
%>

<form action="writePro">
	<table class="table_position_wf">
	<tr>
		<td>
			<input type="text"  class="textarea" size="100" placeholder="제목을 입력하세요" name="title">
			<input type="hidden" value="<%=name%>" name="name">
			<input type="hidden" value="<%=id%>" name="id">
			<Hr>
		</td>
	</tr>
	<tr>
		<td>
			<textarea class="textarea" rows="15" cols="100" placeholder="내용을 입력하세요 " name="content"></textarea>
		</td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="글 작성완료" class="f_r">
		</td>
	</tr>
	
	</table>
</form>

</body>
</html>