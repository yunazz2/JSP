<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="include01_header.jsp" %>
	<div class="container">
		<h1>컨텐츠 영역</h1>
		<h3><%= new Date() %></h3>
	</div>
	<%@ include file="include01_footer.jsp" %>

</body>
</html>