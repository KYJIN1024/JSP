<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%
	request.setCharacterEncoding("utf-8");   
		
	StringBuilder sbHtml = new StringBuilder(); 

	if(request.getParameter("year") == null || request.getParameter("month") == null){
		//입력데이터가 없는 경우
	}else {	
		//입력데이터가 있는 경우
		String strYear = request.getParameter("year");
		String strMonth = request.getParameter("month");
		
		int year = Integer.parseInt( strYear );
		int month = Integer.parseInt( strMonth ) ;
	
		Calendar sDay = Calendar.getInstance();
		Calendar eDay = Calendar.getInstance();
	     
		sDay.set( year, month-1, 1 );
		eDay.set( year, month, 1-1 );
		eDay.add(Calendar.DATE, -1);
	
	     
		int startDayOfWeek = sDay.get( Calendar.DAY_OF_WEEK );
		int endDyaOfWeek = eDay.get( Calendar.DAY_OF_WEEK );
		int endDay = eDay.get( Calendar.DATE );
		
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
	     
		for( int i=endDyaOfWeek ; i<7 ; i++ ) {
			sbHtml.append( "<td></td>" );
		}
		
		sbHtml.append( "</tr>" );
		sbHtml.append( "</table>" );
	}
	
%>	
		
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!--  calendar_ok2.jap -->	
<form action="calendar_ok2.jsp" method="post">  <!-- post방식드롭다운메뉴 -->
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
<%=sbHtml.toString() %>
</body>
</html>