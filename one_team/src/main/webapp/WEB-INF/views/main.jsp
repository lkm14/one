<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/resources/css/main.css" />" type="text/css" />
</head>
<body>

	<!-- UI Object -->

	<div id="wrap">

		<h2>
			<i>ONE</i>
		</h2>

		<!-- header -->

		<div id="header">
			<jsp:include page="header.jsp" />
		</div>

		<!-- //header -->

		<!-- container -->
		<div id="container">

			<p>#container</p>

			<!-- snb -->
			<div class="snb">
				<span>환영합니다.</span>
				<jsp:include page="left.jsp" />
			</div>
			<!-- //snb -->

			<!-- content -->

			<div id="content">

				<p>#content</p>

			</div>

			<!-- //content -->

		</div>

		<!-- //container -->

		<!-- footer -->

		<div id="footer">

			<p>#footer</p>

		</div>

		<!-- //footer -->

	</div>

	<!-- //UI Object -->

</body>
</html>