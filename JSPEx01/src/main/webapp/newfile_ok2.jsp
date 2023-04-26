<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String strStartdan = request.getParameter("startdan");
	String strEnddan = request.getParameter("enddan");
	
	int iStartDan = Integer.parseInt( strStartdan );
	int iEnddan = Integer.parseInt( strEnddan );
	
	StringBuilder sbHtml = new StringBuilder();
	sbHtml.append("<table width='800' border='1'>");
	for( int i = iStartDan ; i<=iEnddan; i++){
		sbHtml.append("<tr>");
		for( int j=1; j<=9; j++){
			sbHtml.append("<td>"+ i + "X" + j + "=" + (i*j) + "</td>");	
		}
		sbHtml.append("</tr>");
	}
	sbHtml.append("</table>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=sbHtml.toString() %>

</body>
</html>