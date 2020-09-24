<%@page import="kosta.bean.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%! List<String> list = new ArrayList<String>(); %>
    
    <%
    	request.setCharacterEncoding("utf-8");
    	Product product = new Product();
    	product.setFruit(request.getParameter("fruit"));
    	product.setPrice(Integer.parseInt(request.getParameter("price")));
    	product.setAmount(Integer.parseInt(request.getParameter("amount")));
    	
    	//String product = request.getParameter("product");
    	
    	//List<String> list = (List)session.getAttribute("productList");
    	List<Product> list = (list)session.getAttribute("productList");
    	
    	if(list == null){
    		list = new ArrayList<String>();
    		session.setAttribute("productList",list);
    	}
    	list.add(product);
        	
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="javascript:history.back()">뒤로가기</a>
	<%=product %>
</body>
</html>