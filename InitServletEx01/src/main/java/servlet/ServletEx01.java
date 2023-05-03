package servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletEx01 extends HttpServlet {
	private String id;
	private String password;
	
		  @Override
		  public void init() throws ServletException {
		  //public void init(ServletConfig config) throws ServletException {
			System.out.println("ServletEx01 init() 호출");
			
			id = getInitParameter( "id" );
			password = getInitParameter("password");
		}
		  @Override
			protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			  System.out.println("ServletEx01 service() 호출");
			  System.out.println("id : " + id);
			  System.out.println("password : " + password);
			}
		  
  
}
