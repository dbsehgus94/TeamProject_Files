<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body>
	<div>
		<h3>���̵�</h3>
		<span class="box int_id">
		<input type="text" id="id" class="int">
		</span>
	</div>
	
	<div>
		<h3>��й�ȣ</h3>
		<input type="text" id="pswd" class="int">
	</div>
	
	<div>
		<h3>��й�ȣ ��Ȯ��</h3>
		<input type="text" id="pswd_check" class="int">
	</div>
	
	<div>
		<h3>�̸�</h3>
		<input type="text" id="name" class="int">
	</div>
	
	<div>
		<h3>�������</h3>
		<input type="text" id="birth" class="int" maxlength="4" placeholder="����">
	</div>
	
	<div>
		<select id="mm" class="sel">
			<option>��</option>
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
			<input type="text" id="dd" class="int" maxlength="2" placeholder="��">
		</span>
	</div>
	
	<div>
		<h3>����</h3>
		<select id="gender" class="sel">
		<option>����</option>
		<option value="M">����</option>
		<option value="F">����</option>
		</select>
	</div>
	
	<div>
		<h3>��ȭ��ȣ</h3>
		<input type="tel" id="phone_number" class="int">
	</div>
	
	<div>
		<h3>�̸���</h3>
		<input type="text" id="email" class="int">
	</div>
	
	<div>
		<h3>�ּ�</h3>
		<input type="text" id="address" class="int" placeholder="�ֹε�ϻ� �ּҸ� ��Ȯ�� �Է��� �ּ���.">
	</div>
	
	<div>
		<h3>ȸ������ ã�� ����</h3>
		<select id="QnA" class="sel">
		<option>ȸ������ ã�� ����</option>
			<option value="01">��￡ ���� �߾��� ��Ҵ�?</option>
			<option value="02">�ڽ��� �λ� �¿����?</option>
			<option value="03">�ڽ��� ���� ��1ȣ��?</option>
			<option value="04">���� ��￡ ���� ������ ������?</option>
			<option value="05">Ÿ���� �𸣴� �ڽŸ��� ��ü����� �ִٸ�?</option>
			<option value="06">�߾��ϰ� ���� ��¥�� �ִٸ�?</option>
			<option value="07">�޾Ҵ� ���� �� ��￡ ���� ��Ư�� ������?</option>
			<option value="08">���� �������� ģ�� �̸���?</option>
			<option value="09">�λ� ��� ���� å �̸���?</option>
			<option value="10">���� �����ϴ� �ι���?</option>
			<option value="11">���� �����ϴ� ĳ���Ͱ� �ִٸ�?</option>
			<option value="12">�ٽ� �¾�� �ǰ� ���� ����?</option>
		</select>
		<input type="text" id="id" class="int" placeholder="ȸ������ ã�� �亯">
	</div>
	
	<div>
      <h3>���ȸ���̽Ű���?
        <input name="chkbox" type="checkbox" onClick="checkEnable(this.form)"><br></h3>

      <h3>��ǥ��</h3>
      <span>
          <input type="text" id="EP_name" class="int">
      </span>

      <h3>����� ��Ϲ�ȣ</h3>
      <span>
          <input type="int" id="EP_number" class="int" placeholder="����� ��Ϲ�ȣ �Է�">
      </span>
      
      <h3>����� ��ȭ��ȣ</h3>
      <span>
          <input type="tel" id="EP_Phone_number" class="int" placeholder="��ȭ��ȣ �Է�">
      </span>
      
      <h3>����� �ּ�</h3>
      <span>
          <input type="text" id="" class="int" placeholder="����� �ּ� �Է�">
      </span>
    </div>
	
	
	
	<br>
	
	<div>
		<button type="button" id="Sign_complete">
			<span>�����ϱ�</span>
		</button>
	</div>
	
</body>
</html>