<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연산자 사용하기</title>
</head>
<body>
		\${5+2} = ${5+2} <br/>
		
		\${5/2} = ${5/2} <br/>
		\${5 div 2} = ${5 div 2} <br/>
		
		\${5%2} = ${5%2} <br/>
		\${5 mod 2} = ${5 mod 2} <br/>
		
		\${5 > 2} = ${5 > 2} <br/>
		\${5 gt 2} = ${5 gt 2} <br/>
		
		\${5 > 2 ? 5 : 2 } = ${5 > 2 ? 5: 2 } <br/>
		
		\${ (5 > 2) || (2 < 10) } = ${ (5 > 2) || (2 < 10) } <br/>
		
		<%
			String input_data = null;
		%>
		\${empty input_data } = {empty input_data} <br/>
		
</body>
</html>