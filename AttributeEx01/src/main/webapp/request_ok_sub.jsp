<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
%>    
    
    
Hello request_ok_sub.jsp<br/>

data2 : <%=request.getParameter("data2") %> <br />
data2 : <%=request.getAttribute("data2") %> <br />

data3 : <%=request.getAttribute("data3") %> <br />