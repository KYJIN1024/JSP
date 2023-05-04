package model2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ModifyAction implements BoardAction {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "ModifyAction 호출" );
		
	}
}
