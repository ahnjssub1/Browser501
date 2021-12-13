<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	Date time = new Date();
	SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");	
%>
</head>
<body>
<h3>Session 정보</h3>
Attribute id값: <%=request.getSession().getAttribute("id") %><br>
isNew(): <%=session.isNew() %><br><br>
세션ID: <%=session.getId() %><br><br>

한줄 요약:: <%=new java.util.Date(session.getCreationTime()).toString() %><br>
<% time.setTime(session.getCreationTime()); %>
세션생성시간: <%=formatter.format(time) %><br><br>

한줄 요약:: <%=new java.util.Date(session.getLastAccessedTime()).toString() %><br>
<% time.setTime(session.getLastAccessedTime()); %>
세션마지막접속시간: <%=formatter.format(time) %><br><br>

<a href="test3.jsp">세션 삭제하기</a>

</body>
</html>