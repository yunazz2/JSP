<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규 표현식</title>

<script>
	function checkForm() {
		
		// 아이디 패턴 : 영문자, 한글 시작
		let regExpId = /^[a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣]+$/
		
		// 이름 패턴 : 한글
		let regExpName = /^[가-힣]*$/
		
		// 전화번호 패턴 : [3자리 숫자]-[3~4자리 숫자]-[4자리 숫자]
		// \d{3}-\d{3,4}-\d{4}
		// \d는 숫자
		// {?}는 개수
		// ^ 기호는 시작
		// $ 기호는 끝
		let regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/
		
		// 이메일 패턴 : [숫자,영문자]@[숫자,영문자].[영문자 2~3자리]
		// (1) : ^[0-9a-zA-Z]([-_\.]*[0-9a-zA-Z])*
		// (2) : @
		// (3) : [0-9a-zA-Z]([-_\.]*[0-9a-zA-Z])*
		// (4) : .
		// (5) : [a-zA-Z]{2,3}$
		
		// 아래 조건에 부합하는 이메일 예시
		// a@naver.com
		// an@naver.com
		// angel@naver.com
		// a_@naver.com				(X)
		// a_angel1234@naver.com
		let regExpEmail = /^[0-9a-zA-Z]([-_\.]*[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]*[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i
		// let regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i
		// => 선생님 방법 나는 [-_\.]? 부분을 [-_\.]* 이렇게 바꿔서 사용했다. 내 이메일처럼 언더바 많이 쓰는 경우도 있어서.
		// [-_\.] 이 안에 백슬래시가 있는 이유는, . 이 이미 기능을 하는 문자여서! 예약어 느낌쓰
		
	
		let phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value
		let email = form.email.value
		
		if(!regExpPhone.test(phone)) {
			alert("전화번호 형식에 맞게 입력해주세요.")
			return false			
		}
		
		if(!regExpEmail.test(email)) {
			alert("이메일 형식에 맞게 입력해주세요.")			
			form.email.select()
			return false
		}
		
		return submit()
	}

</script>
</head>
<body>

	<!-- 
		onsubmit="return 여부"
		-> 여부 : true면 submit(요청 전송)
				 false면 submit 안 함
	 -->
	<form name="form" onsubmit="return checkForm()">
		<p>제목 : <input type="text" name="title" /> </p>
		
		<p>아이디 : <input type="text" name="id" /> </p>
		<p>이름 : <input type="text" name="name" /> </p>
		
		<p>전화번호 : <select name="phone1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>
					</select> 
					- <input type="text" maxlength="4" size="4" name="phone2"> 
					- <input type="text" maxlength="4" size="4" name="phone3">
					
		<p>이메일 : <input type="text" name="email" /> </p>
		
		<p><input type="submit" value="등록" /> </p>
	</form>
</body>
</html>



















