<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>회원가입</title>

<script type="text/javascript">
	window.onload=function(){
		document.joinForm.id.focus();
	}
	
	function boardWriteCheck() {
		var form = document.joinForm;
		
		if (form.id.value == '' || form.id.value == null) {
			alert('아이디를 입력하세요.');
			form.id.focus();
			return false;
		}
		
		if (form.name.value == '' || form.name.value == null) {
			alert('이름을 입력하세요');
			form.name.focus();
			return false;
		}
		
		if (form.pwd.value == '' || form.pwd.value == null) {
			alert('비밀번호를 입력하세요');
			form.pwd.focus();
			return false;
		}
		
		if (form.date.value == '' || form.date.value == null) {
			alert('날짜를 입력하세요');
			form.tel.focus();
			return false;
		}
		
	
	}
	
</script>
</head>
<body>

	<form name="joinForm" action="join.jsp" method="post">
		<input type="hidden" name="joinState" value="I" /> 
		<br><br>
		<h1>회원가입</h1>
		<br><br>
		회원ID<input type="text" size="40" maxlength="10" name="id" id="id" onkeyup="spaceChk(this);" onchange="spaceChk" ><br>
		이름<input type="text" size="40" name="name" id="name" onkeyup="spaceChk(this);" onchange="spaceChk"><br>
		비밀번호<input type="password" size="40" name="pwd" id="pwd" onkeyup="spaceChk(this);" onchange="spaceChk"><br>
		날짜 <input type="date" name="date"><br>	
		<br><br>
	
		<input type="submit" value="등록">
		
	</form>
</body>
</html>