<%@page import="java.util.HashMap"%>
<%@page import="kosta.bean.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	before : <%= request.getParameter("fruit") %><br>
	after : ${param.fruit }<br><br>
	
	before : <%= request.getAttribute("name") %><br>
	after : ${name }<br><br>
	
	before : <%= ((Member)request.getAttribute("member")).getName() %><br>
	after : ${member.name }<br><br>
	
	before : <%= ((HashMap)request.getAttribute("baseball")).get("samsung") %><br>
	after : ${baseball.samsung }<br><br>
</body>
</html>