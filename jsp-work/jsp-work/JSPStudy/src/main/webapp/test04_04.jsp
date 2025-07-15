<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>댓글 입력 폼 작성</title>
</head>
<body>
    <h3>댓글 입력 폼 작성</h3>

    <form style="width:300px" method="post" action="submit.jsp">
        <fieldset>
            <legend>댓글 작성</legend>

            성명 : <input type="text" name="name"><br><br>
            비밀번호 : <input type="password" name="password"><br><br>

            <input type="checkbox" name="secret" value="yes"> 비밀글<br><br>

            <textarea name="comment" cols="50" rows="10"></textarea><br><br>

            <input type="submit" value="전송하기">
            <input type="reset" value="다시작성">
        </fieldset>
    </form>
</body>
</html>