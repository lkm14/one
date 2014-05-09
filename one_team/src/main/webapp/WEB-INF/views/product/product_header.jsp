<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://html.nhndesign.com/ui_library/css/shCore.css"> 
<link rel="stylesheet" type="text/css" href="http://html.nhndesign.com/ui_library/css/shThemeDefault.css"> 
<link rel="stylesheet" type="text/css" href="http://html.nhndesign.com/ui_library/css/default.css"> 
<script type="text/javascript" src="http://html.nhndesign.com/ui_library/js/shCore.js"></script> 
<script type="text/javascript" src="http://html.nhndesign.com/ui_library/js/shBrushCss.js"></script> 
<script type="text/javascript" src="http://html.nhndesign.com/ui_library/js/shBrushXml.js"></script> 
<script type="text/javascript" src="http://html.nhndesign.com/ui_library/js/shBrushJScript.js"></script> 
<script type="text/javascript" src="http://html.nhndesign.com/ui_library/js/default.js"></script>
<style type="text/css">
/* UI Object */
.tab_line{padding:0 0 35px 0}
.tab_line ul{position:relative;margin:0;padding:0;border-bottom:1px solid #ccc;font-family:Tahoma, Sans-serif;font-size:12px;list-style:none;*zoom:1}
.tab_line ul:after{display:block;clear:both;content:""}
.tab_line li{float:left;}
.tab_line li a{float:left;position:relative;border:1px solid #eee;border-bottom-color:#ccc;background:#fafafa;color:#666;text-decoration:none}
.tab_line li a span{display:inline-block;padding:6px 70px 6px 50px;letter-spacing:-1px;cursor:pointer}
.tab_line li ul{display:none;overflow:hidden;position:absolute;top:40px;left:0;width:100%;margin:0;padding:0;border:0;white-space:nowrap;list-style:none;*zoom:1}
.tab_line li ul:after{display:block;clear:both; content:""}
.tab_line li li{overflow:visible;position:relative;left:-1px;padding:0 10px;border-left:1px solid #ddd}
.tab_line li li a{margin:0;padding:0;border:0 !important;background:transparent;font-weight:normal;color:#666 !important;letter-spacing:normal}
.tab_line.m1 .m1 a,
.tab_line.m2 .m2 a,
.tab_line.m3 .m3 a,
.tab_line.m4 .m4 a,
.tab_line.m5 .m5 a,
.tab_line.m6 .m6 a,
.tab_line.m7 .m7 a,
.tab_line.m8 .m8 a,
.tab_line.m9 .m9 a,
.tab_line.m10 .m10 a,
.tab_line.m11 .m11 a,
.tab_line.m12 .m12 a{margin-top:-1px;border:1px solid #ccc;border-bottom:1px solid #fff;background:transparent;color:#333}
.tab_line.m1 .m1 a span,
.tab_line.m2 .m2 a span,
.tab_line.m3 .m3 a span,
.tab_line.m4 .m4 a span,
.tab_line.m5 .m5 a span,
.tab_line.m6 .m6 a span,
.tab_line.m7 .m7 a span,
.tab_line.m8 .m8 a span,
.tab_line.m9 .m9 a span,
.tab_line.m10 .m10 a span,
.tab_line.m11 .m11 a span,
.tab_line.m12 .m12 a span{padding-top:7px;font-weight:bold}
.tab_line.m1 .m1 ul,
.tab_line.m2 .m2 ul,
.tab_line.m3 .m3 ul,
.tab_line.m4 .m4 ul,
.tab_line.m5 .m5 ul,
.tab_line.m6 .m6 ul,
.tab_line.m7 .m7 ul,
.tab_line.m8 .m8 ul,
.tab_line.m9 .m9 ul,
.tab_line.m10 .m10 ul,
.tab_line.m11 .m11 ul,
.tab_line.m12 .m12 ul{display:block}
.tab_line li li a:hover,
.tab_line li li a:active,
.tab_line li li a:focus,
.tab_line.s1 .s1 a,
.tab_line.s2 .s2 a,
.tab_line.s3 .s3 a,
.tab_line.s4 .s4 a,
.tab_line.s5 .s5 a,
.tab_line.s6 .s6 a,
.tab_line.s7 .s7 a,
.tab_line.s8 .s8 a,
.tab_line.s9 .s9 a,
.tab_line.s10 .s10 a,
.tab_line.s11 .s11 a,
.tab_line.s12 .s12 a{font-weight:bold; color:#333 !important;letter-spacing:-1px; line-height: 10px;}
.tab_line.js_off{padding:0}
.tab_line.js_off ul{border:0}
.tab_line.js_off li{float:none}
.tab_line.js_off li a{display:block;float:none;border:1px solid #eee !important;border-bottom-color:#ccc !important;background:#fafafa !important;font-weight:bold;color:#333}
.tab_line.js_off li ul{display:block;position:static;left:0;top:0;padding:5px 0}
.tab_line.js_off li li{display:inline}
.tab_line.js_off li li a{display:inline;border:0 !important;background:none !important;font-weight:normal !important;color:#333 !important;letter-spacing:normal}
.tab_line.js_off li li a:hover,
.tab_line.js_off li li a:active,
.tab_line.js_off li li a:focus{text-decoration:underline}
/* //UI Object */
</style>
</head>
<body>
<div id="code_origin" class="code_tmpl">
<!-- UI Object -->
<div class="tab_line m1 s1 js_off">
	<ul>
	<li class="m1"><a href="#"><span>글러브</span></a>
		<ul>
		<li class="s1"><a href="#">왼손용</a></li>
		<li class="s2"><a href="#">오른손용</a></li>
		<li class="s3"><a href="#">Menu 1-3</a></li>
		</ul>
	</li>
	<li class="m2"><a href="#"><span>야구화</span></a>
		<ul>
		<li class="s1"><a href="#">고정형 스파이크</a></li>
		<li class="s2"><a href="#">교체형 스파이크</a></li>
		<li class="s3"><a href="#">포인트 화</a></li>
		<li class="s3"><a href="#">인조잔디 화</a></li>
		<li class="s3"><a href="#">트레이닝 화</a></li>
		</ul>
	</li>
	<li class="m3"><a href="#"><span>배트</span></a>
		<ul>
		<li class="s1"><a href="#">나무 배트</a></li>
		<li class="s2"><a href="#">알류미늄 배트</a></li>
		</ul>
	</li>
	<li class="m4"><a href="#"><span>야구공</span></a>
		<ul>
		<li class="s1"><a href="#">스카이라인</a></li>
		<li class="s2"><a href="#">맥 스</a></li>
		<li class="s3"><a href="#">빅라인</a></li>
		</ul>
	</li>
	<li class="m5"><a href="#"><span>장갑</span></a>
		<ul>
		<li class="s1"><a href="#">수비 장갑</a></li>
		<li class="s2"><a href="#">주루용 장갑</a></li>
		<li class="s3"><a href="#">포인트 화</a></li>
		</ul>
	</li>
	<li class="m6"><a href="#"><span>가방</span></a>
		<ul>
		<li class="s1"><a href="#">개인용</a></li>
		<li class="s2"><a href="#">팀장비</a></li>
		</ul>
	</li>
	</ul>
</div>
<!-- //UI Object -->
</div>

<div id="code_origin2">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
jQuery(function($){
	var tab = $('.tab_line');
	tab.removeClass('js_off');
	function onSelectTab(){
		var t = $(this);
		var myclass = [];
		t.parentsUntil('.tab_line:first').filter('li').each(function(){
			myclass.push( $(this).attr('class') );
		});
		myclass = myclass.join(' ');
		if (!tab.hasClass(myclass)) tab.attr('class','tab_line').addClass(myclass);
	}
	tab.find('li>a').click(onSelectTab).focus(onSelectTab);
});
</script>
</div>
</body> 
</html>
