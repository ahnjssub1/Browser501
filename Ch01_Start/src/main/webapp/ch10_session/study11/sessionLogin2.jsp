<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	if(id.equals(pw)){
		session.setAttribute("MemberId", id);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 되었습니다.<br>
로그인 아이디: <%=id %><br>
<a href='sessionLogout.jsp'>로그아웃</a>
</body>
</html>