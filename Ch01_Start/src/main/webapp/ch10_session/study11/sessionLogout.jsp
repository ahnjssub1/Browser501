<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%
	session.removeAttribute("MemberId");
%> --%>
<%
    String id2 = request.getParameter("id2");
    String pw2 = request.getParameter("pw2");
    String id_attr =  (String)session.getAttribute("id");
    out.println("id2: "+id2+" : pw2: "+pw2);
	out.println("id_attr = "+id_attr);
	out.println("req = "+(String)request.getAttribute("req"));
	
	session.removeAttribute("id");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그아웃 되었습니다.<br>
<a href='sessionLogin.jsp'>로그인 페이지로 이동</a>
</body>
</html>