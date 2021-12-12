<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="testBean" class="member.TestBean"></jsp:useBean>
 <jsp:setProperty property="name" name="testBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>자바빈을 사용하는 JSP페이지</h3><br><br>
입력된 이름은 <jsp:getProperty property="name" name="testBean"/>입니다.
</body>
</html>