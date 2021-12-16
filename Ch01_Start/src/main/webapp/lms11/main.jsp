<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty loginUser }">
    <jsp:forward page="login.jsp"></jsp:forward>
</c:if>    
<h2>main페이지</h2>
안녕하세요 ${loginUser.name }(${loginUser.userid })님 
</body>
</html>