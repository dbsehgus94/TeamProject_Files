<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>회원가입</title>

<style>
</style>
<link rel="stylesheet" href="Sign_up.css">
<script src="Sign_up.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function show_hide_enter_option() {
		$("#entTable").hide();
		$("#chkEntCus").click(function show_hide_enter_option() {
			if ($(this).is(":checked")) {
				$("#entTable").show();
			} else {
				$("#entTable").hide();
			}
		});
	});
</script>


</head>
<body>
	<h1 style="display: inline">
		<a href="common_menu.jsp" style="text-decoration: none">
			<div id="logo">HOME</div>

		</a>
	</h1>
	<form action="Login.jsp" method="post">
		<div id="area">
			<br> <br> <b><div id="Sign_font">
					<center>회원가입</center>
				</div></b> <br> <br>
			<table>
				<tr>
					<td id="title"><center>아이디</center></td>
					<td><input type="text" name="id" maxlength="16"> <input
						type="button" value="중복확인" onclick="test_id()"></td>
				</tr>

				<tr>
					<td id="title"><center>비밀번호</center></td>
					<td><input id="pw" type="password" name="pw" maxlength="20"></td>
				</tr>

				<tr>
					<td id="title"><center>비밀번호 확인</center></td>
					<td><input id="pw_check" type="password" name="pw_check"
						maxlength="20"></td>
				</tr>

				<tr>
					<td id="title"><center>이름</center></td>
					<td><input type="text" name="name" maxlength="10"></td>
				</tr>

				<tr>
					<td id="title"><center>성별</center></td>
					<td><input type="radio" name="gender" value="male"
						checked="checked">남 <input type="radio" name="gender"
						value="female">여</td>
				</tr>

				<tr>
					<td id="title"><center>생년월일</center></td>
					<td><input id="birth_yy" type="text" name="birth_yy"
						maxlength="4" placeholder="연도(4자리)" size="6"> <select
						id="birth_mm" name="birth_mm">
							<option value="">월</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
					</select> <input type="text" name="birth_dd" maxlength="2" placeholder="일"
						size="4"></td>
				</tr>

				<tr>
					<td id="title"><center>이메일</center></td>
					<td><input id="email_front" type="text" name="email_front"
						maxlength="30">&nbsp;@&nbsp; <select name="email_back">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>
							<option>직접 입력</option>
					</select> <input type="text" name="email_direct" maxlength="20"
						placeholder="직접 입력 선택 시 입력"></td>
				</tr>

				<tr>
					<td id="title"><center>휴대전화</center></td>
					<td><select name="telecom">
							<option>SKT</option>
							<option>KT</option>
							<option>LGU+</option>
							<option>알뜰폰</option>
					</select> &nbsp;&nbsp;&nbsp; <input id="phone_left" type="text"
						name="phone_left" placeholder="앞 3자리" />&nbsp;-&nbsp; <input
						id="phone_center" type="text" name="phone_center"
						placeholder="중간 3~4자리" />&nbsp;-&nbsp; <input id="phone_right"
						type="text" name="phone_right" placeholder="뒤 4자리" /></td>
				</tr>
				<tr>
					<td id="title"><center>주소(도로명까지)</center></td>
					<td><input id="address" type="text" size="50" name="address" /></td>
				</tr>
				<tr>
					<td id="title"><center>상세주소</center></td>
					<td><input id="address" " type="text" size="50" name="address" /></td>
				</tr>
				<tr>
					<td id="title"><center>회원정보 찾기 문답</center></td>
					<td><select id="QnA" name="question">
							<option value="">문제 선택</option>
							<option value="01">나의 보물 1호는?</option>
							<option value="02">가장 기억에 남는 선생님 성함은?</option>
							<option value="03">태어난 곳은?</option>
							<option value="04">가장 좋아하는 스포츠 팀은?</option>
							<option value="05">가장 기억에 남는 날짜는?</option>
							<option value="06">성인이 되고 나서 가장 먼저 취득한 자격증은?</option>
							<option value="07">자신의 장래희망은?</option>

					</select> <input id="QnA" type="text" name="answer" maxlength="100"
						placeholder="답변"></td>
				</tr>

			</table>

			<br> <br> <label for="chkEntCus"> <input
				type="checkbox" id="chkEntCus" />
				<div id="Sign_font">
					<strong> 사업자(기업) 회원이십니까?</strong>
				</div>
			</label> <br> <br>
		</div>



		<div id="entTable">
			<div id="area">
				<br> <br>



				<table>
					<b><div id="Sign_font">
							<center>기업 회원가입</center>
						</div></b>
					<br>
					<br>
					<br>
					<tr>
						<td id="title"><center>대표명</center></td>
						<td><input type="text" name="enter_name" maxlength="20">
						</td>
					</tr>

					<tr>
						<td id="title"><center>사업자 등록번호</center></td>
						<td><input id="enter_num_1" type="text" name="enter_num_1"
							maxlength="3" placeholder="청(서)(3)">&nbsp;-&nbsp; <input
							id="enter_num_2" type="text" name="enter_num_2" maxlength="2"
							placeholder="개인(법인)(2)">&nbsp;-&nbsp; <input
							id="enter_num_3" type="text" name="enter_num_3" maxlength="4"
							placeholder="일련번호(4)"> <input id="enter_num_4"
							type="text" name="enter_num_4" maxlength="1" placeholder="검증(1)"></td>
					</tr>

					<tr>
						<td id="title"><center>사업장 전화번호</center></td>
						<td><input id="en_phone_left" type="text"
							name="en_phone_left" placeholder="앞 2~3자리" />&nbsp;-&nbsp; <input
							id="en_phone_center" type="text" name="en_phone_center"
							placeholder="중간 3~4자리" />&nbsp;-&nbsp; <input
							id="en_phone_right" type="text" name="en_phone_right"
							placeholder="뒤 4자리" /></td>
					</tr>

					<tr>
						<td id="title"><center>사업장 주소(도로명까지)</center></td>
						<td><input id="en_address" type="text" name="en_address"
							maxlength="100"></td>
					</tr>
					<tr>
						<td id="title"><center>상세주소</center></td>
						<td><input id="en_address" type="text" name="en_address"
							maxlength="100"></td>
					</tr>
				</table>

			</div>
		</div>
		<br> <br>
		<center>
			<input id="Sign_up_button" type="submit" value="회원가입"
				onclick='test()'>
		</center>
		<br>
	</form>

</body>
</html>


