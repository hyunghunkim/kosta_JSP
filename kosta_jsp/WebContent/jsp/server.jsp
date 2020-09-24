<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	int result = num1 + num2;
	request.setAttribute("result", result);
	
	response.sendRedirect("result.jsp");
	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	결과1 : <b><%= result %></b>
	결과2 : <b>${result}</b>
</body>
</html>