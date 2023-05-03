package servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletEx02 extends HttpServlet {

		  @Override
		  public void init() throws ServletException {
		  //public void init(ServletConfig config) throws ServletException {
			System.out.println("ServletEx02 init() 호출");
			
		
		}
		  @Override
			protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			  System.out.println("ServletEx02 service() 호출");
			  
			}
		  
  
}
