<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.IOException" %>    
<%@ page import="java.io.InputStream" %>    


<%@ page import="org.apache.ibatis.io.Resources" %>    
<%@ page import="org.apache.ibatis.session.SqlSession" %>    
<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>    
<%@ page import="org.apache.ibatis.session.SqlSessionFactoryBuilder" %>    

<%@ page import="java.util.List" %> 
<%@ page import="model1.EmpTO" %>  


<%
	String resource = "myBatisConfig.xml";

	InputStream is = null;
	SqlSession sqlSession = null;
	
	StringBuilder sbHtml = new StringBuilder();
	try{
		is = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory
		= new SqlSessionFactoryBuilder().build(is);
		
		sqlSession = sqlSessionFactory.openSession();
		
		List<EmpTO> lists = sqlSession.selectList("selectparaone2", "S%");
		
		for( EmpTO to : lists ) {
		sbHtml.append( "<table>" );
		sbHtml.append( "<tr>" );
		sbHtml.append( "<td>"+ to.getEmpno() + "</td>" );
		sbHtml.append( "<td>"+ to.getEname() + "</td>" );
		sbHtml.append( "<td>"+ to.getJob() + "</td>" );
		sbHtml.append( "</tr>" );
		}
		sbHtml.append( "</table>" );
		
		
	}catch(IOException e) {
		System.out.println("[에러]"+ e.getMessage());
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