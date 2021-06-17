<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<!__link href='../..css/join_style.css' rel='stylesheet'-->
</head>
<body>
	<div>
		<h3>아이디</h3>
		<span class="box int_id">
			<input type="text" id="id" class="int" maxlength="16">
		</span>
	</div>
	<div>
		<h3>비밀번호</h3>
		<span class="box int_pw">
			<input type="text" id="pw" class="int" maxlength="20">
		</span>
	</div>
	<div>
		<h3>비밀번호 재확인</h3>
		<span class="box int_pw_check">
			<input type="text" id="pw_check" class="int" maxlength="20">
		</span>
	</div>
	<div>
		<h3>이름</h3>
		<span class="box int_name">
			<input type="text" id="name" class="int" maxlength="10">
		</span>
	</div>
	<div>
		<h3>성별</h3>
		<span class="box int_gender">
			<select id="gender" class="sel">
				<option>성별</option>
				<option value="M">남자</option>
				<option value="F">여자</option>
			</select>
		</span>
	</div>
	<div>
		<h3>생년월일</h3>
		<span class="box int_birthday">
			<div id="birth_yy" style="float:left;" width=33%>
				<span class="box">
					<input type="text" id"="yy" class="int" maxlength="4" placeholder="연도">
				</span>
			</div>
			<div id="birth_mm" style="float:left;" width=33%>
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
		<h3>본인확인용 이메일</h3>
		<span class="box int_email">
			<input type="text" id="email" class="int" maxlength="50" placeholder="이메일을 입력하세요">
		</span>
	</div>
	<div id="sel_email" style="float:left;" width=33%>
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
			</div>
	<br>
	<div>
		<button type="button" id="join">
			<span>가입하기</span>
		</button>
	</div>
</body>
</html>