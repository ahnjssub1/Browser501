<%@page import="ch11_el.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p.252</title>
</head>
<body>
<%
	Member m = new Member();
	m.setName("이름1");
%>
<c:set var="m" value="<%=m %>" /> 액션태그,,,set의 의미: 저장&집합 

</body>
</html>