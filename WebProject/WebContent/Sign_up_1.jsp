<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<!__link href='../..css/join_style.css' rel='stylesheet'-->
</head>
<body>
	<div>
		<h3>���̵�</h3>
		<span class="box int_id">
			<input type="text" id="id" class="int" maxlength="16">
		</span>
	</div>
	<div>
		<h3>��й�ȣ</h3>
		<span class="box int_pw">
			<input type="text" id="pw" class="int" maxlength="20">
		</span>
	</div>
	<div>
		<h3>��й�ȣ ��Ȯ��</h3>
		<span class="box int_pw_check">
			<input type="text" id="pw_check" class="int" maxlength="20">
		</span>
	</div>
	<div>
		<h3>�̸�</h3>
		<span class="box int_name">
			<input type="text" id="name" class="int" maxlength="10">
		</span>
	</div>
	<div>
		<h3>����</h3>
		<span class="box int_gender">
			<select id="gender" class="sel">
				<option>����</option>
				<option value="M">����</option>
				<option value="F">����</option>
			</select>
		</span>
	</div>
	<div>
		<h3>�������</h3>
		<span class="box int_birthday">
			<div id="birth_yy" style="float:left;" width=33%>
				<span class="box">
					<input type="text" id"="yy" class="int" maxlength="4" placeholder="����">
				</span>
			</div>
			<div id="birth_mm" style="float:left;" width=33%>
				<span class="box">
					<select id="mm" class="sel">
						<option>��</option>
						<option value="01">1��</option>
						<option value="02">2��</option>
						<option value="03">3��</option>
						<option value="04">4��</option>
						<option value="05">5��</option>
						<option value="06">6��</option>
						<option value="07">7��</option>
						<option value="08">8��</option>
						<option value="09">9��</option>
						<option value="10">10��</option>
						<option value="11">11��</option>
						<option value="12">12��</option>
					</select>
				</span>
			</div>
			<div id="bir_dd">
				<span class="box">
					<input type="text" id="dd" class="int" maxlength="2" placeholder="��">
				</span>
			</div>
			
		</span>
	</div>
	<div>
		<h3>����Ȯ�ο� �̸���</h3>
		<span class="box int_email">
			<input type="text" id="email" class="int" maxlength="50" placeholder="�̸����� �Է��ϼ���">
		</span>
	</div>
	<div id="sel_email" style="float:left;" width=33%>
				<span class="box">
					<select id="mm" class="sel">
						<option>�̸��� ����</option>
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
			<span>�����ϱ�</span>
		</button>
	</div>
</body>
</html>