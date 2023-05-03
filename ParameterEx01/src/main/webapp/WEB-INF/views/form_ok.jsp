<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Hello form_ok.jsp <br/><br/>

<%
	String data = request.getParameter( "data" );
	out.println( "data :" + data );

%>

</body>
</html>