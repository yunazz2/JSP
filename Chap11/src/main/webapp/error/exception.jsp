<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 에러 페이지</title>
</head>
<body>
	<h1>예외 에러 페이지</h1>
	<h3>시스템 작업 처리 중 예외가 발생하였습니다.</h3>
	<!-- 	<a href="/Chap11/main.jsp">메인 페이지</a> -->
	<a href="<%= request.getContextPath() %>/main.jsp">메인 페이지</a>
</body>
</html>