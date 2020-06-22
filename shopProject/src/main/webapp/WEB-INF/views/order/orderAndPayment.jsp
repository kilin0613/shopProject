<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<form action="order" method="post" >
			<div style="margin: 30px;">
				<h4>Order / Payment (주문/결제)</h4>
			</div>
			<div
				style="margin-left: 30px; border: thin solid #000000; width: 800px; height: auto;">
				<h5 style="margin-left: 10px;">Product Info(상품정보)</h5>
				<c:forEach var="orderList" items="${orderList}" >
					<div
						style="margin: 10px; border: thin solid #000000; width: 780px; height: 200px;">
				
						<div 
							style="border: thin solid #000000; width: 200px; height: 200px; float: left;">
							<img src="data:image:png;base64,${orderList.p_blob}"
							style="max-width: 190px; max-height: 190px;" />
							</div>
						<div style="display: inline-block; width: 570px; height: 200px;">
							<p style="margin-left: 10px;">${orderList.name} | 색상 | ${orderList.size_type}</p>
							<p style="margin-left: 10px;">${orderList.quantity} |</p>
							<p style="margin-left: 10px;">${orderList.price} |</p>
							
						
							<input type="hidden" name = "product_id" value="${orderList.product_id}">
							<input type="hidden" name = "name" value="${orderList.name}">
							<input type="hidden" name = size_type value="${orderList.size_type}">
							<input type="hidden" name = "quantity" value="${orderList.quantity}">
							<input type="hidden" name = "price" value="${orderList.price}">
						</div>
			
					</div>
				</c:forEach>			
			</div>
			
			<div
				style="margin-left: 30px; border: thin solid #000000; width: 800px; height: 130px;">
				<h5 style="margin-left: 10px;">Address(배송지 변경)</h5>
				주소지 변경 <input type="text" name="address" id="address" size="50" value="${address}" readonly="readonly">
						<button type="button" onclick="execPostCode()">찾기</button><br>
				상세주소	<input type="text" name = "address_detail" id="address_detail" size="50">
						
			</div>
			
			
			<div
				style="margin-left: 30px; border: thin solid #000000; width: 800px; height: 130px;">
				<h5 style="margin-left: 10px;">Payment info(결제정보)</h5>
				총 주문금액 |
				<c:set var = "total" value = "0" />
				<c:forEach var="orderList" items="${orderList}" >
					<c:set var = "total" value = "${total + orderList.price }" />
						
				</c:forEach>
				<c:out value="${total}"></c:out>
				 원 <br>결제수단 | <input type="radio" name="payment"
					checked="checked" value="신용카드">신용카드 <input type="radio" name="payment" value="무통장입금">무통장입금

				<br>
				<button style="float: right;" formaction="order" formmethod="post">주문하기</button>
			</div>
		</form>
	</div>


</body>
</html>