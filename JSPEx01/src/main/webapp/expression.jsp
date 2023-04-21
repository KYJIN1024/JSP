<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		//전처리구문
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//UI와 결합된 데이터 출력
%>
<%
	String data = "Hello JSP<br />";
 	out.println("Hello JSP<br />");
%>
<%="Hello JSP<br />"%>  
<%=data %>
</body>
</html>