<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>자기소개서 입력 폼</title>
</head>
<body>
    <h2>자기소개서 입력 폼</h2>

    <form style="width:300px" method="post" action="submit.jsp">
        <!-- 닉네임 입력 -->
        닉네임: <input type="text" name="nickname">
        <input type="button" value="중복검사"><br><br>

        <!-- 성별 선택 -->
        성별:
        <input type="radio" name="gender" value="male"> 남
        <input type="radio" name="gender" value="female"> 여<br><br>

        <!-- 게임 장르 선택 (복수 가능) -->
        게임 장르:
        <input type="checkbox" name="genre" value="rpg"> RPG
        <input type="checkbox" name="genre" value="fps"> FPS
        <input type="checkbox" name="genre" value="sports"> 스포츠<br><br>

        <!-- 혈액형 선택 -->
        혈액형:
        <select name="blood">
            <option value="A">A형</option>
            <option value="B">B형</option>
            <option value="O">O형</option>
            <option value="AB">AB형</option>
        </select><br><br>

        <!-- 자기소개 텍스트 영역 -->
        자기소개:<br>
        <textarea name="intro" cols="50" rows="5"></textarea><br><br>

        <!-- 버튼 -->
        <input type="submit" value="제출하기">
        <input type="reset" value="다시 작성">
    </form>
</body>
</html>