<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디<input type="text" id="id" name="id" value="id"><br>
암호<input type="text" id="pw" name="pw"><br>

<input type="checkbox" id="user" name="user" value="user">
<label for="user">사용자</label>
<input type="checkbox" id="manager" name="manager" value="manager">
<label for="manager">관리자</label><br>

<input type="submit" value="로그인">

<jsp:forward page="actionTest.jsp?">
	<jsp:param name="id" value="id" />
</jsp:forward>
</body>
</html>