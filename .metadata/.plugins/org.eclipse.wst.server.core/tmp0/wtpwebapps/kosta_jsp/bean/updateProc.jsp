<%@page import="kosta.bean.BoardDAO2"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>    

<jsp:useBean id="board" class="kosta.bean.Board"></jsp:useBean>	<%-- Board 객체 생성 --%>
<jsp:setProperty name="board" property="*" />	<%-- form에서 넘어온 값을 board에 저장 --%>

<%
	BoardDAO2 dao = BoardDAO2.getInstance();
	int re = dao.updateBoard(board);
	
	if(re == 1) {
		response.sendRedirect("list.jsp");
	}
	else {
		out.println("DAO 실패");
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>