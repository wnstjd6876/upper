<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4장 연습문제 6번-1</title>
<script type="text/javascript">
		var call_func = function check_function() {
				alert("추천도서 : " + document.grade_form.book.value + "\r\n" + 
						"평점 : " + document.grade_form.grade.value);
		};
</script>
</head>
<body>
		Home > 추천도서평점
		<form action="#" name="grade_form">
			추천도서 : <br/>
			<input type="text" name="book" size="30"/> <br/><br/>
			평점 : <br/>
			<input type="radio" name="grade" value="♥♥♥♥♥">♥♥♥♥♥<br/>
			<input type="radio" name="grade" value="♥♥♥♥♡">♥♥♥♥♡<br/>
			<input type="radio" name="grade" value="♥♥♥♡♡">♥♥♥♡♡<br/>
			<input type="radio" name="grade" value="♥♥♡♡♡">♥♥♡♡♡<br/>
			<input type="radio" name="grade" value="♥♡♡♡♡">♥♡♡♡♡<br/>
			
			<input type="submit" value="추천하기" onclick="call_func()"/> &nbsp;
			<input type="reset" value="다시작성"/>
		</form>
</body>
</html>