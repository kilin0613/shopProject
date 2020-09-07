<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

	<script src="${pageContext.request.contextPath}/resources/js/addressAPI.js"></script>
	<script	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js?autoload=false"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			
	<jsp:include page="../common/top.jsp" />

	<div
		style="border: thin solid #000000; width: 1400px; height: auto; min-height: 1000px; display: inline-block;">
		<%-- <form action="order" method="post" > --%>
		<form:form modelAttribute="orderDto" method="post" action="order"> 
			<div style="margin: 30px;">
				<h4>Order / Payment (주문/결제)</h4>
			</div>
			<div
				style="margin-left: 30px; border: thin solid #000000; width: 800px; height: auto;">
				<h5 style="margin-left: 10px;">Product Info(상품정보)</h5>
								
				<c:forEach var="orderList" items="${orderList.basketDto}" varStatus="status">
				
					<div style="margin: 10px; border: thin solid #000000; width: 780px; height: 200px;">
						<div style="border: thin solid #000000; width: 200px; height: 200px; float: left;">
							<img src="data:image:png;base64,${orderList.blobToBase64}" style="max-width: 190px; 
																								max-height: 190px;" />
						</div>
						
						<div style="display: inline-block; width: 570px; height: 200px;">
							<p style="margin-left: 10px;"> ${orderList.product_name} / ${orderList.color} / ${orderList.size_name}</p>
							<p style="margin-left: 10px;">수량 | ${orderList.quantity} 개</p>
							&nbsp; 가격  | <fmt:formatNumber value="${orderList.total_price}" pattern="###,###,###"/>
							
							<!-- hidden data -->
								<input type="hidden" name = "basketDto[${status.index}].product_id" value="${orderList.product_id}">
								<input type="hidden" name = "basketDto[${status.index}].product_name" value="${orderList.product_name}">
								<input type="hidden" name = "basketDto[${status.index}].blobToBase64" value="${orderList.blobToBase64}">
								<input type="hidden" name = "basketDto[${status.index}].size_id" value="${orderList.size_id}">
								<input type="hidden" name = "basketDto[${status.index}].size_name" value="${orderList.size_name}">
								<input type="hidden" name = "basketDto[${status.index}].color_id" value="${orderList.color_id}">
								<input type="hidden" name = "basketDto[${status.index}].color" value="${orderList.color}">
								<input type="hidden" name = "basketDto[${status.index}].quantity" value="${orderList.quantity}">
								<input type="hidden" name = "basketDto[${status.index}].total_price" value="${orderList.total_price}">
							<!-- end hidden data -->
				
						</div>
					</div>
				</c:forEach>
						
			</div>
				
			<div style="margin-left: 30px; border: thin solid #000000; width: 800px; height: 130px;">
				<h5 style="margin-left: 10px;">Address(배송지 변경)</h5>
				주 소 <input type="text" name="address" id="address" size="50" value="${address}" readonly="readonly">
						<button type="button" onclick="execPostCode()">변경</button><br>
				상세주소	<input type="text" name = "address_detail" id="address_detail" size="50">
			</div>
			
			<div style="margin-left: 30px; border: thin solid #000000; width: 800px; height: 130px;">
				<h5 style="margin-left: 10px;">Payment info(결제정보)</h5>
				총 주문금액  <fmt:formatNumber value="${orderList.final_price}" pattern="###,###,###"/>원 <input type="hidden" name = "final_price" value = "${orderList.final_price}"/>
				<br>
				 결제수단 <input type="radio" name="payment_info" checked="checked" value="신용카드">신용카드
				 	  <input type="radio" name="payment_info" value="무통장입금">무통장입금
				<br>
				<button style="float: right;" formaction="order" formmethod="post">결제하기</button>
			</div>
		</form:form>
	</div>

</body>
</html>