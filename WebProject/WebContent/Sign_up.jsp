<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>회원가입</title>

<style>
#area {
	width: 700px;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

table {
	border: 3px solid black;
	margin-left: auto;
	margin-right: auto;
}

td {
	border: 1px solid #98B4D4
}

#title {
	background-color: #98B4D4
}

#divClock {
	font-size: 30px;
	color: #81bcf3;
}

#divClock1 {
	font-size: 30px;
	color: #81bcf3;
}
</style>
<script type="text/javascript">
	function showClock() {
		var currentDate = new Date();
		var divClock = document.getElementById('divClock');
		var divClock1 = document.getElementById('divClock1');
		var msg = "";
		var msg1 = "";
		msg1 += currentDate.getFullYear() + "/";
		msg1 += currentDate.getMonth() + 1 + "/";
		if (currentDate.getMonth() >= 12) {
			msg1 += currentDate.getMonth() - 11 + "/";
		}
		msg1 += currentDate.getDate() + " ";
		msg += currentDate.getHours() + ":";
		msg += currentDate.getMinutes() + ":";
		msg += currentDate.getSeconds() + "";

		divClock.innerText = msg;
		divClock1.innerText = msg1;

		if (currentDate.getMinutes() > 58) {
			divClock.style.color = "red";
		}
		if (currentDate.getMinutes() == 00) {
			divClock.style.color = "#81bcf3";
		}

		setTimeout(showClock, 1000); //1초마다 갱신
	}
</script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function show_hide_enter_option() {
		$("#entTable").hide();
		$("#chkEntCus").click(function show_hide_ente_option() {
			if ($(this).is(":checked")) {
				$("#entTable").show();
			} else {
				$("#entTable").hide();
			}
		});
	});
</script>
<script>
	function test_id() {
		alert("사용 가능한 아이디입니다.");
	}
</script>
<script>
	function test() {
		alert("회원가입 완료!!");
	}
