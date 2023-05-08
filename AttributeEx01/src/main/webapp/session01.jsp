<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
session01.jsp<br />
<%
	out.println( session.getId() + "<br /> " );
//5C5CD1CE3B7D980B1CC69309774A9D10  브라우져가 꺼지기 전까지는 세선아이디가 동일함

	session.setAttribute("data1" , "value");
	session.setAttribute("data2" , "value");

%>
</body>
</html>