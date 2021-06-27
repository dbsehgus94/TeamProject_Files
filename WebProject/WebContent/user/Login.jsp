<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
<meta charset="UTF-8">
<title>Login Page</title>


</head>
<link rel="stylesheet" href="NewFile.css">
<body>
	<form name="log" action="sessionLoginPro.jsp" method="post">
		<!-- 전송할 페이지(서버) 지정 -->

		<table>

			<tr>
				<td colspan="3" align=center bgcolor=""><b> <font size=11>Login</font>
				</b></td>
			</tr>
		</table>

		<div
			style="width: 425px; height: 60px; margin-left: auto; margin-right: auto;">
			<table
				style="width: 265px; height: 60px; margin-top: 0px; margin-left: 60px; display:inline-block;">
				<tr>
					<td>아이디 :</td>
					<td><input type="text" name="id" maxlength="20"></td>
					<!-- 아이디 입력값 8자리 제한 -->
				</tr>
				<tr>
					<td>비밀번호 :</td>
					<td><input type="password" name="pw" maxlength="15"></td>
					<!-- 비밀번호 입력값 8자리 제한 -->
				</tr>
			</table>
			<input
				style="cursor: pointer; display: inline; float: right; width: 90px; height: 55px; margin-top: 0px;"
				class="btn" id="put1" type="submit" value="로그인">

		</div>
		<div style="margin-left:350px;">
			<br>
			<div class="btn1">
				비밀번호를 잊으셨습니까? <input style="color:blue; cursor: pointer;" id="put2"
					type="button" value="비밀번호 찾기"
					onclick="location.href='Find ID password.html'">
			</div>
			<!-- 회원 정보 찾기 type 추후 변경 예정 -->
			<div style="margin-left:90px;" class="btn2">

				<input style="cursor: pointer;" type="button" name=""
					value="Sign_up" onclick="location.href='Signup_Demo.jsp'">
			</div>
		</div>
	</form>

</body>

</html>