</script>
</head>
<body onload="showClock()" style="display: inline">
	<div id="divClock" class="clock"
		style="float: right; width: 13%; border: 0px solid red; display: inline">
	</div>

	<center style="display: inline">
		<div id="divClock1" class="clock"
			style="float: right; width: 13%; border: 0px solid red; display: inline">
		</div>
	</center>
	<h1 style="display: inline">
		<a href="common_menu.jsp" style="text-decoration: none">
			<div style="display:inline; float:left; color: black; width: 15%; border: 0px solid red;"
				id="item">
				<font size=20 color="#e68bf8">HOME</font>
			</div>

		</a>
	</h1>
	<form style="border: 0px solid red;" action="Login.jsp" method="post">
		<div style="border: 0px solid red;" id="area">
			<br> <br> <b><font size="6" color="gray"><center>회원가입</center></font></b>
			<br> <br>
			<table style="border: 0px solid red;">
				<tr>
					<td id="title"><center>아이디</center></td>
					<td><input type="text" name="id" maxlength="16"> <input
						type="button" value="중복확인" onclick="test_id()"></td>
				</tr>

				<tr>
					<td id="title"><center>비밀번호</center></td>
					<td><input style="width: 50%" type="password" name="pw"
						maxlength="20"></td>
				</tr>

				<tr>
					<td id="title"><center>비밀번호 확인</center></td>
					<td><input style="width: 50%" type="password" name="pw_check"
						maxlength="20"> <!-- 비밀번호와 비밀번호 확인이 일치하지 않으면 경고문이 출력되고 맞게 입력했으면 경고문이 사라지거나
                        일치합니다 라는 문구가 출력되게 해야한다. --></td>
				</tr>

				<tr>
					<td id="title"><center>이름</center></td>
					<td><input type="text" name="name" maxlength="10"></td>
				</tr>

				<tr>
					<td id="title"><center>성별</center></td>
					<td><input type="radio" name="gender" value="남" checked>남
						<input type="radio" name="gender" value="여" checked>여</td>
				</tr>

				<tr>
					<td id="title"><center>생년월일</center></td>
					<td><input style="width: 20%" type="text" name="birth_yy"
						maxlength="4" placeholder="연도(4자리)" size="6"> <!-- 4자리를 입력하지 않으면 박스 오른쪽에 경고문이 출력되게 해야한다. -->
						<select style="width: 11%" name="birth_mm">
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
						size="4">
					</td>
				</tr>

				<tr>
					<td id="title"><center>이메일</center></td>
					<td><input style="width: 100px" type="text" name="email_1"
						maxlength="30">&nbsp;@&nbsp; <select name="email_2">
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
					</select> &nbsp;&nbsp;&nbsp; <input style="width: 90px; text-align: center;"
						type="text" name="phone_1" placeholder="앞 3자리" />&nbsp;-&nbsp; <input
						style="width: 115px; text-align: center;" type="text"
						name="phone_2" placeholder="중간 3~4자리" />&nbsp;-&nbsp; <input
						style="width: 140px; text-align: center;" type="text"
						name="phone_3" placeholder="뒤 4자리" /></td>
				</tr>
				<tr>
					<td id="title"><center>주소(도로명까지)</center></td>
					<td><input style="width: 100%" type="text" size="50"
						name="address" /></td>
				</tr>
				<tr>
					<td id="title"><center>상세주소</center></td>
					<td><input style="width: 100%" type="text" size="50"
						name="address" /></td>
				</tr>
				<tr>
					<td id="title"><center>회원정보 찾기 문답</center></td>
					<td><select style="width: 100%" name="question">
							<option value="">문제 선택</option>
							<option value="01">나의 보물 1호는?</option>
							<option value="02">가장 기억에 남는 선생님 성함은?</option>
							<option value="03">태어난 곳은?</option>
							<option value="04">가장 좋아하는 스포츠 팀은?</option>
							<option value="05">가장 기억에 남는 날짜는?</option>
							<option value="06">성인이 되고 나서 가장 먼저 취득한 자격증은?</option>
							<option value="07">자신의 장래희망은?</option>

					</select> <input style="width: 100%" type="text" name="answer"
						maxlength="100" placeholder="답변"></td>
				</tr>

			</table>

			<br> <br> <label for="chkEntCus"> <input
				type="checkbox" id="chkEntCus" style="text-align: center" /> <font
				size="5" color="gray"><strong> 사업자(기업) 회원이십니까?</strong></font>
			</label> <br> <br>
		</div>



		<div id="entTable">
			<div style="border: 0px solid red;" id="area">
				<br> <br>



				<table style="border: 0px solid red">
					<b><font size="6" color="gray"><center>기업 회원가입</center></font></b>
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
						<td><input style="width: 60px; text-align: center;"
							type="text" name="enter_num_1" maxlength="3"
							placeholder="청(서)(3)">&nbsp;-&nbsp; <input
							style="width: 90px; text-align: center;" type="text"
							name="enter_num_2" maxlength="2" placeholder="개인(법인)(2)">&nbsp;-&nbsp;
							<input style="width: 90px; text-align: center;" type="text"
							name="enter_num_3" maxlength="4" placeholder="일련번호(4)"> <input
							style="width: 50px; text-align: center;" type="text"
							name="enter_num_4" maxlength="1" placeholder="검증(1)"></td>
					</tr>

					<tr>
						<td id="title"><center>사업장 전화번호</center></td>
						<td><input style="width: 90px; text-align: center;"
							type="text" name="phone_1" placeholder="앞 2~3자리" />&nbsp;-&nbsp;
							<input style="width: 100px; text-align: center;" type="text"
							name="phone_2" placeholder="중간 3~4자리" />&nbsp;-&nbsp; <input
							style="width: 105px; text-align: center;" type="text"
							name="phone_3" placeholder="뒤 4자리" /></td>
					</tr>

					<tr>
						<td id="title"><center>사업장 주소(도로명까지)</center></td>
						<td><input style="width: 100%" type="text" name="name"
							maxlength="100"></td>
					</tr>
					<tr>
						<td id="title"><center>상세주소</center></td>
						<td><input style="width: 100%" type="text" name="name"
							maxlength="100"></td>
					</tr>
				</table>

			</div>
		</div>
		<br> <br>
		<center>
			<input
				style="border: 1px solid black; margin: 0 auto; width: 200px; height: 70px"
				type="submit" value="회원가입" onclick='test()'>
		</center>
		<br>
	</form>
</body>
</html>


