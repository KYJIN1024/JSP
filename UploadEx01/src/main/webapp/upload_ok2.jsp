<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%

	//1. 업로드경로 - 절대경로 여야함
	//2. 업로드 제한 용량 - byte단위
	//3. 인코딩 
	
	String uploadPath = "D:/JAVA/JSP/UploadEx01/src/main/webapp/upload";
	int maxFileSize = 2 * 1024 * 1024;
	String encType = "utf-8";
	
	
	MultipartRequest multi = new MultipartRequest(request, uploadPath, maxFileSize, encType, new DefaultFileRenamePolicy());
	out.println("전송완료<br />");
	
	out.println("파일명 + " + multi.getFilesystemName("upload1") + "<br />");
	out.println("파일명 + " + multi.getOriginalFileName("upload1") + "<br />");
	
	out.println("파일명 + " + multi.getFilesystemName("upload2") + "<br />");
	out.println("파일명 + " + multi.getOriginalFileName("upload2") + "<br />");
	
	
	
%>