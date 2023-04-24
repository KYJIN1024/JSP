<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.SQLException" %> 
<%@ page import="java.sql.PreparedStatement" %> 
<%@ page import="java.sql.ResultSet" %> 

<%
	String url = "jdbc:mysql://localhost:3306/sample";
	String user = "root";
	String password = "123456";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
    StringBuilder sbHtml = new StringBuilder();
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		
		conn = DriverManager.getConnection(url, user, password);
	
		
		String sql = "SELECT * FROM dept";

  
        pstmt = conn.prepareStatement(sql);
        

        rs = pstmt.executeQuery();

        sbHtml.append("<table width='800'>");
    
        while (rs.next()) {
        	sbHtml.append( "<tr>" );
        	sbHtml.append( "<td>" + rs.getString( "deptno" ) + "</td>" );
        	sbHtml.append( "<td>" + rs.getString( "dname" ) + "</td>" );
        	sbHtml.append( "<td>" + rs.getString( "loc" ) + "</td>" );
        	sbHtml.append( "</tr>" );
		
        }
        sbHtml.append("</table>");
		
	} catch(ClassNotFoundException e ){
		System.out.println( " [에러] " + e.getMessage() );
	} catch(SQLException e){
		System.out.println( " [에러] " + e.getMessage() );
	} finally {
        if( rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                System.out.println( " [에러] " + e.getMessage() );
            }
        }
        if( pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                System.out.println( " [에러] " + e.getMessage() );
            }
        }
        if( conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                System.out.println( " [에러] " + e.getMessage() );
            }
        }
    }
    
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=sbHtml %>

</body>
</html>