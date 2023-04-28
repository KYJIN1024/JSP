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

<%
	request.setCharacterEncoding("utf-8");
	
	String subject = request.getParameter("subject");
	String writer = request.getParameter("writer");
	
	
	String mail = "";
	if( !request.getParameter("mail1").equals("") 
			&& !request.getParameter("mail2").equals("")){
	 mail = request.getParameter("mail1") + "@" + request.getParameter("mail2");
	}
	
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	String wip = request.getRemoteAddr();
	/*
	System.out.println( subject );
	System.out.println( writer );
	System.out.println( mail );
	System.out.println( password );
	System.out.println( content );
	*/
	
	Connection conn = null;
	PreparedStatement pstmt = null; 
	
	
	try{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		
		DataSource dataSource = (DataSource)envCtx.lookup( "jdbc/mariadb3" );
		
		conn = dataSource.getConnection();
		
		String sql = "insert into board1(subject, writer, mail, password, content, wip) values(?, ?, ?, ?, ?, ?)";
		pstmt = conn.prepareStatement( sql );
		
		for( int i=0; i<=100 ; i++ ){
				pstmt.setString(1, "제목"+ i );
				pstmt.setString(2, "이름");
				pstmt.setString(3, "test@test.com");
				pstmt.setString(4, "1234");
				pstmt.setString(5, "내용"+ i);
				pstmt.setString(6, "000.000.000.000");
					pstmt.executeUpdate();
		}
		
	} catch( NamingException e ) {
		System.out.println( "[에러] " + e.getMessage() );
	} catch( SQLException e ) {
		System.out.println( "[에러] " + e.getMessage() );
	} finally {
		if( pstmt != null ) pstmt.close();
		if( conn != null ) conn.close();
	}
	
	out.println( "<script type='text/javascript'>" );
	out.println( "alert('글쓰기에 성공');" ); 
	out.println( "location.href='board_list1.jsp';" ); 
	out.println( "</script>" );
	
%>
	
	
	
	