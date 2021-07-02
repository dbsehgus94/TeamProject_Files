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

$(function(){
	$('#pw').keyup(function(){
		if($('#pw').val() != $('#pw_check').val()){
			$('#chkNotice').html('비밀번호 일치하지 않음<br>');
			$('#chkNotice').attr('color', 'red');
		} 
		else{	
			if($('#pw').val() == $('#pw_check').val()){
			$('#chkNotice').html('비밀번호 일치함<br>');
			$('#chkNotice').attr('color', 'green');
			
			if($('#pw').val() == ''){
			$('#chkNotice').html('<br>');
			$('#chkNotice').attr('color', 'white');
			}
		
		}
	}
		
	});
	
	$('#pw_check').keyup(function(){
		
		if($('#pw').val() != $('#pw_check').val()){
			$('#chkNotice').html('비밀번호 일치하지 않음<br>');
			$('#chkNotice').attr('color', 'red');
		} 
		
		else{
			$('#chkNotice').html('비밀번호 일치함<br>');
			$('#chkNotice').attr('color', 'green');
		}
	});
});

function test_id() {
		alert("사용 가능한 아이디입니다.");
	}
	
function test() {
		alert("회원가입 완료!!");
		
	}