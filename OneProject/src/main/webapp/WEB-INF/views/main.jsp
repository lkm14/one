<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/resources/css/main.css" />" type="text/css" />
<!-- <style type="text/css">
 #container {
	_display: inline-block;
	width: 1300px;
	height: 900px;
}

#container:after {
	display: block;
	clear: both;
	content: '';
}

.snb {
	float: left;
	width: 330px;
	margin-right: -200px;
}

div .snb,.item,#container,#footer {
	margin: 0 0 10px;
	padding: 10px 0;
	color: #BCE55C;
	font-family: Tahoma;
	font-size: 14px;
	font-weight: bold
}

#wrap {
	width: 1300px;
	margin: 0;
	padding: 10px;
	background: #FFFFFF;
}

#header {
	margin: 0px;
	padding: 0px;
	margin-bottom: 20;
	border: 2px solid #bfbfbf;
	background: #FFFFFF;
}

#container {
	width: auto;
	padding: 10px;
	border: 2px solid #bfbfbf;
	background: #EBF7FF;
}

.snb,#content {
	border: 2px solid #FFD8D8;
	background: #fff;
	text-align: left;
}

#content {
	margin-top: 10px;
	width: 900px;
	height: 800px;
	margin-left: 350px;
}

#footer {
	margin-top: 10px;
	width: auto;
	padding: 10px;
	border: 2px solid #bfbfbf;
	background: #EBF7FF;
}

#login {
	background: #fff;
	font-size: 12px;
	font-family: Tahoma, Geneva, sans-serif;
	color: #767676;
	line-height: normal;
}

#login fieldset {
	border: 1px solid #b7b7b7;
}

#login legend {
	visibility: hidden;
	position: absolute;
	top: 0;
	left: 0;
	width: 1px;
	height: 1px;
	font-size: 0;
	line-height: 0
}

#login .btn_login,#login .btn_login input {
	display: inline-block;
	overflow: visible;
	position: relative;
	height: 32px;
	margin: 0;
	padding: 0;
	border: 0;
	background: transparent url(img/btn_login.gif) no-repeat;
	font-size: 12px;
	font-weight: bold;
	color: #fff;
	line-height: 32px;
	text-decoration: none !important;
	vertical-align: middle;
	cursor: pointer
}

#login .btn_login {
	margin: 0 4px 0 0;
	background-position: left top;
}

#login .btn_login input {
	left: 4px;
	padding: 0 24px 0 36px;
	background-position: right top;
	*vertical-align: top;
}

#login .item {
	position: relative;
}

#login .i_label {
	display: block;
	position: static;
	top: 9px;
	font: bold 11px Tahoma;
}

#login .i_text {
	display: block;
	position: relative;
	border: 1px solid #b7b7b7;
	border-right-color: #e1e1e1;
	border-bottom-color: #e1e1e1;
	background: transparent;
	font: bold 11px Tahoma;
	height: 14px;
	color: #767676;
}

#login .help {
	float: none;
	display: block;
	width: 300px;
	position: relative;
	margin: 0 0px;
	border: 0;
	padding: 0px 0;
	border-top: 1px solid #d9d9d9;
	background: #fafafa;
	text-align: center;
	list-style: none;
	*zoom: 1
}

#login .help li {
	display: inline;
	float: none;
	margin: 0;
	padding: 0 6px 0 10px;
	border-left: 1px solid #c3c3c3 !important;
	line-height: 1
}

#login .help li.first {
	border: 0 !important
}

#login .help a {
	display: inline;
	float: none;
	padding: 0;
	background: none;
	font-size: 11px;
	font-family: Dotum, 돋움, Sans-serif;
	color: #767676;
	line-height: 1;
	text-decoration: none
}

#login .help a:hover,#login .help a:active,#login .help a:focus {
	color: #000;
	text-decoration: underline
}

#login .g_login .i_label {
	padding: 0px;
	left: 10px
}

#login .g_login .i_text {
	width: 290px;
	margin: 0 0 5px 0;
	padding: 0px 0 5px 5px
}

#login .g_login .btn_login {
	position: absolute;
	top: 103px;
	right: 28px
}

#login .g_login .keeping {
	float: none;
	height: 32px;
	margin: 10px 0;
	padding: 0;
	line-height: 32px
}

#login .g_login .keeping label {
	position: static;
	font-family: Dotum, 돋움, Thahoma;
	cursor: pointer
}

#login .g_login .i_check {
	width: 13px;
	height: 13px;
	margin: 0 4px 0 0;
	padding: 0;
	vertical-align: middle
}

#login .g_login .warning {
	display: none;
	float: none;
	margin: 10px 0;
	line-height: 1.4
}

#login .g_login .warning.open {
	display: block
}

#login .o_login {
	text-align: center
}

#login .o_login .i_label {
	left: 36px
}

