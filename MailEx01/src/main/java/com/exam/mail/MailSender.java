package com.exam.mail;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSender {
	private String fromEmail;
	private String fromPassword;
	
	public MailSender(String fromEmail, String fromPassword) {
	    this.fromEmail = fromEmail;
	    this.fromPassword = fromPassword;
	}
	
	public void sendMail( String toEmail, String toName, String subject, String content) {
		
		try {
			// Google SMTP 서버에 대한 접속환경
			
			Properties props = new Properties();
			props.put( "mail.smtp.starttls.enable", "true" );
			props.put( "mail.transport.protocol", "smtp" );
			props.put( "mail.smtp.port", "465" );
			props.put( "mail.smtp.auth", "true" );
			props.put( "mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory" );
			props.put("mail.smtp.host", "smtp.gmail.com");
			
			// 인증 환경
			MyAuthenticator authenticator = new MyAuthenticator(fromEmail, fromPassword);
			
			Session session = Session.getInstance(props, authenticator);
			
			MimeMessage msg = new MimeMessage(session);
			msg.setHeader( "Content-type" , "text/html;charset=utf-8" );
			msg.addRecipient(Message.RecipientType.TO,
					new InternetAddress( toEmail, toName, "utf-8" ) );
			msg.setSubject( subject );
			msg.setContent( content, "text/html; charset=utf-8" );
			
			msg.setSentDate( new java.util.Date() );
			
			Transport.send( msg );
			
			System.out.println( "메일이 전송되었습니다" );
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}







