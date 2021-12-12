<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="testBean" class="member.TestBean"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>이름을 입력하세요.</h3><br><br>
<form action="beanTestPro.jsp" method="post">
이름:<input type="text" name="name"><br>
<input type="submit" value="입력완료">
</form>
</body>
</html>