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

	<div id="menu" class="menu mc_green">
		<div class="inset">
			<div class="major">
				<ul>
					<li class="m1"><a href="#"><span>회사소개</span></a></li>
					<li class="m2"><a href="#"><span>야구 상품</span></a>
						<div class="sub">
							<ul>
								<li><a href="#"><span>두산베어스 상품</span></a></li>
								<li><a href="#"><span>삼성라이온즈 상품</span></a></li>
								<li><a href="#"><span>기아타이거즈 상품</span></a></li>
								<li><a href="#"><span>넥센히어로즈 상품</span></a></li>
							</ul>
						</div></li>
					<li class="m4"><a href="#"><span>공지사항</span></a></li>
					<li class="m3"><a href="#"><span>자유게시판</span></a></li>
					<li class="m4"><a href="#"><span>질문게시판</span></a></li>
				</ul>
			</div>
			<div class="aside">
				<ul>
					<!-- 	<li class="m1"><a href="#"><span>관리자</span></a></li> -->
					<li class="m2"><a href="#"><span>로그아웃</span></a></li>
					<li class="m2"><a href="#"><span>마이페이지</span></a></li>
					<li class="m2"><a href="#"><span>장바구니</span></a></li>
				</ul>
			</div>
			<span class="gradient"></span>
		</div>
		<span class="shadow"></span>
	</div>
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript">
		jQuery(function($) {

			// Menu
			var menu = $('div.menu');
			var major = $('div.major');
			var li_list = major.find('>ul>li');

			// Selected
			function onselectmenu() {
				var myclass = [];

				$(this).parent('li').each(function() {
					myclass.push($(this).attr('class'));
				});

				myclass = myclass.join(' ');
				if (!major.hasClass(myclass))
					major.attr('class', 'major').addClass(myclass);
			}

			// Show Menu
			function show_menu() {
				t = $(this);
				li_list.removeClass('active');
				t.parent('li').addClass('active');
				// IE7 or IE7 documentMode bug fix
				if ($.browser.msie) {
					var v = document.documentMode
							|| parseInt($.browser.version);
					if (v == 7) {
						var subWidth = t.next('div.sub').eq(-1).width();
						t.next('div.sub').css('width', subWidth);
					}
				}
			}
			li_list.find('>a').click(onselectmenu).mouseover(show_menu).focus(
					show_menu);

			// Hide Menu
			function hide_menu() {
				li_list.removeClass('active');
			}
			menu.mouseleave(hide_menu);
			li_list.find('div.sub>ul').mouseleave(hide_menu);

			//icon
			major.find('div.sub').prev('a').find('>span').append(
					'<span class="i"></span>');

			// Aside
			var aside_li = $('.menu>.inset>.aside>ul>li');
			var aside_a = $('.menu>.inset>.aside>ul>li>a');

			// Show Aside
			function show_aside() {
				li_list.removeClass('active');
				aside_li.removeClass('active');
				$(this).parent('li').addClass('active');

				// IE7 or IE7 documentMode bug fix
				if ($.browser.msie) {
					var v = document.documentMode
							|| parseInt($.browser.version);

					if (v == 7) {
						var sub = $(this).next('div.sub').eq(-1);
						sub.css('width', '').css('width', sub.width() + 'px');
					}
				}
			}
			aside_a.mouseover(show_aside).focus(show_aside);

			// Hide Aside
			function hide_aside() {
				aside_li.removeClass('active');
			}
			menu.mouseleave(hide_aside);
			aside_li.find('div.sub>ul').mouseleave(hide_aside);

			// Hide Menu & Aside
			$('*:not(".menu *")').focus(hide_menu).focus(hide_aside);

		});
	</script>
</body>
</html>