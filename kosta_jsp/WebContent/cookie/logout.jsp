<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Cookie[] cookies = request.getCookies();
    String name = "";
    
    if(cookies !=null){
    	for(int i=0;i<cookies.length;i++){
    		if(cookies[i].getName().equals("name")){
    			cookies[i].setMaxAge(0);
    			response.addCookie(cookies[i]);
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>