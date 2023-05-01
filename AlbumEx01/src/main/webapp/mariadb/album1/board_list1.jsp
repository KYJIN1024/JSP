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
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int totalRecord = 0;
		
		StringBuilder sbHtml = new StringBuilder();
		
		try{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource dataSource = (DataSource)envCtx.lookup( "jdbc/mariadb3" );
		
		conn = dataSource.getConnection();
		
		String sql = "select seq, subject, writer, filesize, date_format(wdate, '%Y-%m-%d') wdate, hit, datediff(now(), wdate) wgap from album_board1 order by seq desc";
		pstmt = conn.prepareStatement( sql );
		
		rs = pstmt.executeQuery();
		
		rs.last();
		totalRecord = rs.getRow();
		rs.beforeFirst();
		
		while( rs.next() ){
			int id = rs.getInt("id");
			String title = rs.getString("title");
			String writer = rs.getString("writer");
			Date date = rs.getDate("date");
			int hit = rs.getInt("hit");
			String thumbnailUrl = rs.getString("thumbnail_url");
			
			sbHtml.append("<td width=\"20%\" class=\"last2\">")
			.append("<div class=\"board\">")
			.append("<table class=\"boardT\">")
			.append("<tr>")
			.append("<td class='boardThumbWrap'>")
			.append("<div class='boardThumb'>")
			.append("<a href=\"board_view1.jsp?id=").append(id).append("\"><img src=\"").append(thumbnailUrl).append("\" border=\"0\" width=\"100%\" /></a>")
			.append("</div>")
			.append("</td>")
			.append("</tr>")
			.append("<tr>")
			.append("<td>")
			.append("<div class='boardItem'>")
			.append("<strong>").append(title).append("</strong>")
			.append("<img src=\"../../images/icon_new.gif\" alt=\"NEW\">")
			.append("</div>")
			.append("</td>")
			.append("</tr>")
			.append("<tr>")
			.append("<td><div class='boardItem'><span class=\"bold_blue\">").append(writer).append("</span></div></td>")
			.append("</tr>")
			.append("<tr>")
			.append("<td><div class='boardItem'>").append(date).append(" <font>|</font> Hit ").append(hit).append("</div></td>")
			.append("</tr>")
			.append("</table>")
			.append("</div>")
			.append("</td>");
	}
	        if( filesize != 0){
	        	sbHtml.append( "<img src='../../images/icon_file.gif' />" );
	        }
	        sbHtml.append("</td>");
	        sbHtml.append("</tr>");	
			
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
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/board_list.css">
<style type="text/css">
<!--
	.board_pagetab { text-align: center; }
	.board_pagetab a { text-decoration: none; font: 12px verdana; color: #000; padding: 0 3px 0 3px; }
	.board_pagetab a:hover { text-decoration: underline; background-color:#f2f2f2; }
	.on a { font-weight: bold; }
-->
</style>
</head>

<body>
<!-- 상단 디자인 -->
<div class="contents1"> 
	<div class="con_title"> 
		<p style="margin: 0px; text-align: right">
			<img style="vertical-align: middle" alt="" src="../../images/home_icon.gif" /> &gt; 커뮤니티 &gt; <strong>여행지리뷰</strong>
		</p>
	</div> 
	<div class="contents_sub">	
		<div class="board_top">
			<div class="bold">
				<p>총 <span class="txt_orange">1</span>건</p>
			</div>
		</div>	
		
		<!--게시판-->
<table class="board_list">
    <tr>
        <%= sbHtml.toString() %>
    </tr>
</table>

		<!--//게시판-->			
  	</div>
</div>
<!--//하단 디자인 -->

</body>
</html>
