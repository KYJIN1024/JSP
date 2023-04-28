<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.exam.mail.MyAuthenticator" %>
<%@ page import="com.exam.mail.MailSender" %>

<%
		MailSender mailSender = new MailSender("kyjj1024@gmail.com", "feyrvssgatyakvyp");
		
		String toEmail = "kyjj1024@gmail.com";
		String toName = "테스터";
		String subject = "ㅎㅇ";
		String content = "<html>"
				+ "<head>"
				+ "<meta charset='utf-8'/>"
				+ "</head>"
				+ "<body>"
				+ "<font color='blue'> 내용 텍스트</font>"
				+ "</body></html>";
		
		mailSender.sendMail(toEmail, toName, subject, content);

%>
	