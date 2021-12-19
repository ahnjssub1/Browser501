<%@page import="ch11_el.Thermometer267"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	Thermometer267 thermometer = new Thermometer267();
	request.setAttribute("t",thermometer);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${t.setCelsius('서울',27.3) }
서울 온도: 섭씨${t.getCelsius('서울') }도/ 화씨${t.getFahrenheit('서울') }<br/>
정보:${t.info}
</body>
</html>