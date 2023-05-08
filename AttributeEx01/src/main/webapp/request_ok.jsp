<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  request_ok.jsp -->
<%
	out.println( request.getParameter("data")+ "<br />");
	request.setAttribute("data3", "value3" );
%>

<jsp:include page="request_ok_sub.jsp">
	<jsp:param name="data2" value="value2" /> 
</jsp:include>

</body>
</html>