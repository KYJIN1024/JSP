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
    request.setCharacterEncoding("utf-8");

    StringBuilder sbHtml = new StringBuilder();
    
    if( request.getParameter("dong") != null) {
        
        String strDong = request.getParameter("dong");
        
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
    
    
    try{
            Context initCtx = new InitialContext();
            Context envCtx = (Context)initCtx.lookup("java:comp/env");
            DataSource dataSource = (DataSource)envCtx.lookup("jdbc/mariadb2");
        
            conn = dataSource.getConnection();
            
            String sql = "select zipcode, sido, gugun, dong, ri, bunji from zipcode where dong like ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, strDong + "%");
            
            rs = pstmt.executeQuery();
            
            sbHtml.append("<table width='800' border='1'>");
            while(rs.next()){
            	sbHtml.append("<tr>");
                sbHtml.append("<td>"+ rs.getString("zipcode")+ "</td>");
                sbHtml.append("<td>"+ rs.getString("sido")+ "</td>");
                sbHtml.append("<td>"+ rs.getString("gugun")+ "</td>");
                sbHtml.append("<td>"+ rs.getString("dong")+ "</td>");
                sbHtml.append("<td>"+ rs.getString("ri")+ "</td>");
                sbHtml.append("<td>"+ rs.getString("bunji")+ "</td>");
                sbHtml.append("</tr>");
            }
            sbHtml.append("</table>");
        
        } catch(NamingException e ){
            System.out.println( " [에러] " + e.getMessage() );
        } catch(SQLException e){
            System.out.println( " [에러] " + e.getMessage() );
		}finally{
			if( rs != null) rs.close();
			if( pstmt != null) pstmt.close();
			if( conn != null) conn.close();
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
	 <form method="get" action="jdbc03.jsp"> <!-- 실제 JSP 파일 이름으로 교체하세요. -->
        <label for="dong">동 이름 검색:</label>
        <input type="text" id="dong" name="dong" required>
        <input type="submit" value="검색">
    </form>
    <%=sbHtml %>
</body>
</html>