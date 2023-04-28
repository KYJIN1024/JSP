<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	out.println( "include.jsp<br />" );
	out.println( "data1 : " + request.getParameter( "data1" ) + "<br />");
	out.println( "data2 : " + request.getParameter( "data2" ) + "<br />");

%>