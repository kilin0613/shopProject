<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js?autoload=false"></script>
<script>
function execPostCode(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
        	document.getElementById('sample3_address').value = data.roadAddress;
        }
    }).open();
    
}
</script>

<style>

	body {
		font-family: "helvetica", "AppleSDGothicNeo", "Apple SD Gothic Neo",
					"Roboto", "Noto Sans", "Gulim", sans-serif;
		font-size: 14px;
		color: #000;
		line-height: 1.5;
	}
	
	.btn_info {
		width: 100%;
		height: 50px;
		border: 1px solid #e5e5e5;
		box-sizing: border-box;
		background-color: #ffffff;
		font-size: 16px;
		padding: 0 9px 2px 9px;
		box-sizing: border-box !important;
		-webkit-transition: border 0.2s ease-in-out;
		-moz-transition: border 0.2s ease-in-out;
		-o-transition: border 0.2s ease-in-out;
		transition: border 0.2s ease-in-out;
	}
	
	#btn_sumbit {
		display: block;
		width: 100%;
		height: 50px;
		border: 1px solid #000000;
		line-height: 47px;
		color: #000000;
		box-sizing: border-box;
		padding: 1px 10px 0 10px;
		font-size: 14px;
		text-align: center;
	}
	
	
	
	#top1 {
		border: thin #001010;
		min-width: 320px;
		height: 100%;
	}
	
	#top2 {
		border: thin solid gray;
		max-width: 385px;
		min-height: 100%;
		padding: 0 15px 100px 15px;
		box-sizing: border-box;
		position: relative;
		margin: 0 auto;
	}
</style>

<meta charset="EUC-KR">
<title>회원가입</title>

</head>
<body>
	<div id="top1">
		<div id="top2">
			<form:form modelAttribute="memberVo" action="signUp" method="post"
				name="userInfo">
				<p>
					<label>아이디</label>
					<form:input path="id" class="btn_info" />
				</p>
				<p>
					<label>비밀번호</label>
					<form:password path="password" class="btn_info" />
					<br> <label>비밀번호확인</label>
					<form:password path="passwordCheck" class="btn_info" />
				</p>
				<p>
					<label>이름</label>
					<form:input path="name" class="btn_info" />
				</p>
				<p>
					<label>나이</label>
					<form:input path="age" class="btn_info"/>
				</p>
				<p>
					<label>성별</label>
					<form:radiobutton path="sex" value="M" label="남자" />
					<form:radiobutton path="sex" value="W" label="여자" />
				</p>
				<p>
					<label>주소</label>
					<button type="button" onClick="execPostCode()">찾기</button>
					<form:input path="address" id="sample3_address" class="btn_info" readonly="true"/>
					<br><label>상세주소</label>
					<form:input path="address_detail" class="btn_info"/>

				</p>
				<p>
					<label>이메일</label>
					<form:input path="email" class="btn_info" />
				</p>
				<p>
					<label>전화번호</label>
					<form:input path="phone_number" class="btn_info" />
				</p>
				<p>
					<label>주민등록번호</label>
					<form:input path="identity_number" class="btn_info" />
				</p>
				<input type="submit" value="가입완료" id="btn_sumbit">
			</form:form>
		</div>
	</div>
</body>
</html>