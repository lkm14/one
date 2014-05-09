<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/resources/css/main.css" />"
	type="text/css" />
</head>
<body>

	<div id="wrap">
		<h1>
			I <font color="#F15F5F">♥</font> BASEBALL
		</h1>
		<form action="#">
		<fieldset class="srch">
				<legend>검색영역</legend>
				<select>
					<option>상품명</option>
					<option>구단명</option>
				</select> 
				<input title="검색어" class="keyword" accesskey="s" type="text">
				<input type="image" alt="검색" src="<c:url value="/resources/image/btn_srch.gif" />">
			</fieldset>
		</form>
		<!-- header -->

		<div id="header">
			<jsp:include page="../header.jsp" />
		</div>
		<!-- //header -->
		<!-- container -->
		<div id="container">
			<!-- 메인이미지 -->
			<div id="main_img">
				<img src='<c:url value="/resources/image/main.jpg" />'
					height="200px" width="1252px">
			</div>
			<!-- 레프트 메뉴 -->
			<div class="snb">
				<jsp:include page="../left1.jsp" />
			</div>
			<!-- //레프트 메뉴 종료 -->

			<!-- content -->
			<div id="content">리스트 부분</div>
		</div>
		<!-- container 종료 -->

		<!-- footer -->
		<div id="footer">
			<jsp:include page="../footer.jsp" />
		</div>
		<!-- //footer -->
	</div>
</body>
</html>