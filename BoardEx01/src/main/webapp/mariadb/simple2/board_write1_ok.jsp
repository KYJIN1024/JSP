<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.naming.Context" %>	
<%@ page import="javax.naming.InitialContext" %>	
<%@ page import="javax.naming.NamingException" %>

<%@ page import="javax.sql.DataSource" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>

<%
	request.setCharacterEncoding("uft-8");

	String subject = request.getParameter("subject");
	String writer = request.getParameter("writer");
	String mail = "";
	if( request.getParameter("mail1").equals("")
		 && !request.getParameter("mail2").equals("")){
	mail = request.getParameter("mail1") + "@" + request.getParameter("mail2");
	}
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	String wip = request.getRemoteAddr();
	
	System.out.println( subject );
	System.out.println( writer );
	System.out.println( mail );
	System.out.println( password );
	System.out.println( content );
	
	


%>

