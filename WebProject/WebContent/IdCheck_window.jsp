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
			<!--onsubmit은 form 태그 안에서 form 전송을 하기 전에 유효성 검사를 하는 이벤트
		onsubmit="return false면 submit하지 않는다.
		this는 form 객체 내의 해당 객체를 전송하는 역할을 한다.
		  -->
			아이디 <input type="text" name="id" maxlength="12"
				pattern="[a-z0-9]{4,12}" autofocus> <input type="submit"
				value="중복확인">
			<!-- autofocus란 이 창이 뜨자마자 이 속성을 지정한 태그로 포커스가 자동으로 이동하게 해주는 태그-->
			<br>
			<h4>아이디는 소문자와 숫자를 사용하여 4자 이상 12자 이하로 작성해 주세요</h4>
		</form>
	</div>
	<script>
		function CheckID(f) {
			var id = f.id.value;
			id = id.trim();
			if (id.length < 4) {
				alert("아이디는 4자 이상 입력해주세요!");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>