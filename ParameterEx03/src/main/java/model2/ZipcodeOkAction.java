package model2;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model1.ZipcodeDAO;
import model1.ZipcodeTO;

public class ZipcodeOkAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("ZipcodeOkAction 호출");

		String strDong = request.getParameter( "dong" );
		//System.out.println( "strDong: " + strDong ); 확인하고 넘어가기
		
		// to / dao
		ZipcodeDAO dao = new ZipcodeDAO();
		ArrayList<ZipcodeTO> datas = dao.listZipcode(strDong);
		
		System.out.println("갯수 :" + datas.size() );
		
		request.setAttribute("datas", datas);
	}

}
