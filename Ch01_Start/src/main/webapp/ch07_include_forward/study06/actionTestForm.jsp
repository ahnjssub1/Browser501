<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="actionTest_forwardTAG.jsp">
	아이디<input type="text" id="id" name="id"><br>
	암호<input type="text" id="pw" name="pw"><br>
	<input type="radio" name="account" value="user">사용자
	<input type="radio" name="account" value="manager">관리자<br>
	<input type="submit" value="로그인">
</form>
</body>
</html>