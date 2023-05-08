<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//logout_ok.jsp
	// Get cookies from the request	
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for( Cookie cookie : cookies){
			if(cookie.getName().equals("login_id")){
				cookie.setMaxAge(0);
				response.addCookie(cookie);
				break;
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
	<script type="text/javascript">
		alert('로그아웃 되었습니다.')
		location.href='login_form.jsp';
	</script>
</body>
</html>