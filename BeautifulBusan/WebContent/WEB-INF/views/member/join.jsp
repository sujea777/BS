<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beautiful Busan - Join</title>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
<script src="<c:url value="/resources/js/login.js" />"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
    
    function winopen() {
		if(document.fr.id.value == ""){
			alert("ID를 입력하시오!!");
			document.fr.id.focus();
			return;
		}
		
		var fid = document.fr.id.value;
		
		// 새창열기 ("이동할 위치(페이지)","창이름","창크기","옵션")
		window.open("joinIdCheck.jsp?fid="+fid,"","width=400,height=250");
	}
    
    
</script>




</head>
<body class="if_body">

<form action="./join" method="post" name="fr" onsubmit="return check1()">
		<table id="insert">
			<tr>
				<td><a href="./login"><img src="<c:url value="/resources/img/logo.png"/>" width="400px" height="130px"></a></td>
			</tr>
			<tr>
				<th><br>아이디</th>
			</tr>
			<tr>
				<td><input type="text" name="id" class="box" maxlength="15"></td>
			</tr>
			<tr>
				<td><input type="button" value="아이디 중복 검사" class="btn2" onclick="winopen()"></td>
			</tr>

			<tr>
				<th><br>비밀번호</th>
			</tr>
			<tr>
				<td><input type="password" name="pass" class="box" maxlength="15"></td>
			</tr>
			
			<tr>
				<th><br>비밀번호 재확인</th>
			</tr>
			<tr>
				<td><input type="password" name="pass2" class="box" maxlength="15"></td>
			</tr>
			
			<tr>
				<th><br>이름</th>
			</tr>
			<tr>
				<td><input type="text" name="name" class="box" maxlength="8"></td>
			</tr>
			
			<tr>
				<th><br>주민번호 앞자리</th>
			</tr>
			<tr>
				<td><input type="text" name="age" class="box" maxlength="6" placeholder="  ex)940310"></td>
			</tr>
			
			<tr>
				<th><br>성별</th>
			</tr>
			<tr>
				<td>
					<select name="gender" class="gender">
						<option value="">성별</option>
						<option value="남성">남성</option>
						<option value="여성">여성</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<th><br>주소</th>
			</tr>
			<tr>
				<td>
				<input type="text" id="sample4_postcode" placeholder="우편번호" readonly="readonly" name="addr1">
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" ><br>
				</td>
			</tr>
			<tr>
				<td><input type="text" id="sample4_roadAddress" placeholder="도로명주소" readonly="readonly" class="box" name="addr2"></td>
			</tr>
			<tr>
				<td>
				<input type="text" name="addr3" placeholder="나머지 주소" class="box">
				</td>
			</tr>
			
			
			<tr>
				<th><br>이메일</th>
			</tr>
			<tr>
				<td><input type="text" name="email" class="box" maxlength="30" placeholder="  ex) abc@naver.com"></td>
			</tr>
			
			<tr>
				<th><br>휴대전화</th>
			</tr>
			<tr>
				<td><input type="text" name="phone" class="box" maxlength="15" placeholder="  ex) 01012341234"></td>
			</tr>
			
			<tr>
				<td colspan="2">
					<br>
					<input type="submit" value="가입하기" class="btn">
				</td>
			</tr>
			
		</table>
	</form>

</body>
</html>