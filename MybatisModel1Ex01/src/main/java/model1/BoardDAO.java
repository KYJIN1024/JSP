package model1;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardDAO {
	private SqlSession sqlSession;

	public BoardDAO() {
		
		String resource = "myBatisConfig.xml";

		InputStream is = null;
		
		try{
			is = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
			
			this.sqlSession = sqlSessionFactory.openSession(true);
			
		}catch(IOException e) {
			System.out.println("[에러]"+ e.getMessage());
		}finally{
			if( is != null ) try { is.close(); } catch( IOException e ) {};
	         
	        }
		}
		

	/*
	 write / write_ok  / list / view  / modify  / modify_ok  / delete  / delete_ok
	 */
	public void boardWrite() {
	}
	public int boardWriteOk(BoardTO to) {
		int flag = 1;
		
		int result = sqlSession.insert( "write_ok", to );
		if( result == 1 ) {
			flag = 0;
		}
		
		return flag;
	}
	public ArrayList<BoardTO> boardList() {
		ArrayList<BoardTO> datas = (ArrayList)sqlSession.selectList( "list" );
		
		if( sqlSession != null ) sqlSession.close();
		return datas;
	}
	
	public BoardTO boardView(BoardTO to) {
		
		sqlSession.update( "view_hit", to );
		
		to = sqlSession.selectOne( "view", to ); 
		return to;
	}
	
	public BoardTO boardModify(BoardTO to) { 
		return to;
	}
	
	public int boardModifyOk(BoardTO to) {
		int flag = 2;
		return flag;
	}
	
	public BoardTO boardDelete(BoardTO to) {
		return to;
	}
	
	public int boardDeleteOk(BoardTO to) {
	    int flag = 2;
	    return flag;
	}
} 



