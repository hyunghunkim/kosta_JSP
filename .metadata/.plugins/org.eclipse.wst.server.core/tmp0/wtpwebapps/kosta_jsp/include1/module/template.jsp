<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String body = request.getParameter("body");
    if(body==null){
    	body="../main.jsp";
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="logo.jsp"/>
	<hr>
	<jsp:include page="header.jsp"/>
	<hr>
	<jsp:include page="menu.jsp"/>
	<hr>
	<jsp:include page="<%=body %>"/>
	<jsp:include page="footer.jsp"/>
	<hr>
</body>
</html>