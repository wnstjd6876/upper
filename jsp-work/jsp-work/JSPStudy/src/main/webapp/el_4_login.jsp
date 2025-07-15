<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인폼</title>
</head>
<body>
		<form method="get" action="el_5_login_menu.jsp">
			<label for="user_id">아이디</label>
			<input type="text" name="id" id="user_id"> <br/>
			<label for="user_password">패스워드</label>
			<input type="password" name="password" id="user_password"/> <br/>
			<input type="submit" value="로그인"/> <br/>
		</form>
</body>
</html>