<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdCheck</title>
<script>
	function checkIdClose(id) {
		opener.join_proto.id.value = id;
		window.close();
		opener.join_proto.pw.focus();
	}
</script>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	//인코딩 요청
	String id = request.getParameter("id");
	//사용자가 입력한 데이터를 가져오기

	Connection conn = null;
	//데이터 베이스와 연결하는 객체
	PreparedStatement pstmt = null;
	//sql문 전송
	ResultSet rs = null;
	//실행 결과

	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		/*
		InitialContext()는 웹 에플리케이션이 처음으로 배치될때 설정되고
		모든 설정된 엔트리와 자원은 JDNI namespace의 java:comp/env 부분에 놓인다.
		- 접근방식
		현재 환경의 naming context 획득하고 DataSource 찾기
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		*/
		conn = ds.getConnection();
		//Connection 객체를 연결(커넥션을 얻어옴)

		pstmt = conn.prepareStatement("SELECT * FROM cust_info WHERE cust_id = ?");
		//prepareStatement를 통해 컴파일된 SQL문을 DBMS에 전달한다. 괄호 안에 실행시키고 싶은 sql문을 넣는다.
		pstmt.setString(1, id);
		//setter 메서드를 통해 ?자리의 값을 지정
		rs = pstmt.executeQuery();
		//조회 결과를 rs에 저장(true, false가 아닌 ResultSet 객체의 결과값을 담을 수 있음)

		if (rs.next()) {
			if (id.equals(rs.getString("cust_id"))) {
		out.println("<script>");
		out.println("alert('이미 존재하는 아이디입니다.')");
		out.println("window.history.go(-1)");
		out.println("</script>");
			}
		//rs.next() -> rs가 존재한다면
	%>
	<%
	} else {
	%>
	<div style="border: 1px solid blue; margin: auto; text-align: center;"><%=id%></div>
	<br>
	<div style="text-align: center;">사용 가능한 아이디입니다.</div>
	<br>
	<br>
	<div style="display:inline; float:left; margin-left:30px;">
	<input type="button" value="다른 아이디 검사"
		onClick="location.href='IdCheck_window.jsp';">
	</div>
	<div style="display:inline; float:right; margin-right:30px;">
	<input type="button" value="현재 아이디 선택"
		onClick="javascript:checkIdClose('<%=id%>')">
	</div>
	<%
	}

	} catch (Exception e) {
	out.println(e.getMessage());
	out.println("<script>");
	out.println("alert('오류')");
	out.println("window.history.go(-1)");
	out.println("</script>");
	}
	%>

</body>
</html>