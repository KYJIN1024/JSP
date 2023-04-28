<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./include/connection.jspf" %>

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
	
	
	
	// 0: 정상 / 1: 비정상
	int flag = 1;
	
	try{
		
		
		String sql = "insert into board1(subject, writer, mail, password, content, wip, hit, wdate) values(?, ?, ?, ?, ?, ?, 0, now())";
		pstmt = conn.prepareStatement( sql );
		pstmt.setString(1, subject);
		pstmt.setString(2, writer);
		pstmt.setString(3, mail);
		pstmt.setString(4, password);
		pstmt.setString(5, content);
		pstmt.setString(6, wip);
		
		int result = pstmt.executeUpdate();
		if( result == 1 ){
			//System.out.println( "성공" );
			flag = 0;
		} else {
			System.out.println( "실패" );
		}
	
	} catch( SQLException e ) {
		System.out.println( "[에러] " + e.getMessage() );
	} finally {
		
		if( pstmt != null ) pstmt.close();
		if( conn != null ) conn.close();
	}
	
	out.println( "<script type='text/javascript'>" );
	if( flag == 0 ){
		out.println( "alert('글쓰기에 성공');" ); 
		out.println( "location.href='board_list1.jsp';" ); 
			
	}else {
		out.println( "alert('글쓰기에 실패');" );
		out.println( "history.back();" );
	}
	out.println( "</script>" );
	
%>
	
	
	
	