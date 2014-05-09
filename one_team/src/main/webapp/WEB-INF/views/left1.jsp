<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="g_login" id="login">
	   <h1><center><font color="#B2CCFF"><i>Member Login</i></font></center></h1>
		<form class="g_login" id="g_login" action='<c:url value="/member/login"/>' method="POST">
		 <fieldset>
				<legend>회원로그인</legend>
				<div class="item">
					<label class="i_label"
						style="visibility: visible; position: absolute;" for="uid">ID</label><input
						class="i_text uid"  type="text" value="" name="member_id" id="member_id"> 
				</div>
				<div class="item">

					<label class="i_label"
						style="visibility: visible; position: absolute;" for="upw">PASSWORD</label><input
						class="i_text upw"  type="password" value="" name="member_pwd" id="member_pwd">
				</div>
				<p class="keeping">
					<input class="i_check" id="keepid" type="checkbox" value=""><label
						for="keepid">아이디 저장</label> <input type="submit" value="로그인"
						class="login_ok">
				</p>
				<ul class="help">
					<li class="first"><a href="#">아이디 찾기</a>/<a href="#">비밀번호 찾기</a></li>
					<li><a href='<c:url value="/member/regist"/>'>회원 가입</a></li>
				</ul>
			</fieldset> 
		</form>
	</div>
	<h1>
		 <center><font color="#D1B2FF"><b>Menu Category</b></font></center>
	</h1>
   <div id="left_menu1">
		<a href="<c:url value='/product/1/1/1/'/>"><img src='<c:url value="/resources/image/left1.jpg" />' height="70px" width="330px"></a>
		<a href="<c:url value='/product/2/1/1/'/>"><img src='<c:url value="/resources/image/left2.jpg" />' height="70px" width="330px"></a>
		<a href="<c:url value='/product/1/1/1/'/>"><img src='<c:url value="/resources/image/left3.jpg" />' height="70px" width="330px"></a>
		<a href="<c:url value='/product/1/1/1/'/>"><img src='<c:url value="/resources/image/left4.jpg" />' height="70px" width="330px"></a>
		<img src='<c:url value="/resources/image/leftend.jpg" />' height="360px" width="330px">
	</div> 
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript">
		jQuery(function($) {
			var uid = $('.i_text.uid');

			var upw = $('.i_text.upw');

			// Input Clear

			var i_text = $('.item>.i_label').next('.i_text');

			$('.item>.i_label').css('position', 'absolute');

			i_text

			.focus(function() {

				$(this).prev('.i_label').css('visibility', 'hidden');

			})

			.blur(function() {

				if ($(this).val() == '') {

					$(this).prev('.i_label').css('visibility', 'visible');

				} else {

					$(this).prev('.i_label').css('visibility', 'hidden');

				}

			})

			.change(function() {

				if ($(this).val() == '') {

					$(this).prev('.i_label').css('visibility', 'visible');

				} else {

					$(this).prev('.i_label').css('visibility', 'hidden');

				}

			})

			.blur();

			// Validation
			$('#login>.g_login input[type=submit]').click(function() {

				if (uid.val() == '' && upw.val() == '') {

					alert('ID와 PASSWORD를 입력하세요!');

					return false;

				}

				else if (uid.val() == '') {

					alert('ID를 입력하세요!');

					return false;

				}

				else if (upw.val() == '') {

					alert('PASSWORD를 입력하세요!');

					return false;

				}
			});
			// Hide Window
		});
	</script>
</body>
</html>