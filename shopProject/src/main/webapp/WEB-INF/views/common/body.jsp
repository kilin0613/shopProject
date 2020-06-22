<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<style>
#body_style {
	padding: 50px;
	width: 1050px;
	min-height: 800px;
	height: auto;
	display: inline-block;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	

	<div id="body_style">
		<div style="width: 950px; height: auto; margin-left: 15%;">
			<c:forEach var="productVo" items="${productVo}">
				<div
					style="width: 200px; height: 250px; border: thin solid #000000; margin: 40px; display: inline-block; text-align: center; font-size: 8pt;">
					<div
						style="width: 200px; height: 200px; border: thin solid #000000; display: inline-block;">
						<a href="product_detail/?product_id=${productVo.product_id}"><img
							src="data:image:png;base64,${productVo.blobToBase64}"
							style="max-width: 190px; max-height: 190px;" /> </a>
					</div>
					상품명 : ${productVo.name}<br> 가격 :
					<fmt:formatNumber value="${productVo.price}" pattern="###,###,###" />\
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>