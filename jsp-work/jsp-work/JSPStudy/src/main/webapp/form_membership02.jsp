<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form을 통해서 입력파라미터 request 내장객체</title>
</head>
<body>
	Home > Personal Information
	<hr/>
	<%
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("p_id");
			String pw = request.getParameter("p_pw");
			String name = request.getParameter("p_name");
			String choice = request.getParameter("choice");
			String phone1 = request.getParameter("phone1");
			String phone2 = request.getParameter("phone2");
			String phone3 = request.getParameter("phone3");
			
			String gender = request.getParameter("gender");
			String[] hobbies = request.getParameterValues("hobby");
			String introduction = request.getParameter("Introduction");
	
	%>
	
	<p>아이디 :   <%= id%> </p> <!-- expression  -->
	<p>비밀번호 : <%= pw%> </p> <!-- expression  -->
	<p>이름 :  <%= name%> </p> <!-- expression  -->
	<p>연락처 :  <%= choice%> &nbsp; <%= phone1 %> &nbsp; <%= phone2 %> &nbsp; <%= phone3 %> </p> %> <!-- expression  -->
	<h3>성별 : <%= gender %></h3>
	<p>취미 :
	<%
			if(!hobbies.equals(null)) {
				for (String item : hobbies) {
						out.println(" " + item);
				}
			}
		
		%>
		</p>
		<p>본인소개 : <%= introduction %></p>
</body>
</html>