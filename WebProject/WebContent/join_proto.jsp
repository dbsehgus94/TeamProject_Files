<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- %@는 지시자(page(import. session, contentType 등등), include 등)를 입력할 때 사용하는 기능이다.  -->
<!-- %는 jsp 페이지 안에서 java코드를 삽입할 때 사용하는 기능이다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- meta 태그의 charset 속성은 해당 HTML 문서의 문자 인코딩 방식을 명시하는 기능이다. 유니코드를 위한 문자셋인 UTF-8을 사용했다.-->
<title>IWPERSON 회원가입</title>
<link rel="stylesheet" href="join.css">
<!--rel은 relation의 약자로 현재 문서와 연결한 이이템의 관계에 대해 설명
stylesheer는 스타일 시트로써 이 문서를 불러오겠단 뜻이다.(.css) href는 연결할 문서를 설정해주는 기능이다.-->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!--자바스크립트를 쉽게 사용하기 위한 라이브러리인 jquery의 최신 버전을 이용하기 위한 코드  -->
<script type="text/javascript" src="join.js"></script>
<!--HTML에서 javascript를 로드하기 위한 코드  -->
<script>
	function IdCheck() {
		window.open("IdCheck_window.jsp", "IdCheck_window",
				"width=400, height=300");
	}
</script>
<!-- 버튼 클릭 시 새로운 window창이 열리게 하는 IdCheck 함수 선언 -->
</head>
<body>
	<div class="container">
		<!-- 부트스트랩에서 제공하는 기본 클래스 container(반응형으로 사용한 HTML 요소들을 둘러 싸는 쿨래스) -->
		<form name="join_form" class="login_form" action="joinProcess.jsp"
			method="post">
			<!-- 입력된 데이터를 한 번에 서버로 전송하기 위해 form 태그를 사용 
			method에서 get방식은 폼 데이터를 URL 끝에 붙여서 눈에 보이게 보냄(보안성 취약)
			post방식은 내부적으로 보이지 않게 함.(ex.localhost:8080/form.jsp)
			-->
			<div class="form_title" id="form_title">회원가입</div>
			<table id="table">
				<!-- 표를 만들어주는 태그 
			tr -> 테이블의 행을 만드는 태그
			td -> 테이블의 열을 만드는 태그
			-->
				<tr>
					<td id="title">아이디</td>
					<td><input type="text" id="id" name="id" maxlength="12"
						pattern="[a-z0-9]{4,12}"> <input type="button"
						value="중복확인" onclick="IdCheck()" /> <br> <font size="2px">아이디
							입력 전에 먼저 중복확인을 완료해주세요!</font></td>
				</tr>

				<tr>
					<td id="title">비밀번호</td>
					<td><input type="password" id="pw" name="pw" maxlength="16"
						pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()~?]).{8,16}$" /><br>
						<font size="2px">8~16자리(영어 대, 소문자, 숫자, 특수문자 4가지 항목을 전부
							포함하셔야 합니다.)</font></td>
				</tr>

				<tr>
					<td id="title">비밀번호 확인</td>
					<td><input type="password" id="pw_check" name="pw_check"
						maxlength="16"
						pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()~?]).{8,16}$" />
					</td>
				</tr>

				<tr>
					<td></td>
					<td><font id="chkNotice" size="2"></font></td>
					<!-- size는 input 요소의 너비를 문자수 단위로 명시한 것(기본값은 20)-->
				</tr>

				<tr>
					<td id="title">이름</td>
					<td><input type="text" name="name" size="10" maxlength="10" /></td>
				</tr>

				<tr>
					<td id="title">성별</td>
					<td><input type="radio" name="gender" value="남" />남
						&nbsp;&nbsp;&nbsp; <input type="radio" name="gender" value="여" />여</td>
				</tr>

				<tr>
					<td id="title">생년월일</td>
					<td><input type="date" name="birth" max="2020-12-31" /></td>
				</tr>

				<tr>
					<td id="title">이메일</td>
					<td><input id="email" type="text" name="email_1"
						maxlength="30" pattern="[a-z0-9]+" />&nbsp;@&nbsp; <select
						class="selectbox" name="email_2">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>
					</select></td>
				</tr>

				<tr>
					<td id="title">휴대전화</td>
					<td><input id="phone" type="text" size="3" name="phone_1"
						maxlength="3" placeholder="010" pattern="[0]{1}[1]{1}[0-9]{1}" />
						<input id="phone" type="text" size="4" name="phone_2"
						maxlength="4" placeholder="1234" pattern="[0-9]{3,4}" /> <input
						id="phone" type="text" size="4" name="phone_3" maxlength="4"
						placeholder="5678" pattern="[0-9]{4}" /></td>
				</tr>
				<tr>
					<td id="title">주소</td>
					<td><input id="address" type="text" size="50"
						name="address_street" placeholder="도로명주소" /> <input
						id="address_detail" type="text" size="50" name="address_detail"
						placeholder="상세주소" /></td>
				</tr>
				<tr>
					<td id="title">회원정보 찾기 문답</td>
					<td><select id="question" name="question">
							<option value="">문제 선택</option>
							<option value="01">나의 보물 1호는?</option>
							<option value="02">가장 기억에 남는 선생님 성함은?</option>
							<option value="03">태어난 곳은?</option>
							<option value="04">가장 좋아하는 스포츠 팀은?</option>
							<option value="05">가장 기억에 남는 날짜는?</option>
							<option value="06">성인이 되고 나서 가장 먼저 취득한 자격증은?</option>
							<option value="07">자신의 장래희망은?</option>
					</select> <input id="answer" type="text" name="answer" maxlength="100"
						placeholder="답변" /></td>
				</tr>

			</table>

			<label for="chkEntCus"> <input type="checkbox" id="chkEntCus" />
				<font size="4" color="black"><strong> 사업자(기업)
						회원이십니까?</strong></font>
			</label><br> <br>

			<div id="entTable">
				<div class="form_title" id="form_title">사업자 정보 입력</div>
				<table id="table">
					<tr>
						<td id="title">상호명</td>
						<td><input type="text" id="ent_name" name="ent_name"
							size="10" maxlength="20" /></td>
					</tr>

					<tr>
						<td id="title">사업자 등록번호</td>
						<td><input id="ent_num_1" type="text" name="ent_num_1"
							size="3" maxlength="3" placeholder="청(서)(3)" pattern="[0-9]{3}" />
							<input id="ent_num_2" type="text" name="ent_num_2" size="2"
							maxlength="2" placeholder="개인(법인)(2)" pattern="[0-9]{2}" /> <input
							id="ent_num_3" type="text" name="ent_num_3" size="4"
							maxlength="4" placeholder="일련번호(4)" pattern="[0-9]{4}" /> <input
							id="ent_num_4" type="text" name="ent_num_4" size="1"
							maxlength="1" placeholder="검증(1)" pattern="[0-9]{1}" /></td>
					</tr>

					<tr>
						<td id="title">사업장 전화번호</td>
						<td><input id="ent_phone_first" type="text" size="3"
							maxlength="3" name="ent_phone_1" placeholder="031"
							pattern="[0]{1}[0-9]{1,2}" /> <input id="ent_phone" type="text"
							size="4" maxlength="4" name="ent_phone_2" placeholder="1234"
							pattern="[0-9]{3,4}" /> <input id="ent_phone" type="text"
							size="4" maxlength="4" name="ent_phone_3" placeholder="5678"
							pattern="[0-9]{4}" /></td>
					</tr>

					<tr>
						<td id="title">사업장 주소</td>
						<td><input id="ent_address_street" type="text" size="50"
							name="ent_address_street" placeholder="도로명주소" /> <input
							id="ent_address_detail" type="text" name="ent_address_detail"
							size="50" placeholder="상세주소" /></td>
					</tr>
				</table>
			</div>
			<input id="signup_button" type="submit" value="회원가입" />
			<!-- 서버의 폼 핸들러(입력된 데이터를 처리하는 스크립트를 포함하고 있는 서버 페이지)로 폼 데이터를 전송하는 제출버튼을 정의 -->
		</form>
	</div>
	<br>
	<br>
</body>
</html>