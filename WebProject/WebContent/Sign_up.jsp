<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
	<div>
		<h3>아이디</h3>
		<span class="box int_id">
		<input type="text" id="id" class="int">
		</span>
	</div>
	
	<div>
		<h3>비밀번호</h3>
		<input type="text" id="pswd" class="int">
	</div>
	
	<div>
		<h3>비밀번호 재확인</h3>
		<input type="text" id="pswd_check" class="int">
	</div>
	
	<div>
		<h3>이름</h3>
		<input type="text" id="name" class="int">
	</div>
	
	<div>
		<h3>생년월일</h3>
		<input type="text" id="birth" class="int" maxlength="4" placeholder="연도">
	</div>
	
	<div>
		<select id="mm" class="sel">
			<option>월</option>
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
		</select>
	</div>
	<div>
		<span class="box">
			<input type="text" id="dd" class="int" maxlength="2" placeholder="일">
		</span>
	</div>
	
	<div>
		<h3>성별</h3>
		<select id="gender" class="sel">
		<option>성별</option>
		<option value="M">남자</option>
		<option value="F">여자</option>
		</select>
	</div>
	
	<div>
		<h3>전화번호</h3>
		<input type="tel" id="phone_number" class="int">
	</div>
	
	<div>
		<h3>이메일</h3>
		<input type="text" id="email" class="int">
	</div>
	
	<div>
		<h3>주소</h3>
		<input type="text" id="address" class="int" placeholder="주민등록상 주소를 정확히 입력해 주세요.">
	</div>
	
	<div>
		<h3>회원정보 찾기 문답</h3>
		<select id="QnA" class="sel">
		<option>회원정보 찾기 질문</option>
			<option value="01">기억에 남는 추억의 장소는?</option>
			<option value="02">자신의 인생 좌우명은?</option>
			<option value="03">자신의 보물 제1호는?</option>
			<option value="04">가장 기억에 남는 선생님 성함은?</option>
			<option value="05">타인이 모르는 자신만의 신체비밀이 있다면?</option>
			<option value="06">추억하고 싶은 날짜가 있다면?</option>
			<option value="07">받았던 선물 중 기억에 남는 독특한 선물은?</option>
			<option value="08">가장 생각나는 친구 이름은?</option>
			<option value="09">인상 깊게 읽은 책 이름은?</option>
			<option value="10">가장 존경하는 인물은?</option>
			<option value="11">내가 좋아하는 캐릭터가 있다면?</option>
			<option value="12">다시 태어나면 되고 싶은 것은?</option>
		</select>
		<input type="text" id="id" class="int" placeholder="회원정보 찾기 답변">
	</div>
	
	<div>
      <h3>기업회원이신가요?
        <input name="chkbox" type="checkbox" onClick="checkEnable(this.form)"><br></h3>

      <h3>대표명</h3>
      <span>
          <input type="text" id="EP_name" class="int">
      </span>

      <h3>사업자 등록번호</h3>
      <span>
          <input type="int" id="EP_number" class="int" placeholder="사업자 등록번호 입력">
      </span>
      
      <h3>사업장 전화번호</h3>
      <span>
          <input type="tel" id="EP_Phone_number" class="int" placeholder="전화번호 입력">
      </span>
      
      <h3>사업장 주소</h3>
      <span>
          <input type="text" id="" class="int" placeholder="사업장 주소 입력">
      </span>
    </div>
	
	
	
	<br>
	
	<div>
		<button type="button" id="Sign_complete">
			<span>가입하기</span>
		</button>
	</div>
	
</body>
=======
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
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
			<div id="birth_yy">
				<span class="box">
					<input type="text" id"="yy" class="int" maxlength="4" placeholder="연도">
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
		<h3>본인확인용 이메일</h3>
		<span class="box int_email">
			<input type="text" id="email" class="int" maxlength="50" placeholder="이메일을 입력하세요">
		</span>
	</div>
	<br>
	<div>
		<button type="button" id="join">
			<span>가입하기</span>
		</button>
	</div>
</body>
>>>>>>> branch 'master' of https://github.com/dbsehgus94/WebProject.git
</html>