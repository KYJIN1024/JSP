package model2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormOkAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println( "FormOkAction 호출" );
		
		String data = request.getParameter( "data" );
		System.out.println("data:" + data );
		
		// Model -> View
		// request.getParameter() --- x
		
		// request 안에 임시 저장소(hashmap에 접근)
		request.setAttribute( "data" , data);
		String data2 = request.getParameter("data2");
		request.setAttribute( "data2" , data2);
	}	
		
	}
	
