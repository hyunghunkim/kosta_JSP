<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String path = "/message/notice.txt";
	String fullPath = application.getRealPath(path);	// application.getRealPath() : 전체 경로를 확인

	//out.println(fullPath);
	
	try {
		BufferedReader br = new BufferedReader(new FileReader(fullPath));
		String str = "";
		
		while((str = br.readLine()) != null) {
			out.println(str + "<br>");
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장 객체</title>
</head>
<body>

</body>
</html>