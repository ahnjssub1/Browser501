<%@page import="ch11_el.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//forward 쓴다는 것을 request에 저장 하겠다는 의미...

	String name = "홍길동";
	request.setAttribute("name", "홍길동"); //변수값 하나만 저장

	//member객체에 id, name에 값을 넣어 주고 속성에 저장하기
	//forward를 통한 전달
	Member m = new Member();
	m.setId("abcd");
	m.setName("홍길동");
	request.setAttribute("m", m); //주소값 저장
%>
<jsp:forward page="el_forward2.jsp" />


</body>
</html>