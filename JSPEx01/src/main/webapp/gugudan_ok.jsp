<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String strStartdan = request.getParameter( "startdan" );
	String strEnddan = request.getParameter( "enddan" );
	
	int iStartDan = Integer.parseInt( strStartdan );
	int iEnddan = Integer.parseInt( strEnddan );
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 구구단 출력 --%>
<%
	out.println( "<table width='800' border='1'>");
	for( int i=iStartDan ; i<=iEnddan ; i++){
		out.println( "<tr>");
		for( int j=1; j<=9; j++){
			out.println( "<td>" + i + "X" + j + "=" + (i*j) +"</td>");
		}
		out.println( "</tr>");
	}
	out.println( "</table>");

%>	

	
	
	

</body>
</html>