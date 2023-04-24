<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>

<%@ page import="javax.sql.DataSource" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<%	
	request. setCharacterEncoding("utf-8");

	String strSido = request.getParameter("sido");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	StringBuffer sbSido = new StringBuffer();
	
	try {
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup( "java:comp/env" );
		DataSource dataSource = (DataSource)envCtx.lookup( "jdbc/mariadb2" );
		
		conn = dataSource.getConnection();
	
		String sql = "select distinct sido from zipcode";
		
		pstmt = conn.prepareStatement( sql );
		
		rs = pstmt.executeQuery();
		
		while( rs.next() ) {
			sbSido.append( "<option value='" + rs.getString( "sido" ) + "'>" + rs.getString( "sido" ) + "</option>" );
		}
	} catch( NamingException e ) {
		System.out.println( "[에러] " + e.getMessage() );
	} catch( SQLException e ) {
		System.out.println( "[에러] " + e.getMessage() );
	} finally {
		if( rs != null ) rs.close();
		if( pstmt != null ) pstmt.close();
		if( conn != null ) conn.close();
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table	{ border: 1px solid black; font-size: 15px; border-collapse: collapse; }
	td		{ width: 800px; padding: 10px; text-align: center; border: 1px solid black; }
	#sido	{ width: 100px; }
	#gugun	{ width: 100px; }
</style>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById( 'sido' ).onchange = function() {
			const sido = document.getElementByid( 'sido' ).value;
			alert(sido);
		};
	};

</script>
</head>
<body>

<form action="" method="post">
<table>
<tr>
	<td>
		<select name="sido" id="sido">
			<option value="시도">시도</option>
			<%=sbSido %>
		</select>
		<select name="gugun" id="gugun">
			<option value="구군">구군</option>
		</select>
		<input type="text" name="dong" id="dong" size="40" />
		<input type="submit" value="우편번호검색" />
	</td>
</tr>
</table>
</form>

</body>
</html>