#login .o_login .i_text {
	width: 200px;
	margin: 0;
	padding: 8px 0 6px 35px;
}

#login .o_login .btn_login {
	margin-top: 10px;
	margin-bottom: 10px;
}

#login.g_login .g_login,#login.o_login .o_login {
	display: block
}

.login_ok {
	margin-left: 150px;
}

.menu {
	overflow: visible;
	position: relative;
	border: 1px solid;
	font-size: 12px;
	font-family: Tahoma, Geneva, sans-serif;
	line-height: normal;
	white-space: nowrap;
	*zoom: 1
}

.menu:after {
	display: block;
	clear: both;
	content: ""
}

.menu .inset {
	overflow: visible;
	position: relative;
	z-index: 2;
	border: 1px solid;
	background-image: url(img/bg_bar.png);
	background-repeat: repeat-x;
	_background-image: none;
	*zoom: 1
}

.menu .inset:after {
	display: block;
	clear: both;
	content: ""
}

.menu ul {
	float: left;
	margin: -1px 0;
	padding: 0;
	list-style: none
}

.menu ul:after {
	display: block;
	clear: both;
	content: ""
}

.menu li {
	float: left;
	position: relative;
	z-index: 1
}

.menu a {
	float: left;
	position: relative;
	margin-bottom: -1px;
	padding: 10px 0 11px 0;
	*padding: 10px 0 10px 0;
	text-decoration: none !important;
	cursor: pointer
}

.menu a span {
	height: 14px;
	padding: 0 20px;
	font-weight: bold;
	color: #fff;
	vertical-align: top
}

.menu a span .i {
	display: inline-block;
	overflow: hidden;
	width: 8px;
	height: 8px;
	margin: 3px 0 0 7px;
	padding: 0;
	border: 0 !important;
	font-size: 0;
	line-height: 0;
	vertical-align: top;
	background: url(img/ico_sub.gif) no-repeat center top;
	opacity: .4;
	filter: alpha(opacity = 40)
}

.menu .gradient {
	display: none;
	_display: block;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 1;
	width: 100%;
	height: 35px;
	_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='bg_bar.png',
		sizingMethod='scale')
}

.menu .shadow {
	overflow: hidden;
	position: absolute;
	left: 0;
	bottom: -3px;
	z-index: 1;
	width: 100%;
	height: 0;
	margin: 1px -1px;
	border: 1px solid #ccc;
	border-top: 0;
	font-size: 0;
	line-height: 0
}

/* Menu Major */
.menu .major {
	float: left;
	position: relative;
	z-index: 2
}

.menu .major a {
	overflow: hidden
}

.menu .major span {
	border-left: 1px solid;
	border-right: 1px solid;
	_zoom: 1
}

/* Menu Hover */
.menu .major li.active {
	z-index: 2;
	margin: 0 -1px;
	_margin: 0;
	border-left: 1px solid;
	border-right: 1px solid;
	_border: 0
}

.menu .major li a:hover,.menu .major li a:active,.menu .major li a:focus
	{
	padding-left: 1px;
	padding-right: 1px;
	background-image: url(img/bg_bar_hover.png);
	_background-image: none
}

.menu .major li.active a {
	padding-left: 1px;
	padding-right: 1px;
	background-image: url(img/bg_bar_active_hover.png);
	_background-image: none
}

.menu .major li.active .i {
	background-position: center -50px;
	opacity: 1;
	filter: none
}

/* Menu Active */
.menu .major.m1 .m1,.menu .major.m2 .m2,.menu .major.m3 .m3,.menu .major.m4 .m4,.menu .major.m5 .m5,.menu .major.m6 .m6,.menu .major.m7 .m7,.menu .major.m8 .m8,.menu .major.m9 .m9,.menu .major.m10 .m10,.menu .major.m11 .m11,.menu .major.m12 .m12
	{
	z-index: 3;
	margin: 0 -1px;
	border-left: 1px solid;
	border-right: 1px solid
}

.menu .major.m1 .m1 a,.menu .major.m2 .m2 a,.menu .major.m3 .m3 a,.menu .major.m4 .m4 a,.menu .major.m5 .m5 a,.menu .major.m6 .m6 a,.menu .major.m7 .m7 a,.menu .major.m8 .m8 a,.menu .major.m9 .m9 a,.menu .major.m10 .m10 a,.menu .major.m11 .m11 a,.menu .major.m12 .m12 a
	{
	padding-left: 1px;
	padding-right: 1px;
	background: url(img/bg_bar_active.png) repeat-x;
	_background: none;
	_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='bg_bar_active.png',
		sizingMethod='scale')
}

