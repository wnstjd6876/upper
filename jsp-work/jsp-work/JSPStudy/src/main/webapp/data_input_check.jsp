<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 입력 유뮤 체크</title>
<script type="text/javascript">
		function check_func() {
			if(document.departmentForm.department.value=="") {
				aleart("신청할 전공 분야를 입력해주세요.");
				document.departmentForm.department.selector();
			}
		}
</script>		
</head>
<body>
		Home > 전공분야 신청
		<hr/>
		<form name="departmentForm">
				전공 :
				<input type="text" name="department" size= "30">
				<input type="submit" value="신청" onclick="check_func()">
			
			</form>
</body>
</html>