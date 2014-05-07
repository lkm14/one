<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href='<c:url value="/resources/css/board.css" />' type="text/css" />
<script type="text/javascript" src='<c:url value="/resources/js/jquery-2.0.2.js" />'></script>
<script type="text/javascript" src='<c:url value="/resources/js/regist.js" />'></script>
<script type="text/javascript">
function goFocus(){
	if (!document.getElementById('member_zipcode').value){
		alert('검색창을 입력해 주세요');
		document.getElementById('btnSearchButton').focus();
	} else {
		document.getElementById('addrPut').focus();
	}
}
</script>
</head>
<body>
<form:form action="regist" id="frmregist" method="post" commandName="memberVO">
<table>
	<caption>회원 가입</caption>
	<tr>
		<th>아이디</th>
		<td><input type="text" name="member_id" id="member_id" 
		autofocus="autofocus" value="${memberVO.member_id}"/>
			<input type="button" name="check_id" value="ID중복체크"/>
			<div id="member_id_msg" cssclass="msg_warn"><form:errors path="member_id" cssClass="msg_warn" /><br/></div>
		</td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="member_name" value="${memberVO.member_name}" /><br/>
			<form:errors path="member_name" cssClass="msg_warn" /><br/>
		</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="member_pwd" id="member_pwd" value="${memberVO.member_pwd}"/><br/>
			<form:errors path="member_pwd" cssClass="msg_warn" /><br/>
		</td>
	</tr>
	<tr>
		<th>비밀번호 확인</th>
		<td><input type="password" name="member_pwd_confirm" id="member_pwd_confirm"
		value="${memberVO.member_pwd}"/>
			<div id="member_pwd_confirm_msg" ></div>
			</td>
	</tr>
	<tr>
		<th>비밀번호 찾기 질문</th>
		<td><input type="text" name="member_pwd_hint" class="input_text_300" value="${memberVO.member_pwd_hint}" /><br/>
			<form:errors path="member_pwd_hint" cssClass="msg_warn" /><br/>
		</td>
	</tr>
	<tr>
		<th>비밀번호 찾기 답</th>
		<td><input type="text" name="member_pwd_answer" class="input_text_300" value="${memberVO.member_pwd_answer}" /><br/>
			<form:errors path="member_pwd_answer" cssClass="msg_warn" /><br/>
		</td>
	</tr>
	<tr>
		<th>성별</th>
		<td><input type="radio" name="member_gender" value="1" checked="checked" /> 남
			<input type="radio" name="member_gender" value="2" /> 여
		</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="text" name="member_email" value="${memberVO.member_email}" id="member_email"/><br/>
			<div id="member_email_msg" cssclass="msg_warn">
			<form:errors path="member_email" cssClass="msg_warn" /></div><br/>
		</td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td><input type="text" name="member_phone" value="${memberVO.member_phone}" /><br/>
			<form:errors path="member_phone" cssClass="msg_warn" /><br/>
		</td>
	</tr>
	<tr>
		<th>우편번호</th>
		<td><input type="text" name="member_zipcode" class="textZipcode" value="${memberVO.member_zipcode}"
		id="member_zipcode" readonly="readonly" onclick="goFocus();"/>
			<input type="button" value="검색" id="btnSearchButton" /><br/>
			<form:errors path="member_zipcode" cssClass="msg_warn" /><br/>
		</td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="member_addr1" value="${memberVO.member_addr1}"
		class="input_text_300" id="member_addr1" /><br/>
			<form:errors path="member_addr1" cssClass="msg_warn" /><br/>
		</td>
	</tr>
	<tr>
		<th>상세주소</th>
		<td><input type="text" id="addrPut" name="member_addr2" value="${memberVO.member_addr2}"
		class="input_text_300"/><br/>
			<form:errors path="member_addr2" cssClass="msg_warn" /><br/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="가입완료" id="btnRegistOk"/>
		</td>
	</tr>
</table>
</form:form>
</body>
</html>