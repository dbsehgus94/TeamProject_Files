<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
    <title>ȸ������</title>
    
    <style>
        #area{
            width:500px;
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        
        
        table{
            border:3px solid black
        }
        
        td{
            border:1px solid #98B4D4
        }
        
        #title{
            background-color:#98B4D4
        }
    </style>
</head>
<body>
	<form action="sessionSignUp.jsp" method="post">
	<!-- ����, ������ �ٱ������� auto�� �ָ� �߾����ĵȴ�.  -->
    <div id="area">
        <br><br>
        <b><font size="6" color="gray"><center>ȸ������</center></font></b>
        <br><br><br>
        
        <form>
            <table>
                <tr>
                    <td id="title"><center>���̵�</center></td>
                    <td>
                        <input type="text" name="id" maxlength="20">
                        <input type="button" value="�ߺ�Ȯ��" onclick="">    
                    </td>
                </tr>
                        
                <tr>
                    <td id="title"><center>��й�ȣ</center></td>
                    <td>
                        <input type="password" name="pw" maxlength="15">
                    </td>
                </tr>
                
                <tr>
                    <td id="title"><center>��й�ȣ Ȯ��</center></td>
                    <td>
                        <input type="password" name="pw_check" maxlength="15">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>�̸�</center></td>
                    <td>
                        <input type="text" name="name" maxlength="40">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>����</center></td>
                    <td>
                        <input type="radio" name="gender" value="��" checked>��
                        <input type="radio" name="gender" value="��" checked>��
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>����</center></td>
                    <td>
                        <input type="text" name="birth_yy" maxlength="4" placeholder="��(4��)" size="6" >
                        <select name="birth_mm">
                            <option value="">��</option>
                            <option value="01" >1</option>
                            <option value="02" >2</option>
                            <option value="03" >3</option>
                            <option value="04" >4</option>
                            <option value="05" >5</option>
                            <option value="06" >6</option>
                            <option value="07" >7</option>
                            <option value="08" >8</option>
                            <option value="09" >9</option>
                            <option value="10" >10</option>
                            <option value="11" >11</option>
                            <option value="12" >12</option>
                        </select>
                        <input type="text" name="birth_dd" maxlength="2" placeholder="��" size="4" >
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>�̸���</center></td>
                    <td>
                        <input style="width:100px"type="text" name="email_1" maxlength="30">@
                        <select name="email_2">         
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option> 
                            <option>���� �Է�</option>                       
                        </select>
                        <input type="text" name="email_3" maxlength="20" placeholder="���� �Է� ���� �� �Է�">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>�޴���ȭ</center></td>
                    <td>
                        <input style="width:100px;" type="text" name="phone_1" placeholder="�� 3�ڸ�"/>
                        <input style="width:125px;" type="text" name="phone_2" placeholder="�߰� 3~4�ڸ�"/>
                        <input style="width:127px;" type="text" name="phone_3" placeholder="�� 4�ڸ�"/>
                    </td>
                </tr>
                <tr>
                    <td id="title"><center>�ּ�</center></td>
                    <td>
                        <input style="width:100%" type="text" size="50" name="address"/>
                    </td>
                </tr>
            </table>
            <br>
            <div id="area">
        <br><br>
        <b><font size="6" color="gray"><center>��� ȸ������</center></font></b>
        <br><br><br>
        
        <form>
            <table>
                <tr>
                    <td id="title"><center>��ǥ��</center></td>
                    <td>
                        <input type="text" name="enter_name" maxlength="20">               
                    </td>
                </tr>
                        
                <tr>
                    <td id="title"><center>����� ��Ϲ�ȣ</center></td>
                    <td>
                        <input style="width:60px" type="text" name="enter_num_1" maxlength="3" placeholder="û(��)(3)">
                        <input style="width:90px" type="text" name="enter_num_2" maxlength="2" placeholder="����(����)(2)">
                        <input style="width:80px" type="text" name="enter_num_3" maxlength="4" placeholder="�Ϸù�ȣ(4)">
                        <input style="width:50px" type="text" name="enter_num_4" maxlength="1" placeholder="����(1)">
                    </td>
                </tr>
                
                <tr>
                    <td id="title"><center>����� ��ȭ��ȣ</center></td>
                    <td>
                        <input style="width:100px;" type="text" name="phone_1" placeholder="�� 2~3�ڸ�"/>
                        <input style="width:125px;" type="text" name="phone_2" placeholder="�߰� 3~4�ڸ�"/>
                        <input style="width:127px;" type="text" name="phone_3" placeholder="�� 4�ڸ�"/>
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>����� �ּ�</center></td>
                    <td>
                        <input type="text" name="name" maxlength="100">
                    </td>
                </tr>                 
            </table>
            <br><br>
            <input type="submit" value="ȸ������" onclick="location.href='Login.html'">
    </div>
    </form>
</body>
</html>


��ó: https://all-record.tistory.com/108 [������ ��� ���]