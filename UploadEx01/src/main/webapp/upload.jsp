<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./upload_ok.jsp" method="post" enctype="multipart/form-data" >
파일 <input type="file" name="upload1" />
<input type="submit" value= "파일업로드" />
</form>

<br /><hr /><br />

<form action="./upload_ok2.jsp" method="post" enctype="multipart/form-data" >
파일1 <input type="file" name="upload1" /><br /><br />
파일2 <input type="file" name="upload2" /><br /><br />
<input type="submit" value= "파일업로드" />
</form>

<br /><hr /><br />

<form action="./upload_ok3.jsp" method="post" enctype="multipart/form-data" >
파일 <input type="file" name="upload1" /><br /><br />
아이디 <input type="text" name="id" /><br /><br /> 
비밀번호 <input type="password" name="password" /><br /><br /> 
<input type="submit" value= "파일업로드" />
</form>

</body>
</html>