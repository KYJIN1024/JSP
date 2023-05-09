<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="intArr" value="<%=new int[]{1, 2, 3, 4, 5} %>" />
<c:out value="${ intArr[0] }" /><br /> 
<c:out value="${ intArr[1] }" /><br /> 

<c:forEach var="data" items="${ inArr }" begin="2" end="4" varStatus="status">
	${ data } / ${ status.index }<br />
</c:forEach>

<c:set var="strArr" value='<%=new String[]{ "11","22","33","44","55" }  %>' />
<c:forEach var="data" items="${ strArr }">
	${ data }<br />
</c:forEach>

</hr>

<c:set var="hm1" value="<%=new java.util.HashMap() %>" />
<c:set target="${ hm1 }" property="name" value="홍길동" />
<c:set target="${ hm1 }" property="today" value="<%= new java.util.Date() %>" />

<c:forEach var="data" items="${ hm1 }">
	${ data.key } - ${ data.value }<br />
</c:forEach>

</body>
</html>
