package model1;

public class BoardTO {
	private String subject;
	private String writer;
	
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		System.out.println("setsubject호출");
		this.subject = subject;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		System.out.println("setwriter호출");
		this.writer = writer;
	}
	

}
