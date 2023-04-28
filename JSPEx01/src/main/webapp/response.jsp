<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		//redirect - 자동 이동
		
		//jsp 
		//response.sendRedirect("https://www.daum.net");
		
		//js
		out.println("<script type='text/javascript'>");
		out.println("alert('성공후 실행');");
		out.println("location.href='https://www.daum.net';");
		out.println("</scirpt>");

%>
