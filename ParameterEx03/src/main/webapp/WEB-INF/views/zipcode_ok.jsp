<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model1.ZipcodeTO" %>
<%@ page import="java.util.ArrayList" %>
<% 
	ArrayList<ZipcodeTO> datas = (ArrayList)request.getAttribute("datas");
	
	StringBuilder sbHtml = new StringBuilder();
	
	sbHtml.append("<table width='800' border='1'>");
	for( ZipcodeTO to : datas){
		sbHtml.append("<tr>");
		sbHtml.append("	<td>" + to.getZipcode() + "</td>");
		sbHtml.append("	<td>" + to.getSido() + "</td>");
		sbHtml.append("	<td>" + to.getGugun() + "</td>");
		sbHtml.append("	<td>" + to.getDong() + "</td>");
		sbHtml.append("	<td>" + to.getRi() + "</td>");
		sbHtml.append("	<td>" + to.getBunji() + "</td>");
		sbHtml.append("</tr>");
		}
		sbHtml.append("</table>");
		
		out.println( sbHtml );

%>
