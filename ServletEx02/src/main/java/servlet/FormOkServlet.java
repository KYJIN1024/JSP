package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormOkServlet extends HttpServlet {
 @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	System.out.println("Hello FormOkServlet - doGet");
	System.out.println( req.getParameter( "data" ));
 }
 @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	req.setCharacterEncoding("utf-8");
	System.out.println("Hello FormOkServlet - doPost");
	System.out.println( req.getParameter( "data" ));	
	
	
 }
}
