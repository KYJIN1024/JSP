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
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table { border: 1px solid black; font-size:15px; border-collapse: collapse; }
	td 	  { width: 800px; padding: 10px; text-align:center; border: 1px solid black;}
	#sidp { width: 100px; }
	#gugun{ width: 100px; }
</style>
<script type="text/javascript">
	window.onload = function(){
		documnet.getElementById( 'sido' ).onchange = function() {
			const sido = document.getElementByid('sido').value;
			//alert(sido);
			document.frm.submit();
		};
	};
</script>

</head>
<body>

<form action="NewFile.jsp" method="post" name="frm">
<table>
<tr>
	<td>
		<select name="sido" id="sido">
			<option value="시도">시도</option>
			<%=sbSido %>
		</select>
		<select name="gugun" id="gugun">
			<option value="구군"> 구군 </option>
			<%=sbGugun %>
		</select>
		<input type="text" name="dong" id="dong" size="40" />
		<input type="submit" value="우편번호검색기"/>
	</td>	
</tr>		

</table>

</form>


</body>
</html>