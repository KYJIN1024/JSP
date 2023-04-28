<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

--forward전 <br />
<%
	RequestDispatcher dispatcher
		= request.getRequestDispatcher("./forward1/forward.jsp");
	dispatcher.forward(request, response);
%>
--forward후 <br />

</body>
</html>