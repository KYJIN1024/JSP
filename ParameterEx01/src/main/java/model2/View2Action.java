package model2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class View2Action implements ViewAction  {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("View2Action 호출");
		
	}
	
}
