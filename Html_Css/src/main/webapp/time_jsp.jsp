<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Jsp: Web서버에서 실행되는 또다른 자바<br>
JSP(MVC Model1): Client요청(http://localhost/time_jsp.jsp)을 서버의 jsp가 받아서 
				처리한 후 html문서롤 browser에게 전달<br>
JSP(MVC Model2): Client요청)을 Servlet이 받아서 
				처리한 후 html문서롤 browser에게 전달<br>

<%
Calendar c = Calendar.getInstance();
int hour = c.get(Calendar.HOUR_OF_DAY);
int minute = c.get(Calendar.MINUTE);
int second = c.get(Calendar.SECOND);
System.out.println("서버의 시간을 콘솔 출력: "+hour+"/"+minute+"/"+second);
out.println("<br><br>");
out.println("Web출력: "+hour+"/"+minute+"/"+second+"<br>");
%>
Web에서 현재 시간은 <%=hour %>시 <%=minute %>분 <%=second %>초 입니다.

</body>
</html>