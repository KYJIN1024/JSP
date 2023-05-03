package model2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ViewAction {
	public abstract void execute( HttpServletRequest request, HttpServletResponse response);
}
