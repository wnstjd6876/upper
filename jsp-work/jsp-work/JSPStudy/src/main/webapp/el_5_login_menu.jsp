<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디와 패스워드를 읽어와서 출력하는 페이지</title>
</head>
<body>
		아이디 : <%= request.getParameter("id") %> <br/>
		패스워드 : <%= request.getParameter("password") %> <br/>
		<br/> <br/>
		<hr/>
		<br/> <br/>
		아이디 : ${param.id } <br/>
		패스워드 : ${param["password"] } <br/>
</body>
</html>