<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	// 자바에서는 원래 println이 엔터 한 번 친 걸로 인식하지만, 실제로 아래 코드를
		// 실행시켜보면 html상에는 엔터가 안 된 걸로 나온다. 근데 콘솔창에는 또 엔터 된 걸로 나옴.. 하하
		out.print("이름 : ");
		out.println("이유나");
		out.println("나이 : 28");
	%>
</body>
</html>