<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href='style.css' rel='stylesheet'>
</head>
<body>
	<center><strong>회원가입</strong></center>
	<form action="sessionSign_up" method="post">
	<div>
		<h3>아이디</h3>
		<span>
			<input type="text" id="id" maxlength="16">
		</span>
	</div>
	<div>
		<h3>비밀번호</h3>
		<span>
			<input type="password" id="pw" maxlength="20">
		</span>
	</div>
	<div>
		<h3>비밀번호 재확인</h3>
		<span>
			<input type="password" id="pw_check" maxlength="20">
		</span>
	</div>
	<div>
		<h3>이름</h3>
		<span>
			<input type="text" id="name" maxlength="10">
		</span>
	</div>
	<div>
		<h3>전화번호</h3>
		<span>
			<input type="text" id="p_number" maxlength="3" placeholder="앞 3자리">
			<input type="text" id="p_number" maxlength="4" placeholder="중간 3~4자리">
			<input type="text" id="p_number" maxlength="4" placeholder="끝 4자리">
		</span>
	</div>
	<div>
		<h3>성별</h3>
		<span>
			<select id="gender" class="sel">
				<option>성별</option>
				<option value="M">남자</option>
				<option value="F">여자</option>
			</select>
		</span>
	</div>
	<div>
		<h3>생년월일</h3>
		<span>
			<div id="birth_yy" style="float:left;">
				<span class="box">
					<input type="text" id"="yy" class="int" maxlength="4" placeholder="연도(4자리)">
				</span>
			</div>
			<div id="birth_mm">
				<span class="box">
					<select id="mm" class="sel">
						<option>월</option>
						<option value="01">1월</option>
						<option value="02">2월</option>
						<option value="03">3월</option>
						<option value="04">4월</option>
						<option value="05">5월</option>
						<option value="06">6월</option>
						<option value="07">7월</option>
						<option value="08">8월</option>
						<option value="09">9월</option>
						<option value="10">10월</option>
						<option value="11">11월</option>
						<option value="12">12월</option>
					</select>
				</span>
			</div>
			<div id="bir_dd">
				<span class="box">
					<input type="text" id="dd" class="int" maxlength="2" placeholder="일">
				</span>
			</div>
			
		</span>
	</div>
	<div>
	<span>
		<h3>본인확인용 이메일</h3>
		<span id="box int_email" style="float:left;">
			<input type="text" id="email" class="int" maxlength="50" placeholder="이메일을 입력하세요">
		</span>
	</span>
	</div>
	
	<span id="sel_email" style="float:left;" width=33%>
				<span class="box">
					<select id="mm" class="sel">
						<option>이메일 선택</option>
						<option value="01">naver.com</option>
						<option value="02">hanmail.net</option>
						<option value="03">nate.com</option>
						<option value="04">gmail.com</option>
						<option value="05">daum.net</option>
						
					</select>
				</span>
	</span>
	<br>
	<div style="display:inline">
		<h3>주소</h3>
		<span>
			<input type="text" id="address" maxlength="500">
		</span>
	</div>
	<br><br>
	<div style="float:left">
		<button type="button" id="join">
			<span type="submit" value="가입하기">가입하기</span>
		</button>
	</div>
	</form>
</body>
</html>