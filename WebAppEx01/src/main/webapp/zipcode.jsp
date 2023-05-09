<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
    <title>우편번호 검색</title>
</head>
<body>
<sql:setDataSource var="dataSource" driver="org.mariadb.jdbc.Driver"
                   url="jdbc:mariadb://localhost:3306/project"
                   user="project" password="1234"/>
<form action="" method="get">
    동 이름: <input type="text" name="dong">
    <input type="submit" value="검색">
</form>

<c:if test="${not empty param.dong}">
    <sql:query var="result" dataSource="${dataSource}">
        SELECT zipcode, sido, gugun, dong, ri, bunji FROM zipcode WHERE dong LIKE ?
        <sql:param value="${param.dong}%"/>
    </sql:query>

    <table border="1">
        <tr>
            <th>우편번호</th>
            <th>시도</th>
            <th>군구</th>
            <th>동</th>
            <th>리</th>
            <th>번지</th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td>${row.zipcode}</td>
                <td>${row.sido}</td>
                <td>${row.gugun}</td>
                <td>${row.dong}</td>
                <td>${row.ri}</td>
                <td>${row.bunji}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>