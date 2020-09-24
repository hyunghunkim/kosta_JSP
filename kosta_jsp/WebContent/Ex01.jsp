<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP First exam</h1>
	<h2>View와 로직 처리가 JSP에서 다 구현</h2>
	
	<%-- scriptlet --%>
	<%
	Calendar date = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	
	%>
	
	<%-- 표현식 --%>
	오늘은 <%= sdf.format(date.getTime()) %> 입니다.
</body>
</html>