<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//login_ok.jsp
		
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter( "id" );
	String password = request.getParameter( "password" );
	
	//데이터 베이스
	String save_id = "tester";
	String save_password = "123456";
	
	// 0: 성공  / 1: 비밀번호 오류 / 2:기타에러
	int flag = 2;
	
	if( save_id.equals( id ) && save_password.equals( password ) ) {
		flag = 0;
	} else {
		flag = 1;
	}
	
	out.println( "<script type='text/javascript'>");
	if( flag == 0 ){
		
		Cookie cookie1 = new Cookie( "login_id", id);
		Cookie cookie2 = new Cookie( "login_grade", "A" );
		
		response.addCookie( cookie1 );
		response.addCookie( cookie2 );
		
		out.println("alert('로그인 되었습니다');");
		out.println("location.href='login_complete.jsp';");
	} else if(flag == 1){
		out.println( "alert('비밀번호 오류');");
		out.println( "history.back();");
	} else if(flag == 2){
		out.println( "alert('기타오류');");
		out.println( "history.back();");
	}
	out.println("</script>");
	
%>