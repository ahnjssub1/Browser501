<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 #result{ 	border: 2px double blue; }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(document).ready(function() {
	$("#ok").click(function(){
		var result = "아이디:: "+$("#id").val()+"<br>";
		 result += "비밀번호:: "+$("#pw").val()+"<br>";
		 $("#result").html(result);
	});
});
</script>
</head>
<body>
	아이디<input type="text" size="40" maxlength="10" name="id" id="id"><br>
	비밀번호<input type="password" size="40" name="pw" id="pw"><br>
	<button id="ok">확인</button>

	<br><br>
	<p>결과</p>
	<div id="result"> 
	</div>
</body>
</html>