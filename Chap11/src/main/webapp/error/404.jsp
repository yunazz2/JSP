<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404 에러</title>
</head>
<body>
	<!-- 만약 유저가 존재하지 않는 페이지를 주소창에 입력하면 이 파일 내용이 나온다. -->
	<h1>404 에러 페이지</h1>
	<h3>페이지를 찾을 수 없습니다.</h3>
	<h5>요청 경로를 확인해주세요.</h5>
	<!-- 	<a href="/Chap11/main.jsp">메인 페이지</a> -->
	<a href="<%= request.getContextPath() %>/main.jsp">메인 페이지</a>
</body>
</html>