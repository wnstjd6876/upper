<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL(Expression Language)</title>
</head>
<body>
		${"Hello"} <br/> <!--  이름없는 객체 literal -->
		${"안녕하세요"} <br/> <!-- 이름없는 객체 literal -->
		<%="안녕하세요: Hello" %> <br/>
</body>
</html>