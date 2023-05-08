<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

${ "browser" }<br />
<c:out value="browser"></c:out><br />
<%
	pageContext.setAttribute("data", "browser");
%>
EL : ${ data }<br />
JSTL : <c:out value="${ data }"></c:out><br />
JSTL : <c:out value="${ data }" default="nobrowser"></c:out><br />

</body>
</html>