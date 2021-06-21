<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
    <title>회원가입</title>
    
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
	<!-- 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
    <div id="area">
        <br><br>
        <b><font size="6" color="gray"><center>회원가입</center></font></b>
        <br><br><br>
        
        <form>
            <table>
                <tr>
                    <td id="title"><center>아이디</center></td>
                    <td>
                        <input type="text" name="id" maxlength="20">
                        <input type="button" value="중복확인" onclick="">    
                    </td>
                </tr>
                        
                <tr>
                    <td id="title"><center>비밀번호</center></td>
                    <td>
                        <input type="password" name="pw" maxlength="15">
                    </td>
                </tr>
                
                <tr>
                    <td id="title"><center>비밀번호 확인</center></td>
                    <td>
                        <input type="password" name="pw_check" maxlength="15">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>이름</center></td>
                    <td>
                        <input type="text" name="name" maxlength="40">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>성별</center></td>
                    <td>
                        <input type="radio" name="gender" value="남" checked>남
                        <input type="radio" name="gender" value="여" checked>여
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>생일</center></td>
                    <td>
                        <input type="text" name="birth_yy" maxlength="4" placeholder="년(4자)" size="6" >
                        <select name="birth_mm">
                            <option value="">월</option>
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
                        <input type="text" name="birth_dd" maxlength="2" placeholder="일" size="4" >
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>이메일</center></td>
                    <td>
                        <input style="width:100px"type="text" name="email_1" maxlength="30">@
                        <select name="email_2">         
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option> 
                            <option>직접 입력</option>                       
                        </select>
                        <input type="text" name="email_3" maxlength="20" placeholder="직접 입력 선택 시 입력">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>휴대전화</center></td>
                    <td>
                        <input style="width:100px;" type="text" name="phone_1" placeholder="앞 3자리"/>
                        <input style="width:125px;" type="text" name="phone_2" placeholder="중간 3~4자리"/>
                        <input style="width:127px;" type="text" name="phone_3" placeholder="뒤 4자리"/>
                    </td>
                </tr>
                <tr>
                    <td id="title"><center>주소</center></td>
                    <td>
                        <input style="width:100%" type="text" size="50" name="address"/>
                    </td>
                </tr>
            </table>
            <br>
            <div id="area">
        <br><br>
        <b><font size="6" color="gray"><center>기업 회원가입</center></font></b>
        <br><br><br>
        
        <form>
            <table>
                <tr>
                    <td id="title"><center>대표명</center></td>
                    <td>
                        <input type="text" name="enter_name" maxlength="20">               
                    </td>
                </tr>
                        
                <tr>
                    <td id="title"><center>사업자 등록번호</center></td>
                    <td>
                        <input style="width:60px" type="text" name="enter_num_1" maxlength="3" placeholder="청(서)(3)">
                        <input style="width:90px" type="text" name="enter_num_2" maxlength="2" placeholder="개인(법인)(2)">
                        <input style="width:80px" type="text" name="enter_num_3" maxlength="4" placeholder="일련번호(4)">
                        <input style="width:50px" type="text" name="enter_num_4" maxlength="1" placeholder="검증(1)">
                    </td>
                </tr>
                
                <tr>
                    <td id="title"><center>사업장 전화번호</center></td>
                    <td>
                        <input style="width:100px;" type="text" name="phone_1" placeholder="앞 2~3자리"/>
                        <input style="width:125px;" type="text" name="phone_2" placeholder="중간 3~4자리"/>
                        <input style="width:127px;" type="text" name="phone_3" placeholder="뒤 4자리"/>
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><center>사업장 주소</center></td>
                    <td>
                        <input type="text" name="name" maxlength="100">
                    </td>
                </tr>                 
            </table>
            <br><br>
            <input type="submit" value="회원가입" onclick="location.href='Login.html'">
    </div>
    </form>
</body>
</html>


출처: https://all-record.tistory.com/108 [세상의 모든 기록]