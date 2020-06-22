<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="resources/js/checkSignUp.js"></script>
<script src="resources/js/addressAPI.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js?autoload=false"></script>

<link rel="stylesheet" href="resources/css/signUp.css" type="text/css" />

<title>회원정보 수정</title>

</head>
<body>
	<div id="top1">
		<div id="top2">

			<h4>개인정보 수정</h4>
				<form method="get" action="withdrawal">
					<input type="submit" value="탈퇴하기"/>
				</form>

			<form:form modelAttribute="memberVo" action="infoModify"
				method="post" onsubmit="return validateSignUp()">
				<p>
					<label>아이디</label> <label style="font-size: 8pt; color: red;">*변경불가항목</label>
					<form:input path="id" class="btn_info" id="id"
						value="${loginMember.id}" readonly="true" />

				</p>
				<p>
					<label>비밀번호</label>
					<form:password path="password" class="btn_info" id="password" />
					<br> <label>비밀번호확인</label>
					<form:password path="passwordCheck" class="btn_info" />
				</p>
				<p>
					<label>나이</label>
					<form:input path="age" class="btn_info" id="age"
						value="${loginMember.age}" />
				</p>
				<p>
					<label>성별</label>
					<form:radiobutton path="sex" value="M" label="남자"
						checked="${loginMember.sex}" disabled="true" />
					<form:radiobutton path="sex" value="W" label="여자"
						checked="${loginMember.sex}" disabled="true" />
					<label style="font-size: 8pt; color: red;">*변경불가항목</label>
				</p>
				<p>
					<label>주소</label>
					<button type="button" onClick="execPostCode()">찾기</button>
					<form:input path="address" id="address" class="btn_info"
						readonly="true" value="${loginMember.address}" size="50" />
					<br> <label>상세주소</label>
					<form:input path="address_detail" class="btn_info" size="50" />
				</p>
				<p>
					<label>이메일</label>
					<form:input path="email" class="btn_info" id="email"
						value="${loginMember.email}" />
				</p>
				<p>
					<label>전화번호</label>
					<form:input path="phone_number" class="btn_info" id="phone_number"
						value="${loginMember.phone_number}" />
				</p>
				<p>
					<label>주민등록번호</label> <label style="font-size: 8pt; color: red;">*변경불가항목</label>
					<form:input path="identity_number" class="btn_info"
						id="identity_number" readonly="true"
						value="${loginMember.identity_number}" />

				</p>
				<form:input path="customer_id" type="hidden"
					value="${loginMember.customer_id}" />
				<input type="submit" value="수정완료" id="btn_sumbit" />
			</form:form>
		</div>
	</div>


</body>
</html>