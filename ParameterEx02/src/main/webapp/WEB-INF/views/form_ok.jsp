<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Hello form_ok.jsp<br/><br/>

<% 
	String data = (String)request.getAttribute( "data" );
	out.println( "data :" + data );
	String data2 = (String)request.getAttribute( "data2" );
	out.println( "data2 :" + data2 );
%>



</body>
</html>