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

<form action="write" method="post" enctype="multipart/form-data">
		<table class="table_position_wf">
		<tr>
			<td>
				<input type="file" name ="filename">
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="전송" class="f_r">
			</td>
		</tr>
</table>


</body>
</html>