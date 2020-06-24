<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<style>
#div_menu {
	width: 1200px;
	/* max-height: 300px; */
	/* display: inline-block;  */
	text-align: center;
}

#top_style {
	width: auto;
	height: 150px;
	border-bottom: thin solid gray;
}
</style>

<title>Insert title here</title>
</head>
<body>
	<div id="top_style">
		<div style="width: 1200px; height: 100%; display: inline-block;">
			<div style="width: 100px; height: 100%; display: inline-block;">
				<img
					src="${pageContext.request.contextPath}/resources/image/logo.jpg"
					style="float: left; width: 100px; height: 100px; display: inline-block;"/>
					
				<div id="div_menu">
					
					<form method="post" action="logOut">
						<br>
						<a href="${pageContext.request.contextPath}/infoModify">개인정보수정</a> |
						<a href="${pageContext.request.contextPath}/favorites">즐겨찾기 </a> |
						<a href="${pageContext.request.contextPath}/delivery"> 배송조회 </a> |
						<a href="${pageContext.request.contextPath}/basket"> 장바구니</a> |
					<c:if test="${loginMember == null}">
						<a href="${pageContext.request.contextPath}/findPassword"> 비밀번호 찾기</a> |
						<a href="${pageContext.request.contextPath}/signUp"> 회원가입 </a>|
						<a href="${pageContext.request.contextPath}/login"> logIn </a>  |
						</c:if>
					<c:if test="${loginMember != null}"> ${loginMember.name} 님 환영합니다!
							 <input type="submit" value="logOut"/>
					</c:if>
				</form>
					<form action="search" method="post">
							<input type="text" name = "keyword"/> 
							<input type="submit" value="검색" />
					</form>
			</div>
		</div>
		
	</div>
</div>
</body>
</html>