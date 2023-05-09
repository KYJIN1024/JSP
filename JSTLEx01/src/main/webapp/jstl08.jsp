<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:forTokens var="token" items="1,2,3,4,5" delims=",">
	${ token }<br />
</c:forTokens>

<hr />

<c:forTokens var="token" items="홍길동,고길동,김길동" delims=",">
	${ token }<br />
</c:forTokens>


</body>
</html>
