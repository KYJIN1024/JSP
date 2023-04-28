<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

-- include 이전 <br />
<%
	int i = 2;
%>
	<jsp:include page="./include1/include2.jsp" >
		<jsp:param value="value1" name="data1"/>
		<jsp:param value="<%=i %>" name="data2"/>
	</jsp:include>
			
-- include 이후 <br />


</body>
</html>