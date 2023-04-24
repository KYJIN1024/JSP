<%@ page language="java"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body>
<%
	Calendar nDay = Calendar.getInstance();
    
	int year = nDay.get( Calendar.YEAR );
	int month = nDay.get( Calendar.MONTH ) + 1;

	Calendar sDay = Calendar.getInstance();
	Calendar eDay = Calendar.getInstance();
     
	sDay.set( year, month-1, 1 );
	eDay.set( year, month, 1-1 );
     
	int startDayOfWeek = sDay.get( Calendar.DAY_OF_WEEK );
	int endDyaOfWeek = eDay.get( Calendar.DAY_OF_WEEK );
	int endDay = eDay.get( Calendar.DATE );
     
	out.println( "<table width='800' border='1'>" );
	out.println( "<tr>" );
	out.println( "<td colspan='7'>" + year + "년" + month + "월</td>" );
	out.println( "</tr>" );
	out.println( "<tr>" );
	out.println( "<td>SU</td><td>MO</td><td>TU</td><td>WE</td><td>TH</td><td>FR</td><td>SA</td>" );
	out.println( "</tr>" );
     
	out.println( "<tr>" );
	for( int i=1 ; i<startDayOfWeek ; i++ ) {
		out.println( "<td></td>" );
	}
     
	for( int i=1, n=startDayOfWeek ; i<=endDay ; i++, n++ ) {
		if( n % 7 == 1 ) out.println( "<tr>" );

		out.println( "<td>" + i + "</td>" );
          
		if( n % 7 == 0 ) out.println( "</tr>" );
	}
     
	for( int i=endDyaOfWeek ; i<=6 ; i++ ) {
		out.println( "<td></td>" );
	}
	
	out.println( "</tr>" );
	out.println( "</table>" );
%>	
</body>
</html>