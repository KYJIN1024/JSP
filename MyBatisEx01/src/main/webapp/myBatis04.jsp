<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.IOException" %>    
<%@ page import="java.io.InputStream" %>    


<%@ page import="org.apache.ibatis.io.Resources" %>    
<%@ page import="org.apache.ibatis.session.SqlSession" %>    
<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>    
<%@ page import="org.apache.ibatis.session.SqlSessionFactoryBuilder" %>    
   
<%@ page import="model1.DeptTO" %>

<%
	String resource = "myBatisConfig.xml";

	InputStream is = null;
	SqlSession sqlSession = null;
	
	StringBuilder sbHtml = new StringBuilder();
	try{
		is = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory
		= new SqlSessionFactoryBuilder().build(is);
		
		//true - auto commit
		sqlSession = sqlSessionFactory.openSession();
		
		DeptTO to = new DeptTO();
		to.setDeptno("90");
		to.setDname("총무부");
		to.setLoc("서울");
		
		int result = sqlSession.insert("insert1",to);
		if( result == 1 ){
			//sqlSession.commit();
			sbHtml.append("입력성공:" + result );
		}
		
		
			
	}catch(IOException e) {
		System.out.println("에러"+ e.getMessage());
	}finally{
		if( sqlSession != null) sqlSession.close();
		try {
            if( is != null ) is.close();
        } catch (IOException e) {
            e.printStackTrace();
         
        }
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=sbHtml %>
</body>
</html>