<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    Cookie[] cookies = request.getCookies();
    String name = "";
    
    if(cookies !=null){
    	for(int i=0;i<cookies.length;i++){
    		if(cookies[i].getName().equals("name")){
    			name = URLDecoder.decode(cookies[i].getValue(),"utf-8");			
    		}else if(cookies.length == 1 && cookies[i].getName().equals("JSESSIONID")){
    			response.sendRedirect("loginForm.jsp");
    		}
    	}
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
	<b><%= name %></b>님 반갑습니다.
	<a href="logout.jsp">로그아웃</a>
</body>
</html>