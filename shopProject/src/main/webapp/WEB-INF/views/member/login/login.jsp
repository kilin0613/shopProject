<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">	//�����丮
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
		"Apple SD �굹��� Neo", sans-serif;
}
</style>

<meta charset="EUC-KR">
<title>�α���</title>
</head>
<body onload="noBack()">

	<div class="loginBoxWrap">
		<!-- <div class="loginHeaderV3">
			<img src="resources/image/logo.jpg"/>
		</div> -->
		<form name="loginform" action="login" method="post">
			<p>
				<label>���̵�</label><br> <input type="text" name="id"
					class="inputV3" title="���̵�" placeholder="���̵� �Է��� �ּ���.">
			</p>
			<p>
				<label>��й�ȣ</label><br> <input type="password" name="password"
					class="inputV3" title="�н�����" placeholder="��й�ȣ�� �Է��� �ּ���.">
			</p>
			<input type="submit" value="�α���">
		</form>
	</div>


</body>
</html>