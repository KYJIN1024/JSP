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
	out.println( request.getRemoteAddr()+ "<br />");
	out.println( request.getContextPath()+ "<br />");
	out.println( request.getRequestURI()+ "<br />");
	out.println( request.getRequestURI()+ "<br />");
	
	out.println( request.getServerName()+ "<br />");
	out.println( request.getServerPort()+ "<br />");
%>

</body>
</html>