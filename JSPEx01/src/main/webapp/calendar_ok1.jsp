<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%
	request.setCharacterEncoding("utf-8");   
	String strYear = request.getParameter("year");
	String strMonth = request.getParameter("month");
	
	//System.out.println( strYear);
	//System.out.println( strMonth);
	
	// 설정 날짜
	int year = Integer.parseInt( strYear );
	int month = Integer.parseInt( strMonth ) ;
	
	// 현재날짜
	//Calendar nDay = Calendar.getInstance();
    
	//int year = nDay.get( Calendar.YEAR );
	//int month = nDay.get( Calendar.MONTH ) + 1;

	Calendar sDay = Calendar.getInstance();
	Calendar eDay = Calendar.getInstance();
     
	sDay.set( year, month-1, 1 );
	eDay.set( year, month, 1-1 );
     
	int startDayOfWeek = sDay.get( Calendar.DAY_OF_WEEK );
	int endDyaOfWeek = eDay.get( Calendar.DAY_OF_WEEK );
	int endDay = eDay.get( Calendar.DATE );
	
    StringBuilder sbHtml = new StringBuilder(); 
    
	sbHtml.append( "<table width='800' border='1'>" );
	sbHtml.append( "<tr>" );
	sbHtml.append( "<td colspan='7'>" + year + "년" + month + "월</td>" );
	sbHtml.append( "</tr>" );
	sbHtml.append( "<tr>" );
	sbHtml.append( "<td>SU</td><td>MO</td><td>TU</td><td>WE</td><td>TH</td><td>FR</td><td>SA</td>" );
	sbHtml.append( "</tr>" );
     
	sbHtml.append( "<tr>" );
	for( int i=1 ; i<startDayOfWeek ; i++ ) {
		sbHtml.append( "<td></td>" );
	}
     
	for( int i=1, n=startDayOfWeek ; i<=endDay ; i++, n++ ) {
		if( n % 7 == 1 ) sbHtml.append( "<tr>" );

		sbHtml.append( "<td>" + i + "</td>" );
          
		if( n % 7 == 0 ) sbHtml.append( "</tr>" );
	}
     
	for( int i=endDyaOfWeek ; i<=6 ; i++ ) {
		sbHtml.append( "<td></td>" );
	}
	
	sbHtml.append( "</tr>" );
	sbHtml.append( "</table>" );
%>	
		
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!--  calendar_ok1.jap -->	
<%=sbHtml.toString() %>
</body>
</html>