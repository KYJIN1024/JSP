<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.naming.Context" %>	
<%@ page import="javax.naming.InitialContext" %>	
<%@ page import="javax.naming.NamingException" %>

<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Timestamp" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String subject = request.getParameter("subject");
	String writer = request.getParameter("writer");
	String mail = "";
	if( !request.getParameter("mail1").equals("")
			&& !request.getParameter("mail2").equals("")){
	mail = request.getParameter("mail") + "@" + request.getParameter("mail2");
	}
	
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	String wip = request.getRemoteAddr();
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource dataSource = (DataSource)envCtx.lookup( "jdbc/mariadb3" );
		
		conn = dataSource.getConnection();
		
		String sql = "insert into board1 values (0,?,?,?,?,?,0,?, now() );";
		pstmt = conn.prepareStatement( sql );
		pstmt.setString(1, subject);
		pstmt.setString(2, writer);
		pstmt.setString(3, mail);
		pstmt.setString(4, password);
		pstmt.setString(5, content);
		pstmt.setString(6, wip);
		
		int result = pstmt.executeUpdate();
		if( result == 1 ){
			System.out.println( "성공" );
		}else {
			System.out.println( "실패" );
		}
	} catch( NamingException e ){
		System.out.println("[에러]" + e.getMessage() );
	} catch( SQLException e ){
		System.out.println("[에러]" + e.getMessage() );
	} finally {
		
		if( pstmt != null ) pstmt.close();
		if( conn != null ) conn.close();
		
	}


%>




