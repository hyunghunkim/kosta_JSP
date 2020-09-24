<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String code = request.getParameter("page");
 %>  
 <jsp:forward page="<%= code %>"></jsp:forward> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
어떤 내용이 있어도 출력이 되지 않는다.
</body>
</html>