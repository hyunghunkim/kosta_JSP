<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response.sendRedirect()</title>
</head>
<body>
	<form action="Ex05.jsp" method="post">
		숫자 1: <input type="text" name="num1"><br>
		숫자 2: <input type="text" name="num2"><br>
		<input type="submit" value="계산">
	</form>
	
	<%
	int num1 = 0;
	int num2 = 0;
	int sum = 0;
	
	if(request.getParameter("num1") != null) {
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
	}
	
	sum = num1 + num2;
	request.setAttribute("sum", sum);
	
	response.sendRedirect("result.jsp");
	%>
</body>
</html>