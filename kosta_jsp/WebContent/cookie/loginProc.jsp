<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String m_id = "kosta";
    String m_pass = "1234";
    
    String id = request.getParameter("id");
    String pass = request.getParameter("pass");
    
    String m_name = "홍길동";
    String name = URLEncoder.encode(m_name,"utf-8");
    
    if(id.equals(m_id) && pass.equals(m_pass)){
    	Cookie cookie = new Cookie("name",name);
    	response.addCookie(cookie);
    }else{
    	response.sendRedirect("loginForm.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<a href="main.jsp">메인페이지 이동</a>
</body>
</html>