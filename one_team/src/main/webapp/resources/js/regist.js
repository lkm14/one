/**
 * 회원가입
 */
$(document).ready(function(){
	$('#btnRegistOk').click(function(){
		if (!(4 < $('#user_id').val().length && $('#user_id').val().length < 20)){
			$('#user_id_msg').html('아이디는 4자이상 20자 이하로 반드시 입력하세요.')
							.addClass('msg_warn');
			$('#user_id').focus();
			return false;
		} 
		
		if ($('#user_email').val().search(/(\S+)@(\S+).(\S+)/)){
			$('#user_email_msg').html('이메일 형식을 맞춰주세요. ex.oraclejava@naver.com')
								.addClass('msg_warn');
			$('#user_email').focus();
			return false;
		}
//		alert('test');
//		$('#frmRegist').attr('action','tests')
//						.attr('method','get');
//		$('#frmRegist').submit();
	});
	
	$('#btnSearchButton').click(function(){
		window.open('zipcode', 'zipcode', 'width=400,height=400');	
		});
	$('#user_pwd').keyup(function(){
		$('#user_pwd_confirm').val('');
		$('#user_pwd_confirm_msg').html('');
	});
	
	$('#user_pwd_confirm').keyup(function(){
		
		if ($('#user_pwd').val() != ''){ //비밀번호에 값이 존재
			if ($('#user_pwd_confirm').val() == '') {
				//비밀번호 확인에 값이 존재하지 않을때
				$('#user_pwd_confirm_msg').removeClass();
				$('#user_pwd_confirm_msg')
				.html("비밀번호와 일치하게 재 입력하세요.")
				.addClass('msg_ok');
			} else if ($('#user_pwd').val() == $('#user_pwd_confirm').val()){ //비밀번호와 확인이 일치하는지.
				$('#user_pwd_confirm_msg').removeClass();
				$('#user_pwd_confirm_msg')
				.html("비밀번호가 맞습니다.")
				.addClass('msg_ok');
			} else {
				$('#user_pwd_confirm_msg').removeClass();
				$('#user_pwd_confirm_msg')
				.html("비밀번호가 틀립니다.")
				.addClass('msg_warn');
			}	
		} else {								//비밀번호에 값이 존재하지 않음
			$('#user_pwd_confirm_msg').removeClass();
			$('#user_pwd_confirm_msg').
			html("비밀번호를 먼저 입력후 확인하세요.")
			.addClass('msg_warn');									
		}
	});
});



function closeZip(zipcode1,zipcode2,addr1){
	var f = opener.document.registPage;
	f.user_zipcode1.value = zipcode1;
	f.user_zipcode2.value = zipcode2;
	f.user_addr1.value = addr1;
	self.close();
}
