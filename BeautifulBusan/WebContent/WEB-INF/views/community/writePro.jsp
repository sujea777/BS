<%@page import="com.spring.domain.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	//세션값 가져오기 
	MemberVO vo = (MemberVO)session.getAttribute("MemberVO");
	String id = null;
	String name = null;
	
	if(vo!=null){
		id = vo.getId();
		name = vo.getName();
	}
	if(id==null){
		response.sendRedirect("../member/login");
	}
	
%>

</body>
</html>