<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>         
 
 <%--  <c:import var="htmlData" url="https://m.daum.net" charEncoding="utf-8" /> --%>
 <%-- <c:import var="htmlData" url="http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.xml?key=f5eef3421c602c6cb7ea224104795888&targetDt=20120101" charEncoding="utf-8" /> --%>
 <c:url var="url"  value="http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.xml">
 	<c:param name="key" value="f5eef3421c602c6cb7ea224104795888" />
 	<c:param name="targetDt" value="20230506" />
 </c:url>>
 <c:import var="htmlData" url="${ url }" charEncoding="utf-8" />
 
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<textarea rows="50" cols="800">
${ htmlData }
</textarea>

</body>
</html>