<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 유효성 검사</title>
<script>
	// 로그인 유효성 검사
	function checkLogin() {
		let form = document.loginForm	// name이 loginForm인 폼 요소를 가져 옴
		
		// [아이디]
		// 입력 여부 검증
		if(form.id.value == "") {		// 아이디 폼에 값이 비어있으면,
			alert('아이디를 입력해주세요.')	// alert을 띄운다.
			form.id.focus()
			return false
		}
		
		// 아이디 글자 수 검증
		if(form.id.value.length < 6 || form.id.value.length > 20) {
			alert('아이디는 6~20자 이내로 입력 가능합니다.')
			form.id.select()	// select때문에 아이디를 6자리 미만 또는 20자리 이상으로 입력했을 시 입력 데이터를 다 선택해준다. 직접 실행해보면 앎!
			return false
		}
		
		// [비밀번호]
		// 입력 여부 검증
		if(form.pw.value == "") {		// 비밀번호 폼에 값이 비어있으면,
			alert('비밀번호를 입력해주세요.')	// alert을 띄운다.
			form.pw.focus()
			return false
		}
		
		// 비밀번호 글자 수 검증
		if(form.pw.value.length < 6 ) {
			alert('비밀번호는 6자 이상으로 입력해야합니다.')
			form.pw.select()
			return false
		}
		
		// form.submit()	// - input type="button" 태그에 onclick 속성을 사용할 때
		return true			// - form 태그에 onsubmit 속성을 사용할 때
	}
</script>
</head>
<body>
	<!-- 
		onsubmit="return 여부"
		-> 여부 : true면 submit(요청 전송)
				 false면 submit 안 함
	 -->
	<form name="loginForm" onsubmit="return checkLogin()" action="validation01_pro.jsp" method="post">
		<p>아이디 : <input type="text" name="id" maxlength="20"/> </p> <!-- 아이디 자릿수 제한을 20자리로 하겠다. -->
		<p>비밀번호 : <input type="password" name="pw" /> </p>
<!-- <p><input type="button" value="로그인" onclick="checkLogin()" /></p>	 보통은 이렇게 입력하기보다, 29ln처럼 'onsubmit'에 넣어준다.-->			
		<p><input type="submit" value="로그인" /></p>
	</form>
</body>
</html>