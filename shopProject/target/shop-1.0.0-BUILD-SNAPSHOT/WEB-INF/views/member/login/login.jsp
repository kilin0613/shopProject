<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/loginValueCheck.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/spacebarEvent.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/errorMsg.css" type="text/css" />

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
		"Apple SD �굹��� Neo", sans-serif;
}

.submit_box{
background: #000;
    -webkit-appearance: none;
    -webkit-border-radius: 0;
    height: 60px;
    line-height: 64px;
    text-align: center;
    width: 100%;
    color: #fff;
    font-size: 18px;
    font-weight: bold;
    border: 0;
    margin: 0;
    padding: 0;
}

</style>

<meta charset="EUC-KR">
<title>�α���</title>
</head>
<body>

	<div class="loginBoxWrap">
		<form action="login" method="post">
			<p>
				<label>���̵�</label><br> <input type="text" name="id" id="id" onkeydown="preventSpacebar();"
					class="inputV3" title="���̵�" placeholder="���̵� �Է��� �ּ���.">
			</p>
			<p>
				<label>��й�ȣ</label><br> <input type="password" name="password" id="password" onkeydown="preventSpacebar();"
					class="inputV3" title="�н�����" placeholder="��й�ȣ�� �Է��� �ּ���.">
			</p>
			
			<span class="errorMsg" id="errorMsg" name= "errorMsg" hidden="true"></span>
			<br>
	
			<input type="submit" value="�α���" class="submit_box">
		</form>
	</div>


</body>
</html>