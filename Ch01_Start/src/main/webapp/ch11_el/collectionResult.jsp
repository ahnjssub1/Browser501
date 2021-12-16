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
</body>
</html>