<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.sql.*"%>

<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String password = request.getParameter("pw");
String password_check = request.getParameter("pw_check");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String birthday = request.getParameter("birth");
String email = request.getParameter("email_1") + "@" + request.getParameter("email_2");
String phone = request.getParameter("phone_1") + "-" + request.getParameter("phone_2") + "-"
		+ request.getParameter("phone_3");
String address = request.getParameter("address_street") + " " + request.getParameter("address_detail");
String question = request.getParameter("question");
String answer = request.getParameter("answer");
String ent_name = request.getParameter("ent_name");
String ent_num = request.getParameter("ent_num_1") + request.getParameter("ent_num_2")
		+ request.getParameter("ent_num_3") + request.getParameter("ent_num_4");
String ent_phone = request.getParameter("ent_phone_1") + request.getParameter("ent_phone_2")
		+ request.getParameter("ent_phone_3");
String ent_address = request.getParameter("ent_address_street") + request.getParameter("ent_address_detail");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();

	pstmt = conn.prepareStatement("INSERT INTO CUST_INFO VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	pstmt.setString(1, id);
	pstmt.setString(2, password);
	pstmt.setString(3, password_check);
	pstmt.setString(4, name);
	pstmt.setString(5, gender);
	pstmt.setString(6, phone);
	pstmt.setString(7, email);
	pstmt.setString(8, address);
	pstmt.setString(9, birthday);
	pstmt.setString(10, question);
	pstmt.setString(11, answer);
	pstmt.setString(12, ent_name);
	pstmt.setString(13, ent_num);
	pstmt.setString(14, ent_phone);
	pstmt.setString(15, ent_address);
	int result=0;
	
	if ((password != password_check) && (password.length() < 8 && password_check.length() < 8)) {
		out.println("<script>");
		out.println("alert('비밀번호 조건을 확인해 주세요!')");
		out.println("window.history.go(-1)");
		out.println("</script>");

	}else{
		result = pstmt.executeUpdate();
		//반영된 레코드의 건수를 반환(모든 조건을 만족하여 DB에 저장되면 1, 아니면 0을 반환)
	}
	
	if(result!=0){
		out.println("<script>");
		out.println("location.href = 'Login.jsp'");
		out.println("</script>");
	}
	
} catch (Exception e) {
	e.printStackTrace();
	out.println("<script>");
	out.println("alert('회원가입 입력사항을 다시 확인해주세요!')");
	out.println("window.history.go(-1);");
	out.println("</script>");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>