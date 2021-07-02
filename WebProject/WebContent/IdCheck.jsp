<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdCheck</title>
</head>
<body>
<%
// post 전송 데이터 한글 처리
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");

// 기존 DB의 사용자 ID
String dbId = "qwer";
String dbId1 = "qwerty";
if (dbId.equals(id)||dbId1.equals(id)) {
	session.setAttribute("id", id);
	%>
	<script>alert("동일한 아이디가 있습니다.");
	window.history.go(-1);
	</script>
	<%
} else {
	%>
	<script>alert("사용 가능한 아이디입니다.");
	window.history.go(-2);
	</script>
	<% 
}
%>
</body>
</html></html>