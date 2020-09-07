<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<style>
.logOut_button {
	margin-right: 20px;
	margin-top: 20px;
	float: right;
}

#topMenu {
	height: auto;
	display: table;
	border-collapse: collapse;
	border: none;
	width: 100%;
}

#topMenu ul {
	height: 50px;
	list-style-type: none;
	color: white;
	background-color: #2d2d2d;
	vertical-align: middle;
	text-align: center;
	display: table-row;
}

nav li {
	margin-left: auto;
	margin-right: auto;
	line-height: 30px;
	display: inline-block;
	text-align: center;
}

#search_form {
	display: inline-block;
	text-align: center;
}

#topMenu .menuLink {
	text-decoration: none;
	color: white;
	display: block;
	width: 150px;
	font-size: 12px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
}

#topMenu .menuLink:hover {
	color: red;
	background-color: #4d4d4d;
}

.search:hover {
	background-color: #2d2d2d;
}
</style>


<title>Insert title here</title>
</head>
<body>



	<nav id="topMenu">
		<ul>
			<li><a class="menuLink"
				href="${pageContext.request.contextPath}/">메인화면</a></li>
			<li><a class="menuLink"
				href="${pageContext.request.contextPath}/infoModify">개인정보수정</a></li>
			<li><a class="menuLink"
				href="${pageContext.request.contextPath}/favorites">즐겨찾기</a></li>
			<li><a class="menuLink"
				href="${pageContext.request.contextPath}/delivery">배송조회</a></li>
			<li><a class="menuLink"
				href="${pageContext.request.contextPath}/basket">장바구니</a></li>
			<c:if test="${loginMember == null}">
				<li><a class="menuLink"
					href="${pageContext.request.contextPath}/findPassword"> 비밀번호 찾기</a>
				</li>
				<li><a class="menuLink"
					href="${pageContext.request.contextPath}/signUp"> 회원가입 </a></li>
				<li><a class="menuLink"
					href="${pageContext.request.contextPath}/login"> logIn </a></li>
			</c:if>
			<c:if test="${loginMember != null}">
				<label>'${loginMember.name}' 님 환영합니다!</label>
				<form action="logOut" method="post" class="logOut_button">
					<input type="submit" value="logOut" formaction="logOut"
						formmethod="post">
				</form>

			</c:if>

		</ul>
		<ul>
			<li class="search">
				<form action="${pageContext.request.contextPath}/search"
					method="post">
					<input type="text" name="keyword" /> <input type="submit"
						value="검색" />
				</form>
			</li>
		</ul>
	</nav>



</body>
</html>