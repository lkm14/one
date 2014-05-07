<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src='<c:url value="/resources/js/jquery-2.0.2.js" />'></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$('.login_ok').bind('click', function(){
		if ($('#member_id').val() == ''){
			alert('아이디를 입력하세요');
			$('#member_id').focus;
			return false;
		}
		
		if ($('#member_pwd').val() == ''){
			alert('비밀번호를 입력하세요');
			$('#member_pwd').focus;
			return false;
		}
	});
	
	if($('#keepid').val() == '1'){
		var cookies = request.getCookies();
			if (cookies != null) {
				var cookie_name = cookies.getName();
				var cookie_value = cookies.getValue();
		alert(cookie_value);
				if (cookie_name.equals("id")) {
					$('#member_id').html(cookie_value);
				}
			}
		} else {
			$('#keepid').val('');
		}
});

</script>
</head>
<body>
		<div class="g_login" id="login">
					<form class="g_login" id="g_login" action="../member/login" method="POST">
						<fieldset>
							<legend>회원로그인</legend>
							<div class="item">
								<label class="i_label"
									style="visibility: visible; position: absolute;" for="uid">ID</label><input
									class="i_text uid" name="member_id" id="member_id" type="text">
							</div>
							<div class="item">

								<label class="i_label"
									style="visibility: visible; position: absolute;" for="upw">PASSWORD</label><input
									class="i_text upw" name="member_pwd" id="member_pwd" type="password" >
							</div>
							<p class="keeping">
								<input class="i_check" id="keepid" type="checkbox" 
								<c:if test="${!request.getCookies().getValue().equals('')}">checked</c:if>
								><label for="keepid">아이디 저장</label>
									 <input type="submit" value="로그인" class="login_ok">
							</p>

							<ul class="help">

								<li class="first"><a href="#">아이디/비밀번호 찾기</a></li>

								<li><a href="#">회원 가입</a></li>
							</ul>
						</fieldset>
					</form>
				</div>
</body>
</html>