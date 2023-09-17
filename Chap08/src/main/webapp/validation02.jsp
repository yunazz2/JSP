<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 유효성 검사</title>
<script>
	// 로그인 유효성 검사
	function checkJoin() {
		let form = document.joinForm	// name이 joinForm인 폼 요소를 가져 옴
		
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
		
		// [이름]
		// 입력 여부 검증
		if(form.name.value == "") {		// 비밀번호 폼에 값이 비어있으면,
			alert('이름을 입력해주세요.')	// alert을 띄운다.
			form.name.focus()
			return false
		}
		
		// 이름 검증 - 이름 첫 글자는 숫자로 쓸 수 없도록 제한한다.
		if(!isNaN(form.name.value.substr(0, 1))) {
			alert('이름은 숫자로 시작할 수 없습니다.')
			form.name.select()
			return false
		}
		
		// form.submit()	// - input type="button" 태그에 onclick 속성을 사용할 때
		return true			// - form 태그에 onsubmit 속성을 사용할 때
		
	}
	
	// 숫자 키 입력 검증
	function checkNumber() {
		let form = document.joinForm
		
		console.log(event.keyCode)
		
		// 숫자가 아닌 경우 (0~9까지 직접 콘솔 창에서 찍어보면 순서대로 48~57까지 나온다. (숫자 키패드쪽 말고 윗쪽))
		if(!(event.keyCode >= 48 && event.keyCode <= 57)) {
			alert('숫자만 입력 가능합니다.')			
			event.returnValue = false	// 입력 반환 값
			form.age.value = ''
		}
	}
	
</script>
</head>
<body>
	<!-- 
		onsubmit="return 여부"
		- 여부 : true면 submit(요청 전송)
				false면 submit 안 함
	 -->
	<form name="joinForm" onsubmit="return checkJoin()" action="validation02_pro.jsp" method="post">
		<p>아이디 : <input type="text" name="id" maxlength="20"/> </p> <!-- 아이디 자릿수 제한을 20자리로 하겠다. -->
		<p>비밀번호 : <input type="password" name="pw" /> </p>
		<p>이름 : <input type="text" name="name" /> </p>
		<p>나이 : <input type="text" name="age" onkeyup="checkNumber()"/> </p>	<!-- 나이 칸에 유저가 키보드로 숫자를 입력시 -->
		
		
<!-- <p><input type="button" value="로그인" onclick="checkJoin()" /></p>	 보통은 이렇게 입력하기보다, 29ln처럼 'onsubmit'에 넣어준다.-->			
		<p><input type="submit" value="로그인" /></p>
	</form>
</body>
</html>

















