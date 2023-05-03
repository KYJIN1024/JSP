package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model2.View1Action;
import model2.View2Action;
import model2.ViewAction;

@WebServlet("/controller")
public class ControllerEx01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)  {
		// TODO Auto-generated method stub
		
		try {
			request.setCharacterEncoding( "utf-8" );
			
			String action = request.getParameter( "action" );
			
			String url = "/WEB-INF/views/error.jsp";
			
			ViewAction model = null;
			
			if( action == null || action.equals( "" ) || action.equals("view1") ) {
				
				//model 호출
				model = new View1Action();
				model.execute(request, response);
				
				url = "/WEB-INF/views/view1.jsp";
			} else if ( action.equals("view2")) {
				
			
				model = new View2Action();
				model.execute(request, response);
				
				url = "/WEB-INF/views/view2.jsp";
				
			} else if (action.equals("form") || action.equals("form_ok")) {
				   url = "/WEB-INF/views/form.jsp";
				}
			RequestDispatcher dispatcher = request.getRequestDispatcher( url );
			dispatcher.forward(request, response);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			System.out.println("[에러]"+ e.getMessage());
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			System.out.println("[에러]"+ e.getMessage());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("[에러]"+ e.getMessage());
		}
	}
}
	
			