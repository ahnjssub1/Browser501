<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
(1)Array EL방식: 
${w[0] }
${w[1] }
${w[2] }<br>

<%
	out.println("request, 람다식");
	String[] str=(String[])request.getAttribute("w");
    for(String s: str)
		out.println(s+" ");
    out.println("<br>");
    
	out.println("request, for");
    String[] str2=(String[])request.getAttribute("w");
    for(int i=0; i<str2.length; i++)
		out.println(str2[i]+" ");
    out.println("<br>");
%>

Array::JSTL<hr>
<c:forEach var="i" items="${w}">
	${i }<br>
</c:forEach>
<hr>
//2. ArrayList 출력  <br>
${FRUITS[0]}<br>
${FRUITS[1]}<br>
${FRUITS[2]}<br>
<%
List<String> list = (List<String>)request.getAttribute("FRUITS");
for(int i=0; i<list.size(); i++)
	out.println(list.get(i)+" ");
out.println("<br>");
%>
ArrayList:: JSTL<hr>
<c:forEach var="i" items="${FRUITS}">
	${i }<br>
</c:forEach>

</body>
</html>