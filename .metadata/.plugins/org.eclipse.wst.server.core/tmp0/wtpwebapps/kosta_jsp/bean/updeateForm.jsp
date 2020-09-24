<%@page import="kosta.bean.BoardDAO"%>
<%@page import="kosta.bean.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String n = request.getParameter("seq");
	int seq = 1;
	if(n != null){
		seq = Integer.parseInt(n);
	}
	
	BoardDAO dao = BoardDAO.getInstance();
	Board board = dao.detailBoard(seq);
	
	request.setAttribute("board", board);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>글수정폼</h3>
	<form action="updateProc.jsp" method="post">
		<input type="hidden" name="seq" value="${board.seq }">
		작성자 : <input type="text" name="writer" value="${board.writer }"><br>
		제목 : <input type="text" name="title" value="${baord.title }"><br>
		내용 <br>
		<textarea rows="6" cols="70" name="contents">${board.contents }</textarea>
		<br>
		<input type="submit" value="수정">
	</form>
</body>
</html>








