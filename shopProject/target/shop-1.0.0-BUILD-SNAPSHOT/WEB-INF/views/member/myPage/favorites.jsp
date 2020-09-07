<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<style type="text/css">
 .form_style {
	text-align: end;
	margin-top: 11px;
} 
</style>
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../../common/top.jsp" />

	<div
		style="height: auto; min-height: 1000px; display: inline-block; width:100%;">
		<c:forEach var="favoriteProduct" items="${favoriteProduct}">
			<div
				style="width: 310px; height: 300px; border: thin solid #000000; margin: 40px; display: inline-block; text-align: center;">

				<div
					style="width: 310px; height: 200px; border: thin solid #000000; display: inline-block;">
					<a href="product_detail/?product_id=${favoriteProduct.product_id}"><img
						src="data:image:png;base64,${favoriteProduct.blobToBase64}"
						style="max-width: 190px; max-height: 190px;" /> </a>
				</div>
				<span><br>${favoriteProduct.name}</span><br>
				<fmt:formatNumber value="${favoriteProduct.price}"
					pattern="###,###,###" />
				\ <br>
				<form action="favoritesDelete" method="post" class="form_style">
					<input type="hidden" name="product_id"
						value="${favoriteProduct.product_id}"> <input
						type="submit" value="삭제" />
				</form>

			</div>
		</c:forEach>

	</div>

</body>
</html>