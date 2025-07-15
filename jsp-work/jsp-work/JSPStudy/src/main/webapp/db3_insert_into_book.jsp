<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! //static 한번만 실행
    		Connection connection = null;
    		PreparedStatement preparedStatement = null;
    		
    		final String URL = "jdbc:oracle:thin:@10.10.108.132:1521:XE";
    		final String ID = "c##madang";
    		final String PASSWORD = "madang";
    		final String INSERT_SQL = "INSERT INTO BOOK VALUES(?, ?, ?, ?)";    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOK 테이블에 데이터 추가하기</title>
</head>
<body>
<%
		request.setCharacterEncoding("UTF-8");
		final Integer BOOK_ID = Integer.valueOf(request.getParameter("book_id"));
		final String BOOK_NAME = request.getParameter("book_name");
		final String PUBLISHER = request.getParameter("publisher");
		final Integer PRICE = Integer.valueOf(request.getParameter("price"));

		try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				connection = DriverManager.getConnection(URL, ID, PASSWORD);
				preparedStatement = connection.prepareStatement(INSERT_SQL);
				preparedStatement.setInt(1, BOOK_ID);
				preparedStatement.setString(2, BOOK_NAME);
				preparedStatement.setString(3, PUBLISHER);
				preparedStatement.setInt(4, PRICE);
				preparedStatement.executeUpdate();
		} catch(Exception e) {
			out.println("Exception DB");
			e.printStackTrace();
		}finally {
			try {
				if (preparedStatement != null) preparedStatement.close();
				if (connection != null) connection.close();
			}catch(Exception e) {
				out.println("Exception close()");
			}
	}



%>
<h1>BOOK 테이블에 데이터 입력 성공</h1>
<a href="db1_select_book.jsp">BOOK 테이블 보기</a>
</body>
</html>