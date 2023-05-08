<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.Date"  %>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
session02.jsp<br />
<%

	
	out.println( "data1 :" + (String)session.getAttribute("data1")+"<br />");
	out.println( "data2 :" + (String)session.getAttribute("data2")+"<br />");
	
	//session.removeAttribute("data1");
	session.invalidate();
	


//5C5CD1CE3B7D980B1CC69309774A9D10

%>
</body>
</html>