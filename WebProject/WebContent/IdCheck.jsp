<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdCheck</title>
<script>
function checkIdClose(id){
	opener.join_proto.id.value=id;
	window.close();
	opener.join_proto.id.focus();
}
</script>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement("SELECT * FROM cust_info WHERE cust_id = ?");
		pstmt.setString(1,id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			if(id.equals(rs.getString("cust_id"))){
				out.println("<script>");
				out.println("alert('이미 존재하는 아이디입니다.')");
				out.println("window.history.go(-1)");
				out.println("</script>");
			}
		%>
		<%
		}
		else{
		%>
		<%=id %> 사용가능<br>
		<a href="IdCheck_window.jsp">다른 아이디 고르기</a><br><br>
		<input type="button" value="현재 아이디 선택" onClick="javascript:checkIdClose('<%=id%>')">
		<%
		}
		
	}catch(Exception e){
		out.println(e.getMessage());
		out.println("<script>");
		out.println("alert('오류')");
		out.println("window.history.go(-1)");
		out.println("</script>");
	}
%>

</body>
</html>