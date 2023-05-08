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
	out.println( "2<br />" );
%>
<%="2" %><br />
<!--  EL -->
${ 2 }<br />
${ "2" }<br />
${ test }<br />
${ "test" }<br />
\${ 'test' }<br />  <!-- el거부표시 -->
</body>
</html>