<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력데이터의 길이 체크 완료</title>
</head>
<body>
HOME > 아이디 비밀번호 입력 성공
<hr/>
<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		out.println(id);
		out.println(password);
%>
<div>
		<p>아이디: <%= id %> </p>
		<p>패스워드: <%= password%>  </p>
</div>
</body>
</html>