<%@page import="kosta.bean.Board"%>
<%@page import="kosta.bean.BoardDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	int seq = 1;

	if(request.getParameter("seq") != null) {
		seq = Integer.parseInt(request.getParameter("seq"));		
		
	}

	BoardDAO2 dao = BoardDAO2.getInstance();
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
<a href="list.jsp">글목록</a>
	<table border="1">
		<tr>
			<td>글번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>내용</td>
			<td>작성일자</td>
			<td>조회수</td>
		</tr>
		<tr>
			<td>${board.seq }</td>
			<td>${board.title }</td>
			<td>${board.writer }</td>
			<td>${board.contents }</td>
			<td>
				<fmt:parseDate var="dt" value="${board.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/>
				<fmt:formatDate value="${dt }" pattern="yyyy/MM/dd"/>
			</td>
			<td>${board.hitcount }</td>
		</tr>
		
	</table>
	
	<a href="updateForm.jsp?seq=<%= board.getSeq() %>">글 수정</a>
	<a href="delete.jsp?seq=<%= board.getSeq() %>">글 삭제</a>
</body>