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

<script type="text/javascript">
	function button_event() {
		if(confirm("정말 삭제하시겠습니까?") == true){
			location.href="deletepage?num=${bvo.idx}";
		} else{
			return;
		}
	}
</script>
<table class="table_position_rf">
	<tr>
		<td class="td_ft">
			${bvo.title }
		</td>
	</tr>
	<tr>
		<td class="f_r">
		<br>
			<span class="name_span">by. ${bvo.name }</span><span class="ft_sp"> · ${bvo.writetime }</span>
		</td>
	</tr>
	<tr>
		<td>
			<hr><br><br>
		</td>
	</tr>
	<tr>
		<td>
			${bvo.content}
		</td>
	</tr>
	
	<!-- JSTL if문 -->
	<c:if test="${MemberVO ne null }">
		<c:if test="${bvo.id eq MemberVO.id}">
			<tr>
				<td class="f_r">
					<br><br>
					<input type="button" value="게시글 수정" onclick="location.href='modify?num=${bvo.idx}'">
					<input type="button" value="게시글 삭제" onclick="button_event();">
				</td>
			</tr>
		</c:if>
	</c:if>
	<!-- 댓글 구현 -->
	<tr>
		<td>
		<br><br>
		<div id="disqus_thread"></div>
		<script>
		
		/**
		*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
		*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
		/*
		var disqus_config = function () {
		this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
		this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
		};
		*/
		(function() { // DON'T EDIT BELOW THIS LINE
		var d = document, s = d.createElement('script');
		s.src = 'https://beatiful-busan.disqus.com/embed.js';
		s.setAttribute('data-timestamp', +new Date());
		(d.head || d.body).appendChild(s);
		})();
		</script>
		<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
		</td>
	</tr>
	<!-- 댓글 구현 -->
	
</table>


</body>
</html>