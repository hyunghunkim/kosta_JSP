<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kosta.bean.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String hello =  "Hello!!!";
	%>
	
	<c:set var="msg" value="Hello2"></c:set>
	<c:out value="${msg }"/><br>
	
	<!-- 구구단 4단 -->
	<ul>
		<c:forEach var="i" begin="1" end="9">
			<li>4*${i } = ${4*i }</li>
		</c:forEach>
	</ul>
	
	<%
		List<Member> list = new ArrayList<Member>();
		list.add(new Member("a","a"));
		list.add(new Member("b","b"));
		list.add(new Member("b","b"));
		
		request.setAttribute("list", list);
	%>
	
	<table border="1">
		<tr>
			<td>이름</td>
			<td>아이디</td>
		</tr>
		<c:forEach var="m" items="${list }">
		<tr>
			<td>${m.name }</td>
			<td>${m.id }</td>
		</tr>
		</c:forEach>
	</table>
	
	<c:redirect url="jstl_exam2.jsp">
		<c:param name="fruit" value="사과"/>
	</c:redirect>
	
</body>
</html>