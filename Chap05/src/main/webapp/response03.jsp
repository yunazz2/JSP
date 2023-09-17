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
		// 404 상태코드 : 페이지를 찾을 수 없음
		// 500 상태코드 : 서버 내부 에러
		response.sendError(404, "요청한 페이지를 찾을 수 업성ㄹ요~.");
		// response.sendError(500, "서버 내부에 오류가 발생했어요~~~~");
	%>

</body>
</html>