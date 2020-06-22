<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
function start_ajax(){	
	var id = $("#id").val(); 
	var email = $("#email").val();
	$.ajax({
        type:"POST",
        url:"findPassword",
        data:{"id": id, "email":email},
        dataType: "json",
        success: function(){
        	alert("입력하신 이메일로 임시비밀번호를 보냈습니다.");
        	location.href = "login";
        } ,
        error:function(){
        	alert("아이디와 이메일을 확인해주세요");
        }
    });
    return false;
};

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
<meta charset="UTF-8">
<title>비밀번호찾기</title>
</head>
<body>


	<div class="loginBoxWrap">

		<form method="post" id = "findForm">
			<p>
				<label>아이디</label><br> <input type="text" id="id" 
					class="inputV3" title="아이디" placeholder="아이디를 입력해 주세요.">
			</p>
			<p>
				<label>이메일</label><br> <input type="text" id="email"
					class="inputV3" title="이메일" placeholder="가입한 이메일을 입력해 주세요.">
			</p>
			<input type="button" onclick = "start_ajax()" value="입력">
		</form>
	</div>
</body>
</html>