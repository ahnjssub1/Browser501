<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
document.form.id.focus();

function check(){
	 
	    if(document.form.id.value.length == 0){
	        alert('아이디를 입력하세요');
	        form.id.focus();
	        return false;
	    }
	    if(document.form.pw.value.length == 0){
	        alert('암호를 입력하세요');
	        form.pw.focus();
	        return false;
	    }
	   return true;
}

</script>
</head>
<body>
<form action="join.do" id=form >
	아이디<input type="text" id="id" name="id"><br>
	암호<input type="text" id="pw" name="pw"><br>
	<input type="submit" value="로그인">
</form>
</body>
</html>