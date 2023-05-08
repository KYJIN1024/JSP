<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model1.BoardTO" %>    
<%@ page import="java.util.ArrayList" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	BoardTO to = new BoardTO();
	to.setSubject( "제목" );
	to.setWriter( "작성자" );
	
	BoardTO to1 = new BoardTO();
	to1.setSubject( "제목1" );
	to1.setWriter( "작성자1" );
	
	BoardTO to2 = new BoardTO();
	to2.setSubject( "제목2" );
	to2.setWriter( "작성자2" );
	
	//BoardTO[] lists = { to1, to2 };
	ArrayList<BoardTO> lists = new ArrayList();
	lists.add(to1);
	lists.add(to2);
	
	//pageContext.setAttribute( "to" , to );
	//request.setAttribute( "to" , to );
	request.setAttribute( "lists" , lists );	
%>
\${ to.subject }<br />
\${ to.writer }<br />

subject: ${ list[0].subject }<br />
subject: ${ list[1].subject }<br />
subject: ${ list[2].subject }<br />


</body>
</html>