<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	request.setCharacterEncoding("utf-8");
	
	int num1 = 0;
	int num2 = 0;
	if(request.getParameter("num1")!=null){
	num1 = Integer.parseInt(request.getParameter("num1"));
	num2 = Integer.parseInt(request.getParameter("num2"));
	}
	if(request.getParameterValues("hobby")!=null){
		String hobby[] = request.getParameterValues("hobby");
		for(int i=0;i<hobby.length;i++){
		out.print(hobby[i]+",");
		}
	}
	
	int result = num1 + num2;
	request.setAttribute("result", result);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="form_exam.jsp" method="post">
		숫자 1: <input type="text" name="num1"><br>
		숫자 2: <input type="text" name="num2"><br>
		취미 : <input type="checkbox" name="hobby"value="야구">야구</input>
		취미 : <input type="checkbox" name="hobby"value="basket">농구</input>
		취미 : <input type="checkbox" name="hobby"value="soccer">축구</input>
		<input type="submit" value="계산">
	</form>
	결과1 : <%=result %>
	결과2 : ${result }
</body>
</html>