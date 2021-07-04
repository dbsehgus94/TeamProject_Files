<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdCheck_window</title>
</head>
<body>
	<div style="text-align: center">
		<form action="IdCheck.jsp" method="post"
			onsubmit="return CheckID(this)">
			아이디 <input type="text" name="id" maxlength="16" autofocus> <input
				type="submit" value="중복확인">
		</form>
	</div>
	<script>
		function CheckID(f) {
			var id = f.id.value;
			id = id.trim();
			if (id.length < 8) {
				alert("아이디는 8자 이상 입력해주세요!");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>