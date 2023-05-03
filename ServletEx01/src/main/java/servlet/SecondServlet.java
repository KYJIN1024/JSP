package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SecondServlet extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	resp.setContentType( "text/html; charset=utf-8" );
	
	StringBuilder sbHtml = new StringBuilder();
	sbHtml.append( "<!doctype html>" );
	sbHtml.append( "<html>" );
	sbHtml.append( "<head>" );
	sbHtml.append( "<meta charset='utf-8'>" );
	sbHtml.append( "</head>" );
	sbHtml.append( "<body>" );
	sbHtml.append( "Hello Servlet" );
	sbHtml.append( "</body>" );
	sbHtml.append( "</html>" );
	
	PrintWriter out = resp.getWriter();
	out.println( sbHtml );
	out.close();
	
	
	
}
}
