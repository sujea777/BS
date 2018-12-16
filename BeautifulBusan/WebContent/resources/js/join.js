/**
 * 
 */

function check1() {
	if(document.fr.id.value==""){
		alert("아이디를 입력하세요");
		document.fr.id.focus();
		return false;
	}
	
	if(document.fr.id.value.length<5){
		alert('아이디 길이는 5자 이상으로 입력하세요');
		document.fr.id.focus();
		return false;
	}
	
	if(document.fr.pass.value==""){
		alert('비밀번호를 입력하세요');
		document.fr.pass.focus();
		return false;
	}
	
	if(document.fr.pass2.value==""){
		alert('비밀번호를 입력하세요');
		document.fr.pass2.focus();
		return false;
	}
	
	if(document.fr.pass.value != document.fr.pass2.value){
		alert('비밀번호가 틀립니다');
		document.fr.pass.focus();
		return false;
	}
	
	if(document.fr.name.value==""){
		alert('이름을 입력하세요');
		document.fr.name.focus();
		return false;
	}
	
	if(document.fr.age.value==""){
		alert('주민번호 앞자리를 입력하세요 ');
		document.fr.age.focus();
		return false;
	}
	
	if(document.fr.addr1.value==""){
		alert('주소를 입력하세요');
		document.fr.addr1.focus();
		return false;
	}
	
	if(document.fr.addr2.value==""){
		alert('주소를 입력하세요');
		document.fr.addr2.focus();
		return false;
	}
	
	if(document.fr.addr3.value==""){
		alert('주소를 입력하세요');
		document.fr.addr3.focus();
		return false;
	}
	
	if(document.fr.email.value==""){
		alert('이메일을 입력하세요');
		document.fr.email.focus();
		return false;
	}
	
	if(document.fr.phone.value==""){
		alert('연락처를 입력하세요');
		document.fr.phone.focus();
		return false;
	}
	

	
	
	
	
	
	
}