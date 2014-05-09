<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 관리자 모드</title>
<script type="text/javascript">
	function loginCheck(){
		if(document.getElementById("id").value.length<3){
			alert("아이디를 정확하게 입력하세요.");
			document.getElementById("id").focus();
			return;
		}
		if(!document.getElementById("pw").value){
			alert("비밀번호를 정확하게 입력하세요");
			document.getElementById("pw").select();
			return;
		}

	    document.login.submit();
	}
</script>
<link rel="stylesheet" href="<c:url value="/resources/css/admin.css" />"type="text/css" />
</head>
<body>
	<form name="login" action="#" method="POST">
		<div id="allWrap">
			<!-- contents S -->
			<div id="loginTopWrap">
				<div id="loginWrap">
					<div id="loginBox">
						<p class="loginMsg">
							관리자 페이지 입니다. <br />로그인해 주십시오.
						</p>
						<div class="loginWrap">
							<div class="loginBox">
								<input type="text" name="id" id="id" /> <input type="password"
									name="pw" id="pw" /> <a href="javascript:loginCheck();"
									class="loginBtn"><img src="<c:url value="/resources/image/btn_login.png" />" alt="Login" title="Login" /></a>
							</div>
						</div>
						<p class="qnaMsg">
							비정상 작동 및 문의<br />
							<a href="mailto:ryan@google.com">Click here if you prefer not
								to receive future e-mail</a>
						</p>
					</div>
				</div>
			</div>
			<!-- contents E -->

			<!-- bottom S -->
			<div id="loginBottom">
				<div class="btmWrap">
					<div class="copyBox" align="center">
						<p>All Rights Reserved.</p>
					</div>
				</div>
			</div>
			<!-- bottom E -->
		</div>
	</form>
</body>