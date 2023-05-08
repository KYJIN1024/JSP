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
	out.println( request.getHeader("user-agent") + "<br />");
%>
${ head[ 'host' ] }<br />
${ head[ 'user-agent' ] }<br />

${ header }<br />
<br />
${ pageContext.request.requestURI }<br />
${ pageContext.request.remoteAddr }<br />
</body>
</html>