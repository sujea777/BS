<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beautiful Busan - Community</title>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
</head>
<body>
<%@ include file="/WEB-INF/include/header.jsp" %>
<%

if(id==null){
	%>
		<script type="text/javascript">
			alert('글 조회를 하시려면 로그인이 필요합니다.');
			location.href="../member/login";
		</script>
	<%
}
%>

	<form action="modify" method="post">
		<table class="table_position_wf">
		<tr>
			<td>
				<input type="text"  class="textarea" size="100" placeholder="제목을 입력하세요" name="title" value="${bvo.title }">
				<input type="hidden" value="${bvo.name }" name="name">
				<input type="hidden" value="${bvo.id }" name="id">
				<input type="hidden" value="${bvo.idx }" name="idx">
				<br>
				<Hr>
				<br>
			</td>
		</tr>
		<tr>
			<td>
				<textarea class="textarea" rows="15" cols="100" placeholder="내용을 입력하세요 " name="content">${bvo.content }</textarea>
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="글 수정완료" class="f_r">
			</td>
		</tr>
		
		</table>
	</form>





</body>
</html>