<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div class="g_login" id="login">
					<form class="g_login" id="g_login" action="">
						<fieldset>
							<legend>회원로그인</legend>
							<div class="item">
								<label class="i_label"
									style="visibility: visible; position: absolute;" for="uid">ID</label><input
									class="i_text uid" id="uid" type="text" value="">
							</div>
							<div class="item">

								<label class="i_label"
									style="visibility: visible; position: absolute;" for="upw">PASSWORD</label><input
									class="i_text upw" id="upw" type="password" value="">
							</div>
							<p class="keeping">
								<input class="i_check" id="keepid" type="checkbox" value=""><label
									for="keepid">아이디 저장</label>
									 <input type="submit" value="로그인" class="login_ok">
							</p>

							<ul class="help">

								<li class="first"><a href="#">아이디/비밀번호 찾기</a></li>

								<li><a href="#">회원 가입</a></li>
							</ul>
						</fieldset>
					</form>
				</div>
				<div id="left_menu1">
			    <img src='<c:url value="/resources/image/left.jpg" />' height="300px" width="330px">	
				</div>
				<div id="left_menu2">
			    <img src='<c:url value="/resources/image/left1.jpg" />' height="300px" width="330px">	
				</div>
</body>
</html>