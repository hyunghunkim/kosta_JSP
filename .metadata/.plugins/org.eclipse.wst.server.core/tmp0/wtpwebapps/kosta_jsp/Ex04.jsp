<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request.getParameterValues()</title>
</head>
<body>
	<form action="Ex04.jsp" method="post">
		취미 : <input type="checkbox" name="hobby" value="야구">야구</input>
			<input type="checkbox" name="hobby" value="농구">농구</input>
			<input type="checkbox" name="hobby" value="축구">축구</input>
		<input type="submit" value="계산">
	</form>
	
	<%
	request.setCharacterEncoding("utf-8");	// 서버로부터 한글이 값으로 넘어올 때
	
	// request.getParameterValues() : 1개 이상의 값을 다룰 때 사용하며, String[]로 받아온다.
	if(request.getParameterValues("hobby") != null) {
		String[] hobby = request.getParameterValues("hobby");
	
		for(int i=0; i<hobby.length; i++) {
		out.print(hobby[i] + ",");

		}
	}
	
	%>
</body>
</html>