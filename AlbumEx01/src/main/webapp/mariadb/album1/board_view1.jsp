<%@page import="org.mariadb.jdbc.export.Prepare"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>

<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>	
	
<% 
	request.setCharacterEncoding( "utf-8");
	
	String seq = request.getParameter("seq");
	//System.out.println( seq );
	
	String subject = "";
	String writer = "";
	String mail = "";
	String wip = "";
	String wdate = "";
	String hit = "";
	String content = "";
	String filename = "";
	long filesize = 0;
	String file = "";   // 첨부파일을 넣지않았을때 null대신 공백처리
	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource dataSource = (DataSource)envCtx.lookup( "jdbc/mariadb3" );
		
		conn = dataSource.getConnection();
		
		
		
		//조회수 증가
		String sql = "update album_board1 set hit=hit+1 where seq=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString( 1, seq );
		
		pstmt.executeUpdate();
		
		
		sql = "select subject, writer, mail, wip, wdate, hit, content, filename, filesize from album_board1 where seq=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString( 1, seq );
		
		rs = pstmt.executeQuery();
		
		if( rs.next() ){
			subject = rs.getString("subject");
			writer = rs.getString("writer");
			mail = rs.getString("mail");
			wip = rs.getString("wip");
			wdate = rs.getString("wdate");
			hit = rs.getString("hit");
			content = rs.getString("content").replaceAll("\n", "<br />" );
			filename = rs.getString("filename");
			filesize = rs.getLong("filesize");
			if( filesize != 0 ){
				file = "<a href='../../upload/" + filename + "'>" + filename + "</a>(" + filesize + "byte)";
			}
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
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/board_view.css">
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
	<!--게시판-->
		<div class="board_view">
			<table>
			<tr>
				<th width="10%">제목</th>
				<td width="60%">제주 올레길 좋아요(000.000.000.000)</td>
				<th width="10%">등록일</th>
				<td width="20%">2016.03.02 21:11</td>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td>여행자</td>
				<th>조회</th>
				<td>345</td>
			</tr>
			<tr>
				<th>첨부 파일</th>
				<td><%=file %></td>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<td colspan="4" height="200" valign="top" style="padding:20px; line-height:160%">
					<div id="bbs_file_wrap">
						<div>
							<img src="../../upload/607927_1.jpg" width="900" onerror="" /><br />
						</div>
					</div>
					시간이 되면 또 걷고 싶은 길이네요
				</td>
			</tr>			
			</table>
		</div>
		<div class="btn_area">
			<div class="align_left">			
				<input type="button" value="목록" class="btn_list btn_txt02" style="cursor: pointer;" onclick="location.href='board_list1.jsp'" />
			</div>
			<div class="align_right">
				<input type="button" value="수정" class="btn_list btn_txt02" style="cursor: pointer;" onclick="location.href='board_modify1.jsp?seq=<%=seq %>'" />
				<input type="button" value="삭제" class="btn_list btn_txt02" style="cursor: pointer;" onclick="location.href='board_delete1.jsp?seq=<%=seq %>'" />
				<input type="button" value="쓰기" class="btn_write btn_txt01" style="cursor: pointer;" onclick="location.href='board_write1.jsp'" />
			</div>	
		</div>
		<!--//게시판-->
		
		<!-- 이전글 / 다음글 -->
		<div class="next_data_area">
			<span class="b">다음글 | </span><a href="board_view1.jsp">다음글이 없습니다.</a>
		</div>
		<div class="prev_data_area">
			<span class="b">이전글 | </span><a href="board_view1.jsp">이전글이 없습니다.</a>
		</div>
		<!-- //이전글 / 다음글 -->
	</div>
<!-- 하단 디자인 -->
</div>

</body>
</html>
