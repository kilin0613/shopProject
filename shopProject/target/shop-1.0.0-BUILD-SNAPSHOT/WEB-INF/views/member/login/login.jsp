<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">	//히스토리
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>



<style>
.loginHeaderV3 {
	padding: 76px 0 60px 0;
	height: 20px;
	text-align: center;
}

.inputV3 {
	border: 1px solid #ccc;
	padding: 15px 10px 14px 10px;
	height: 50px;
	margin: 0;
	width: 100%;
	font-size: 14px;
	line-height: 21px;
	box-sizing: border-box;
	-webkit-appearance: none;
	-webkit-border-radius: 0;
	color: #000;
}

.loginBoxWrap {
	position: relative;
	max-width: 420px;
	margin: 0 auto;
	font-family: "AppleSDGothicNeo", "Apple SD Gothic Neo",
		"Apple SD 산돌고딕 Neo", sans-serif;
}
</style>

<meta charset="EUC-KR">
<title>로그인</title>
</head>
<body onload="noBack()">

	<div class="loginBoxWrap">
		<!-- <div class="loginHeaderV3">
			<img src="resources/image/logo.jpg"/>
		</div> -->
		<form name="loginform" action="login" method="post">
			<p>
				<label>아이디</label><br> <input type="text" name="id"
					class="inputV3" title="아이디" placeholder="아이디를 입력해 주세요.">
			</p>
			<p>
				<label>비밀번호</label><br> <input type="password" name="password"
					class="inputV3" title="패스워드" placeholder="비밀번호를 입력해 주세요.">
			</p>
			<input type="submit" value="로그인">
		</form>
	</div>


</body>
</html>