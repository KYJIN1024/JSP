<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model1.BoardTO" %>  
<%@ page import="model1.BoardListTO" %>  
<%@ page import="java.util.ArrayList" %>  
<%
	BoardTO to1 = new BoardTO();
	to1.setSubject("제목1");
	to1.setSubject("작성자1");
	
	BoardTO to2 = new BoardTO();
	to1.setSubject("제목2");
	to1.setSubject("작성자2");
	
	BoardListTO listTO1 = new BoardListTO();
	listTO1.setCpage("1");
	listTO1.setBoardTO( to1 );
	
	BoardListTO listTO2 = new BoardListTO();
	listTO1.setCpage("2");
	listTO1.setBoardTO( to2 );
	
	ArrayList<BoardListTO> lists = new ArrayList();
	lists.add( listTO1 );
	lists.add( listTO2 );
	
	pageContext.setAttribute( "lists", lists );
	
	// => el 통해서 데이터에 접근
	
%>  
 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${ lists[0].cpage }<br />
${ lists[1].cpage }<br />

${ lists[0].boardTO.subject }<br />
${ lists[0].boardTO.writer }<br />


<!--  
	<c:forEach var="list" items="${lists}">
		<p>제목: ${list.boardTO.subject}</p>
		<p>작성자: ${list.boardTO.writer}</p>
		<p>페이지: ${list.cpage}</p>
		<hr>
	</c:forEach>
-->
</body>
</html>