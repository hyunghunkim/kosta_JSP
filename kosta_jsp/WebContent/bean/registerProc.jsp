<%@page import="kosta.bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="member" class="kosta.bean.Member"></jsp:useBean>	<%-- Board 객체 생성 --%>

<%-- <jsp:setProperty>는 board.setTitle(request.getParameter("title")); 과 동일한 기능을 한다. --%>
<%-- property="*"를 사용하면 form에서 넘어오는 데이터가 몇 개든 한 번에 객체화 시킬 수 있는데, 이때 전제조건은 자바 객체의 멤버변수명과 form의 name 값이 같아야한다. --%>
<jsp:setProperty name="member" property="*" />


<%
	MemberDAO dao = MemberDAO.getInstance();
	int re = dao.insertMember(member);
	
	if(re == 1) {
		out.println("DAO 성공");
		/* response.sendRedirect("list.jsp"); */
	}
	else {
		out.println("DAO 실패");
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