<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>           
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<s:query var="rs" dataSource="jdbc/mariadb1">
	select deptno, dname, loc from dept2
</s:query>

<table width="600" border="1">
<tr>
	<c:forEach var="columnName" items="${ rs.columnNames }">
		<td>${ columnName }</td>
	</c:forEach>
</tr>
<c:forEach var="row" items="${ rs.rows }">
<tr>
	<td>${ row["deptno"]}</td>
	<td>${ row["dname"] }</td>
	<td>${ row["loc"] }</td>
</tr>
</c:forEach>

<c:forEach var="row" items="${ rs.rows }">
<tr>
	<td>${ row["부서번호"]}</td>
	<td>${ row["부서이름"] }</td>
	<td>${ row["부서위치"] }</td>
</tr>
</c:forEach>

</table>

</body>
</html>