.menu .major.m1 .m1 span,.menu .major.m2 .m2 span,.menu .major.m3 .m3 span,.menu .major.m4 .m4 span,.menu .major.m5 .m5 span,.menu .major.m6 .m6 span,.menu .major.m7 .m7 span,.menu .major.m8 .m8 span,.menu .major.m9 .m9 span,.menu .major.m10 .m10 span,.menu .major.m11 .m11 span,.menu .major.m12 .m12 span,.menu .major li.active span
	{
	border: 0
}

/* Menu Sub */
.menu .major .sub {
	display: none;
	position: absolute;
	top: 100%;
	left: -1px;
	width: 300px;
	*width: auto;
	margin: 2px 0 0 0
}

.menu .major li.active .sub {
	display: block
}

.menu .major .sub ul {
	margin: 0;
	padding: 1px;
	border: 1px solid #878787;
	border-top: 0;
	background: #fff
}

.menu .major .sub li {
	display: block;
	_display: inline;
	float: none;
	clear: both;
	width: 100%;
	*width: auto;
	margin: 0;
	border: 0
}

.menu .major .sub a {
	display: block;
	float: none;
	clear: both;
	width: 100%;
	_width: auto;
	margin: 0;
	padding: 0 !important;
	background-image: none !important;
	filter: none
}

.menu .major .sub a span {
	display: block;
	height: auto;
	padding: 5px 20px;
	border: 0;
	font-weight: normal;
	color: #767676;
	_zoom: 0
}

/* Menu Aside */
.menu .aside {
	float: right;
	position: relative;
	z-index: 2;
	border-left: 1px solid;
	background: url(img/bg_bar_end.png);
	_background: none
}

.menu .aside ul {
	padding-left: 5px;
	border-left: 1px solid
}

.menu .aside a {
	padding-left: 10px;
	*padding-top: 11px;
	opacity: .7
}

.menu .aside a:hover,.menu .aside a:active,.menu .aside a:focus {
	opacity: 1
}

.menu .aside span {
	padding: 0 12px 0 18px;
	font-weight: normal;
	*color: #eee;
	*zoom: 1
}

.menu .aside a:hover span,.menu .aside a:active span,.menu .aside a:focus span
	{
	*color: #fff
}

.menu .aside li span {
	display: inline-block;
	height: 14px
}

.menu .aside .m1 span {
	background: url(img/ico_history.png) no-repeat 0 center;
	_background: none;
	_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='ico_history.png',
		sizingMethod='crop')
}

.menu .aside .m2 span {
	background: url(img/ico_setup.png) no-repeat 0 center;
	_background: none;
	_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='ico_setup.png',
		sizingMethod='crop')
}

/* Menu Aside Sub */
.menu .aside .sub {
	display: none;
	position: absolute;
	top: 100%;
	right: -2px;
	width: 300px;
	*width: auto;
	margin: 2px 0 0
}

.menu .aside li.active .sub {
	display: block
}

.menu .aside .sub ul {
	float: right;
	margin: 0;
	padding: 1px;
	border: 1px solid #878787;
	border-top: 0;
	background: #fff
}

.menu .aside .sub li {
	display: block;
	_display: inline;
	float: none;
	clear: both;
	width: 100%;
	*width: auto;
	margin: 0;
	border: 0
}

.menu .aside .sub a {
	display: block;
	overflow: hidden;
	float: none;
	clear: both;
	width: 100%;
	_width: auto;
	margin: 0;
	padding: 0 !important;
	background-image: none !important;
	filter: none
}

.menu .aside .sub a span {
	display: inline-block;
	padding: 5px 20px;
	border: 0;
	background-image: none !important;
	font-weight: normal;
	color: #767676 !important;
	filter: none;
	_zoom: 0
}

.menu .aside .sub a:hover,.menu .aside .sub a:active,.menu .aside .sub a:focus
	{
	background: #eee
}

/* Menu Green */
.mc_green {
	border-color: #2d8685;
	border-bottom-color: #237473
}

.mc_green .inset {
	border-color: #58b2b1;
	border-bottom-color: #3c8e8d;
	background-color: #2e8686
}

.mc_green .major span {
	border-left-color: #419695;
	border-right-color: #2c7f7e
}

.mc_green .aside {
	border-color: #297878
}

.mc_green .aside ul {
	border-color: #3c9999
}

.mc_green .major.m1 .m1,.mc_green .major.m2 .m2,.mc_green .major.m3 .m3,.mc_green .major.m4 .m4,.mc_green .major.m5 .m5,.mc_green .major.m6 .m6,.mc_green .major.m7 .m7,.mc_green .major.m8 .m8,.mc_green .major.m9 .m9,.mc_green .major.m10 .m10,.mc_green .major.m11 .m11,.mc_green .major.m12 .m12,.mc_green .major li.active
	{
	border-color: #2d8685
}

.mc_green .major .sub a:hover,.mc_green .major .sub a:active,.mc_green .major .sub a:focus
	{
	background-color: #eaf3f3
}
</style> -->
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