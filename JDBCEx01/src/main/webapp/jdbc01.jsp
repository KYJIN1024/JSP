<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.SQLException" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String url = "jdbc:mysql://localhost:3306/sample";;
	String user = "root";
	String password = "123456";
	
	Connection conn = null;
	
	try{
		Class.forName( "org.mariadb.jdbc.Driver");
		out.println("드라이버 로딩 성공<br />");
		
		conn = DriverManager.getConnection(url, user, password);
		out.println("데이터베이스 연결 성공<br />");
	} catch(ClassNotFoundException e ){
		System.out.println( " [에러] " + e.getMessage() );
	} catch(SQLException e){
		System.out.println( " [에러] " + e.getMessage() );
	} finally {
		if( conn != null) conn.close();
	}
	
%>


</body>
</html>