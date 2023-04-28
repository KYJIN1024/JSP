package com.exam.mail;



import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuthenticator extends Authenticator {
	//구글에 로그인 할수 있는 아이디
	private String fromEmail;
	// 구글에 로그인 할수 있는 비밀번호 (새롭게 생선된)
	private String fromPassword;
	
	public MyAuthenticator(String fromEmail, String fromPassword) {
		this.fromEmail = fromEmail;
		this.fromPassword = fromPassword;
	}

	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
	    return new PasswordAuthentication(fromEmail, fromPassword);
	}
}
