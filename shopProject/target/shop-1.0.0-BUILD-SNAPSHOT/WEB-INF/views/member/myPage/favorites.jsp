<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../../common/top.jsp"/>
	<jsp:include page="../../common/side.jsp"/>
	<div
		style="border: thin solid #000000; height: auto; min-height: 1000px; display: inline-block;">
		<div style="width: 1200px; height: 1000px;">
			<c:forEach var="favoriteProduct" items="${favoriteProduct}">
			<div
				style="width: 310px; height: 300px; border: thin solid #000000; margin: 40px; display: inline-block; text-align: center;">
				
					<div style="width: 310px; height: 200px; border: thin solid #000000; display: inline-block;" >
					<a href="product_detail/?product_id=${favoriteProduct.product_id}"><img
							src="data:image:png;base64,${favoriteProduct.blobToBase64}"
							style="max-width: 190px; max-height: 190px;" /> </a>
						</div>
						상품명 : ${favoriteProduct.name}<br>
						가격    : <fmt:formatNumber value="${favoriteProduct.price}" pattern="###,###,###" />\
						<br>
						<form  style="text-align: end; margin-top:32px;" action="favoritesDelete" method="post">
							<input type="hidden" name="product_id" value="${favoriteProduct.product_id}">
							<input type="submit" value="삭제"/>
						</form>
						
					</div>
			</c:forEach>			
		</div>
	</div>

</body>
</html>