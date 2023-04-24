<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- calendar3.jsp -->
<form action="calendar_ok1.jsp" method="post">  <!-- post방식드롭다운메뉴 -->
년도
<select name="year">
	<option value="2022">2022년 </option>
	<option value="2023" selected="selected">2023년 </option>
	<option value="2024">2024년 </option>
</select>
월
<select name="month">
	<option value="1">1 월</option>
	<option value="2">2 월</option>
	<option value="3">3 월</option>
	<option value="4" selected="selected">4 월</option>
	<option value="5">5 월</option>
	<option value="6">6 월</option>
	<option value="7">7 월</option>
	<option value="8">8 월</option>
	<option value="9">9 월</option>
	<option value="10">10 월</option>
	<option value="11">11 월</option>
	<option value="12">12 월</option>	
</select>
<input type="submit" value="달력보기" />
</form>
</body>
</html>