<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

	
	<script src="${pageContext.request.contextPath}/resources/js/checkSignUp.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/addressAPI.js"></script>
	<script	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js?autoload=false"></script>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/signUp.css" type="text/css" />

<title>회원가입</title>

</head>
<body>
	<div id="top1">
		<div id="top2">
			<form:form modelAttribute="memberVo" action="signUp" method="post"
				onsubmit="return validateSignUp();">
				<p>
					<label>아이디</label>
					<form:input path="id" class="btn_info" id="id" />
				</p>
				<p>
					<label>비밀번호</label>
					<form:password path="password" class="btn_info" id="password" />
					<br> <label>비밀번호확인</label>
					<form:password path="passwordCheck" class="btn_info" />
				</p>
				<p>
					<label>이름</label>
					<form:input path="name" class="btn_info" id="name"/>
				</p>
				<p>
					<label>나이</label>
					<form:input path="age" class="btn_info" id="age"/>
				</p>
				<p>
					<label>성별</label>
					<form:radiobutton path="sex" value="M" label="남자" checked="true"/>
					<form:radiobutton path="sex" value="W" label="여자" />
				</p>
				<p>
					<label>주소</label>
					<button type="button" onClick="execPostCode()">찾기</button>
					<form:input path="address" id="address" class="btn_info"
						readonly="true"/>
					<br>
					<label>상세주소</label>
					<form:input path="address_detail" class="btn_info" />
				</p>
				<p>
					<label>이메일</label>
					<form:input path="email" class="btn_info" id="email" />
				</p>
				<p>
					<label>전화번호</label>
					<form:input path="phone_number" class="btn_info" id="phone_number"/>
				</p>
				<p>
					<label>주민등록번호</label>
					<form:input path="identity_number" class="btn_info" id="identity_number"/>
				</p>
				<input type="submit" value="가입완료" id="btn_sumbit">
			</form:form>
		</div>
	</div>
</body>
</html>
