function validateSignUp() {
		var id = document.getElementById("id");
		var password = document.getElementById("password");
		var passwordCheck = document.getElementById("passwordCheck");
		var name = document.getElementById("name");
		var age = document.getElementById("age");
		var sex = document.getElementById("sex");
		var address = document.getElementById("address");
		/* var address_detail = document.getElementById("address_detail"); */
		var email = document.getElementById("email");
		var phone_number = document.getElementById("phone_number");
		var identity_number = document.getElementById("identity_number");
		

		if (id.value == "" || id == null) {
			alert("아이디를 입력해주세요");
			return false;
		}
		if (password.value == "" || password == null) {
			alert("비밀번호를 입력해주세요");
			return false;
		}
		if (name.value == "" || name == null) {
			alert("이름를 입력해주세요");
			return false;
		}		
		if (age.value <=0 || age == null || age.value=="") {
			alert("나이를 다시 입력해주세요");
			return false;
		}
		if (!address.value) {
			alert("주소를 다시 입력해주세요");
			return false;
		}
		if (email.value == "" || email == null) {
			alert("이메일를 입력해주세요");
			return false;
		}
		if (phone_number.value == "" || phone_number == null) {
			alert("전화번호를 입력해주세요");
			return false;
		}
		if (identity_number.value == "" || identity_number == null) {
			alert("주민등록번호를 입력해주세요");
			return false;
		}
	};