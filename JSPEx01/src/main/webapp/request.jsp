<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--  form - post -->
	
	<form action="request_ok.jsp" method="post">
		데이터 <input type="text" name="data1" />
		<br />
		데이터 <input type="text" name="data2" />
		<br />
		<input type="submit" value="전송" />
	</form>
	</br>
	
	<!--  a - get -->
	<a href="request_ok.jsp?data1=값1&data2=값2">전송</a>


</body>
</html>