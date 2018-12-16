<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beautiful Busan - login</title>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
<script src="<c:url value="/resources/js/login.js" />"></script>
</head>
<body>
<form action="./login" method="post" name="fr" onsubmit="return check1()">
	<table id="login">
		<tr>
			<td><a href="../main/main"><img src='<c:url value="/resources/img/logo.png"/>' width="400px" height="130px"></a></td>
		</tr>
		<tr>
			<td><input type="text" name="id" class="box" placeholder="아이디"></td>
		</tr>
		<tr>
			<td><input type="password" name="pass" class="box" placeholder="비밀번호"></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="로그인" class="btn"></td>
		</tr>
		<tr>
			<td><A href="./join">아이디가 없으신가요?</A></td>
		</tr>
	</table>
</form>



</body>
</html>