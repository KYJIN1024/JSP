<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.naming.Context" %>   
<%@ page import="javax.naming.InitialContext" %>    
<%@ page import="javax.naming.NamingException" %>    

<%@ page import="javax.sql.DataSource" %> 
   
<%@ page import="java.sql.Connection" %>    
<%@ page import="java.sql.SQLException" %>    
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.ResultSet" %>   

<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try{
			Context initCtx = new InitialContext();
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			DataSource dataSource = (DataSource)envCtx.lookup("jdbc/mariadb1");
		
			conn = dataSource.getConnection();
			
			String sql ="select * from dept";
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while( rs.next() ){
				System.out.println( rs.getString("deptno") );
			}
			
		}catch(NamingException e){
			System.out.println( " [에러] " + e.getMessage() );
		}catch( SQLException e){
			System.out.println( " [에러] " + e.getMessage() );
		}finally{
			if( rs != null) rs.close();
			if( pstmt != null) pstmt.close();
			if( conn != null) conn.close();
		}
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>