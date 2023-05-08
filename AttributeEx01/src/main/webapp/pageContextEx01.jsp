<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//pageContext.jsp
	String data1 = "값1";
	System.out.println(data1);
	
	
	pageContext.setAttribute("data2", "값2");
	// Object getAttribute(String name)
	System.out.println((String)pageContext.getAttribute("data2"));

	pageContext.setAttribute("data3", new java.util.Date() );
	java.util.Date date = (java.util.Date)pageContext.getAttribute("data3");
	System.out.println( date.toLocaleString());
	
	// wrapper
	pageContext.setAttribute( "data4", 1 );
	pageContext.setAttribute( "data5", Integer.valueOf(1) );
	
	Integer i = (Integer)pageContext.getAttribute( "data5" );
	System.out.println( i.intValue());
	
	int i2 = (Integer)pageContext.getAttribute( "data5" );
	System.out.println( i2 );


%>