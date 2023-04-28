<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="1kb" autoFlush="true"%>
<%
	out.println("버퍼크기 : " + out.getBufferSize() + "<br />");     // 버퍼내용확인
	out.println("버퍼남은크기 : " + out.getRemaining() + "<br />");  // 크기 조정

	for( int i=1 ; i<100 ; i++  ){
		out.println( i + "Hello JSP<br />" );
		if( i % 20 == 0) {
			out.println("버퍼남은크기 : " + out.getRemaining() + "<br />");
		}
	}

%>