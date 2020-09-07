<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<jsp:include page="../../common/top.jsp" />


	<div
		style="border: thin solid #000000; width: 1400px; height: auto; min-height: 1000px; display: inline-block;">

		<div style="margin: 30px;">
			<h2>장바구니</h2>
		</div>
		<div
			style="margin-left: 30px; border: thin solid #000000; width: 800px; height: auto;">

		<form action="orderAndPayment" method="post">
			<h5 style="margin-left: 10px;">Product Info(상품정보)</h5>
			<c:forEach var="basketVo" items="${basketVo}">
				<div
					style="margin: 10px; border: thin solid #000000; width: 780px; height: 200px;">
			
					<div
						style="border: thin solid #000000; width: 200px; height: 200px; float: left;">
						<img src="data:image:png;base64,${basketVo.p_blob}"
							style="max-width: 190px; max-height: 190px;" />
						</div>
					<div style="display: inline-block; width: 570px; height: 200px;">
						<p style="margin-left: 10px;">상품이름${basketVo.name} |
							색상${basketVo.color} | 사이즈${basketVo.size_type}</p>
						<p style="margin-left: 10px;">수량 |${basketVo.quantity}</p>
						<p style="margin-left: 10px;">금액 ${basketVo.price}|</p>
					</div>
				</div>
				<input type="hidden" name = "product_id" value="${basketVo.product_id}">
         <input type="submit" formaction="${pageContext.request.contextPath}/deleteBasket" value="delete" formmethod="post" >
			</c:forEach>
				<button style="float: right;">주문하기</button>
			</form>

		</div>



	</div>


</body>
</html>