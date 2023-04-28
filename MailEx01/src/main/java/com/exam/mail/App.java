package com.exam.mail;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
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
    }
}
