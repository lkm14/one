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
	<div id="cate_menu">
		<div class="g_login" id="login">
	<h1><center><font color="#B2CCFF"><i>Welcome ONE Members</i></font></center></h1>
		<form class="g_login" id="g_login" action="user/login">
		 <fieldset>
				<legend>회원로그인</legend>
				<div class="item">
					<label class="i_label" style="visibility: visible; position: absolute;" for="uid"><font color="#A566FF">오늘도 저희 쇼핑몰을 이용해 주셔서 감사합니다.</font></label>
				</div>
				<div class="item">
					<label class="i_label" style="visibility: visible; position: absolute;" for="upw">이도형 고객님 환영합니다.</label>
				</div>
				<ul class="help">
					<li class="first"><a href="#">로그아웃</a></li>
						<li><a href="#">회원 탈퇴</a></li>
				</ul>
				<ul class="help">
					<li class="first"><a href="#">포인트 확인</a></li>
					<li><a href="/user/regist">배송조회</a></li>
					<li><a href="/user/regist">개인 결제창</a></li>
				</ul>
				<ul class="help">
					<li class="first"><a href="#">마이 페이지</a></li>
					<li><a href="#">장바구니</a></li>
					<li><a href="#">상담원 연결</a></li>
				</ul>
			</fieldset> 
		</form>
	</div>
	<h1>
		 <center><font color="#D1B2FF"><b>Menu Category</b></font></center>
	</h1>
	<div id="left_menu1">
		<a href="#"><img src='<c:url value="/resources/image/left1.jpg" />' height="70px" width="330px"></a>
		<a href="#"><img src='<c:url value="/resources/image/left2.jpg" />' height="70px" width="330px"></a>
		<a href="#"><img src='<c:url value="/resources/image/left3.jpg" />' height="70px" width="330px"></a>
		<a href="#"><img src='<c:url value="/resources/image/left4.jpg" />' height="70px" width="330px"></a>
		<img src='<c:url value="/resources/image/leftend.jpg" />' height="420px" width="330px">
	</div>
	</div>
</body>
</html>