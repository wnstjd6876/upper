<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 형식의 유효성 검사</title>
<script type="text/javascript">
		var check_function = function checkFunction() {
				var f = document.loginForm;
				var name = f.name.value;
				var password = f.password.value;
				var regular_expressionName = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 문자는다
				var regular_xpressionPassword = /^[0-9]*$/;  // 0~9 공백없이
				if(!regular_expressionName.test(name)) {
						alert("닉네임은 숫자로 시작할 수 없습니다.")
						f.name.focus();
						return false;
				}
				if(!regular_expressionPassword.test(password)) {
						alert("비밀번호는 숫자만 됨.")
						f.password.focus();
						return false;
				}
				return true;
				
		}
</script>
</head>
<body>
<form name="loginForm" action="regular_expression_success.jsp" method="post" onsubmit="return check_function()">
		닉네임 : <br/>
		<input name="name" type="text" /> <br/>
		패스워드 : <br/>
		<input name="password" type="password" /> <br/>
		<input type="submit" value="신청하기"/> <br/>

</form>
</body>
</html>