<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	// Connection conn = DriverManager.getConnection(url, uid, pwd);
	// "jdbc:oracle:thin:[hostname][:port]:dbname"
	Connection conn = DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521:orcl", "ora_user", "yun");
	
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from employees");
	//stmt.executeUpdate("");
	//rs.next() : 현재 행에서 한 행 앞으로 이동
	//rs.previous() : 현재 행에서 한 행 뒤로 이동
	//rs.first() : 현재 행에서 첫 번째 행의 위치로 이동
	//rs.last() : 현재 행에서 마지막 행의 위치로 이동
	while (rs.next()) {
		out.print("<h6>" + rs.getString("employee_id") + "&nbsp&nbsp&nbsp" + rs.getString("salary") + "</h6>");
	}
	
	stmt.close();
	conn.close();
%>
</body>
</html>