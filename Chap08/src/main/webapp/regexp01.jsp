<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규 표현식</title>

<script>
	function checkForm() {
		let regExp = /Java/i	// 정규 표현식 : Java라는 문자열을 대소문자 구분 없이(i) 검사하겠다.
		let str = document.form.title.value
		let result = regExp.exec(str)
	
		// regExp.exec()	: 정규 표현식에 부합한 문자열 반환
		// regExp.test()	: 정규 표현식에 부합한지 여부를 반환(ture/false)
		if(regExp.test(str)) {
			alert(result[0])
		}
		return false	// return false : 제출 안 함
						// return값 안 쓰면 true가 디폴트임
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
		<p> 제목 : <input type="text" name="title" /> </p>
		<p><input type="submit" value="등록" /> </p>
	</form>
</body>
</html>