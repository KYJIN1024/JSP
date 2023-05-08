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
<c:set var="data1" value="value1" />
<c:set var="data2" value="value2" scope="page" />
<c:set var="data3">value3</c:set>

data1 : <c:out value="${ data1 }" /><br />
data2 : <c:out value="${ data2 }" /><br />
data3 : <c:out value="${ data3 }" /><br />

data1 : <c:out value="data1" /><br />


<c:set var="data" value="value1" scope="page" />
<c:set var="data" value="value2" scope="request" />
<c:set var="data" value="value3" scope="session" />

${ pageScope.data }<br />
${ requestScope.data }<br />
${ sessionScope.data }<br />

</body>
</html>