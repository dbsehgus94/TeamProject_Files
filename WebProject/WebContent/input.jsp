<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="alram.js"></script>
</head>
<body>

	<form method="get" action="InputServlet" name="frm">
	
		<b><u>아이디</u></b> : <input type="text" name="id"><br>
		나&nbsp;&nbsp;&nbsp;이 : <input type="text" name="age"><br>
		
		<input type="submit" value="전송" onclick="return check()">
	
	</form>

</body>
</html>