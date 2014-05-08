/**
 *  회원가입
 */


$(document).ready(function() {
	//id 중복체크
	$('#btnIdCheck').click(function(){
		
	});
	$('#btnRegistOk').click(function(){
		
		if($('#user_id').val().length < 4 || $('#user_id').val().length > 20){
			$('#user_id_msg').html('아이디는 4자 이상 20자 이하입니다.').addClass('msg_warn');
			$('#user_id').focus();
			return false;
		} else {
			$('#user_id_msg').remove();
		}
		
		//대문자@대문자.대문자 라고 입력을 받아야 함 : /(\S+)@(\S+).(\S+)/  
		if($('#user_email').val().search(/(\S+)@(\S+)\.(\S+)/)){
			$('#user_email_msg').html('이메일 형식을 맞춰주세요');
			$('#user_email').focus();
			return false;			
		}
		
		/*	
 		$('#frmRegist').attr('action','tests')
					   .attr('method','get');
		
		$('#frmRegist').submit();\
		*/
	});
	
	//btnSearchZipcode라는 이름을 가진 버튼을 클릭시에 아래 function을 실행
	$('#btnSearchZipcode').click(function(){
		window.open('zipcode','zipcode','width=400, height=400');
	});
	
	$('#user_pwd').keyup(function(){
		$('#user_pwd_confirm').val('');
		$('#user_pwd_confirm_msg').html('');
		
	});
	
	//비밀번호 확인 칸에 key가 올라갔을 때
	$('#user_pwd_confirm').keyup(function(){
		
		//만약 user_pwd에 값이 공백이 아니라면
		if($('#user_pwd').val() != ''){

			//pwd_confirm과 pwd값이 같으면
			if($('#user_pwd').val() == $('#user_pwd_confirm').val()){
				$('#user_pwd_confirm_msg').removeClass();
				$('#user_pwd_confirm_msg').html('비밀번호가 일치합니다.')
				.addClass('msg_ok');
			} else {
				$('#user_pwd_confirm_msg').removeClass();
				$('#user_pwd_confirm_msg').html('비밀번호가 다릅니다.').addClass('msg_warn');
			}
			
		} else {
			$('#user_pwd_confirm_msg').html('비밀번호를 입력해주세요.').addClass('msg_warn');
		}
		
	});
});


function nope() {
	if(!document.getElementById("user_zipcode").value){
		alert("검색 버튼을 이용해주세요");
		document.getElementById('btnSearchZipcode').focus();
	} else {
		document.getElementById('detailaddr').focus();
	}
}

