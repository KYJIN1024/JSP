package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//System.out.println( "Hello Servlet!" );
		
		resp.setContentType( "text/html; charset=utf-8" );
		
		PrintWriter out = resp.getWriter();
		out.println( "<!doctype html>");
		out.println( "<html>");
		out.println( "<head>");
		out.println( "<meta charset='utf-8'>");
		out.println( "</head>");
		out.println( "<body>");
		out.println( "Hello Servlet");
		out.println( "</body>");
		out.println( "</html>");
		
		out.close();
		
	}
}
