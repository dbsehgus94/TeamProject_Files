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
		else if($('#pw').val() == $('#pw_check').val()){
			if($('#pw').val() == ''){
			$('#chkNotice').html('<br>');
			$('#chkNotice').attr('color', 'white');
			}
			
			else{
			$('#chkNotice').html('비밀번호 일치함<br>');
			$('#chkNotice').attr('color', 'green');
			
			}
		
	}
		
	});
	
	$('#pw_check').keyup(function(){
		
		if($('#pw_check').val() != $('#pw').val()){
			$('#chkNotice').html('비밀번호 일치하지 않음<br>');
			$('#chkNotice').attr('color', 'red');
		} 
		
		else{	
			
			if($('#pw').val() == $('#pw_check').val()){
			$('#chkNotice').html('비밀번호 일치함<br>');
			$('#chkNotice').attr('color', 'green');
			}
		}
	});
});


