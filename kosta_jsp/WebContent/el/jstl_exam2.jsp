<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="fruit" value="${param.fruit }"></c:set>
	<!-- test엔 항상 el태그가 들어간 -->
	<c:if test="${fruit =='사과' }">
		<c:out value="${fruit }"/>
	</c:if>
	
	<c:choose>
		<c:when test="${fruit == '사과' }">
			<c:out value="apple"/>
		</c:when>
		<c:when test="${fruit == '바나나' }">
			<c:out value="banana"/>
		</c:when>
		<c:otherwise>
			<c:out value="기타과일"/>
		</c:otherwise>
	</c:choose>
	<br>
	<c:set var="now" value="<%=new Date() %>"/>
	
	before : ${now }<br><br>
	after : <fmt:formatDate value="${now }" pattern="yyyy-MM-dd"/>
	<br>
	<fmt:formatNumber value="3.1432432542" pattern="#.00"/><br>
	<fmt:formatNumber value="0.9" type="percent"/><br>
	<fmt:formatNumber value="5000000000000" type="currency" currencySymbol="$"/>
	

</body>
</html>













