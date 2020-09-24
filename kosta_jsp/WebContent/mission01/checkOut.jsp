<%@page import="kosta.bean.Product"%>
<%@page import="javax.websocket.Session"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://jakarta.apache.org/taglibs/standard/permittedTaglibs" %>
    <%
    //List<String> list = (list)Session.getAttribute("productList");
    List<Product> list = (list)Session.getAttribute("productList");
    request.setAttribute("list",list);
    
    /* if(list==null){
    	out.println("선택한 상품이 없습니다.");
    }else{
    	for(int i=0;i<list.size();i++){
    		out.println(list.get(i) + "<br>");
    	}
    } */
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${list == null }">
		<b>선택한 상품이 없습니다.</b>
	</c:if>
	<c:if test="${list != null }">
		<ul>
		<% int total = 0; %>
		<c:forEach var="s" items="${list }">
		<li>${s.fruit }:${s.amount } = ${s.price*s.amount }원</li>
		<c:set var="total" value="${total + (s.price * s.amount) }"></c:set>
		</c:forEach>
		</ul>
		결과 : <c:out value="${total }"></c:out>
	</c:if>
</body>
</html>