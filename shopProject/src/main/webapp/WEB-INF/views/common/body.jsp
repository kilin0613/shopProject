<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<style>
.body_top {
	width: 950px;
	height: auto;
	margin-left: 13%;
	border-left: thin solid #000000;
}

.body_top .product {
	width: 200px;
	height: 250px;
	border: thin solid #000000;
	margin: 40px;
	display: inline-block;
	text-align: center;
	font-size: 8pt;
	margin-left: 3%;
}

.body_top .product .imageDiv {
	width: 200px;
	height: 200px;
	border: thin solid #000000;
	display: inline-block;
}

img {
	max-width: 190px;
	max-height: 190px;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="body_top">
		<div style="margin-left:15%;">
			<c:forEach var="product" items="${productDto}">
			
				<div class="product">
					<div class="imageDiv">
						<a href="product_detail/?product_id=${product.product_id}">
						<img src="data:image:png;base64,${product.blobToBase64}"/> </a>
					</div>
					상품명 : ${product.name}<br> 가격 :
					<fmt:formatNumber value="${product.price}" pattern="###,###,###" />
					\
				</div>
			</c:forEach>
		</div>
	</div>

</body>
</html>