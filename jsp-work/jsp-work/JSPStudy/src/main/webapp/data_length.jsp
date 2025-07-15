<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 길이 체크</title>
<script type="text/javascript">
function check_fun() {
		var valid = document.loginForm;
		if(valid.id.value.length < 4 or valid.id.value.length > 16) {
				alert("아이디는 4 ~ 16 이내로 입력")
				valid.id.focus();
				return false;
		} else if (valid.password.value.length < 8) {
				alert("비밀번호는 8자 이상 입력")
				valid.password.focus();
				return false;
		} 
		else return true;
}
</script>
</head>
<body>
	Home > 아이디와 비밀번호 입력
	<hr/>
		<form action="data_length_success.jsp" method="post" onsubmit="return check_fun()">
		아이디 : <br/>
		<input type="text" name="id"> <br/> <br/>
		비밀번호 : <br/>
		<input type="password" name="password"/> <br/> <br/>
		<input type="submit" value="로그인"/>
		</form>
</body>
</html>