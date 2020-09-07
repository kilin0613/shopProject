$(document).ready(function() {
	$("form").submit(function(e) {
		e.preventDefault();
		var loginID = $('#id').val();
		var loginPW = $('#password').val();
		if (loginID == "") {
			$('#errorMsg').show();
			$('#errorMsg').html("아이디를 입력해주세요");
			return false;
		} else if (loginPW == "") {
			$('#errorMsg').show();
			$('#errorMsg').html("패스워드를 입력해주세요");
			return false;
		}
		$.ajax({
			type : "POST",
			url : "login",
			data : {"id" : loginID,"password" : loginPW},
			dataType : "json",
			success : function(data) {
				if (data == false) {
					$('#errorMsg').show();
					$('#errorMsg').html("등록된 회원정보가 없습니다");
					$("#id").focus();
				} else if(data == true){
					window.location="/shop";
				}
			},
			error: function(request,status,error){
				 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
});