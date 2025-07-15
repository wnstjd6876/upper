<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOK 테이블에 데이터를 추가하기 위한 폼</title>
</head>
<body>
		<form action="db3_insert_into_book.jsp" method="post">
				
				
				<table>
							<tr>
									<td>BOOK ID</td>
									<td><input type="text" size="20" name="book_id"></td>
							</tr>
							<tr>
									<td>BOOK NAME</td>
									<td><input type="text" size="20" name="book_name"></td>
							</tr>
							<tr>
									<td>PUBLISHER</td>
									<td><input type="text" size="20" name="publisher"></td>
							</tr>
							<tr>
									<td>PRICE</td>
									<td><input type="text" size="20" name="price"></td>
							</tr>
							<tr>
										<td><input type="submit" size="10" value="전송"></td>
										<td><input type="submit" size="10" value="취소"></td>
							</tr>	
				</table>
		</form>
</body>
</html>