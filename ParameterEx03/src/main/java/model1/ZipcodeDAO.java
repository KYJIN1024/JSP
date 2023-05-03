package model1;

import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ZipcodeDAO {
	private DataSource dataSource;
	
	
	public ZipcodeDAO {
	try {
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup( "java:comp/env" );
		
		this.dataSource = (DataSource)envCtx.lookup( "jdbc/mariadb2" );
	} catch ( NamingException e ) {
		
		}
	}
	
	public ArrayList<ZipcodeTO> listZipcode(String strDong){
		
		ArrayList<ZipcodeTO> lists = new ArrayList<>();
		
		return datas;
	}
	
}
