<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! //static 한번만 실행
    		Connection connection = null;
    		Statement statement = null;
    		ResultSet resultSet = null;
    		
    		final String URL = "jdbc:oracle:thin:@10.10.108.132:1521:XE";
    		final String ID = "c##madang";
    		final String PASSWORD = "madang";
    		final String SELECT_SQL = "SELECT * FROM BOOK";
    
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOK 테이블 내용 출력하기</title>
</head>
<body>
		<table width="1000" border="2">
				<tr>
						<th>BOOK ID</th>
						<th>BOOK NAME</th>
						<th>PUBLISHER</th>
						<th>PRICE</th>
			 </tr>
			 
<%
		try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				connection = DriverManager.getConnection(URL, ID, PASSWORD);
				statement = connection.createStatement();
				resultSet = statement.executeQuery(SELECT_SQL);
				while(resultSet.next()) {
					out.println("<tr>");
					out.println("<td>" + resultSet.getInt("BOOKID") + "</td>");
					out.println("<td>" + resultSet.getString("BOOKNAME") + "</td>");
					out.println("<td>" + resultSet.getString("PUBLISHER") + "</td>");
					out.println("<td>" + resultSet.getInt("PRICE") + "</td>");
					out.println("</tr>");
					
				}
		} catch(Exception e) {
			out.println("Exception DB");
			e.printStackTrace(); //콘솔에 어디서 오류가 났는지 보여줌		
			
		} finally {
				try{
						if (resultSet != null) resultSet.close();
						if (connection != null) connection.close();
					
				} catch(Exception e) {
					out.println("Exception close()");
					e.printStackTrace(); //콘솔에 어디서 오류가 났는지 보여줌
				}
			
			
		}
	




%>
		
		
		
		</table>

</body>
</html>