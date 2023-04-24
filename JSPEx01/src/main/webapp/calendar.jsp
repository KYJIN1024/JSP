<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById('btn').onclick = function() {
			//alert( '버튼 클릭' );
			if( document.frm.year.value.trim() == '' ){
				alert( '년도를 입력하셔야 합니다.');
				return;
			}
		
			if( document.frm.month.value.trim() == '' ){
				alert( '월을 입력하셔야 합니다.');
				return;
			}
			
			let month = parseInt(document.frm.month.value.trim());
			if(month <1 || month > 12) {
				alert( '올바른 월을 입력해주세요(1~12)');
				return;
			}
			
			
			document.frm.submit();
		};
	};
</script>
</head>
<body>
<!--  calendar.jap -->

<form action="calendar_ok1.jsp" method="post" name="frm">
년도 <input type="text" name="year" />
월 <input type="text" name="month" />
<input type="button" id="btn" value="달력보기" />
</form>




</body>
</html>