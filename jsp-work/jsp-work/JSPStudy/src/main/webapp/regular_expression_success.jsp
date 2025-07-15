<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 형식의 유효성 검사 성공</title>
</head>
<body>
HOME > 데이터 유효성 검사 완료
<hr/>
<%
		request.setCharacterEncoding("UTF-8");
		String nickName = request.getParameter("name");
		String password = request.getParameter("password");
%>
<h2>닉네임 : <%=nickName %></h2>
<h2>패스워드 : <%=password %></h2>

</body>
</html>