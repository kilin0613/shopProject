<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<jsp:include page="../../common/top.jsp" />


	<div style="border: thin solid #000000; width: 1400px; height: auto; min-height: 1000px; display: inline-block;">

		<div style="margin: 30px;">
			<h2>장바구니</h2>
		</div>
		
		<div style="margin-left: 30px; border: thin solid #000000; width: 800px; height: auto;">
		
				<form:form modelAttribute="orderDto.basketDto" action="orderAndPayment">
					
					<h5 style="margin-left: 10px;">Product Info(상품정보)</h5>
					
					<c:forEach var="basketList" items="${basketList}" varStatus="status">
					
						<div style="margin: 10px; border: thin solid #000000; width: 780px; height: 200px;">
							<div style="border: thin solid #000000; width: 200px; height: 200px; float: left;">
								<img src="data:image:png;base64,${basketList.blobToBase64}"
									style="max-width: 190px; max-height: 190px;" />
							</div>
							
							<div style="display: inline-block; width: 570px; height: 200px;">
								<p style="margin-left: 10px;">
								 	${basketList.product_name} / ${basketList.color} / ${basketList.size_name} / ${basketList.quantity}개
								 </p>
								<p style="margin-left: 10px;"><fmt:formatNumber value="${basketList.total_price}" pattern="###,###,###"/>원 </p>
							</div>
						</div>
						
						<!-- hidden data -->
							<input type="hidden" name = "basketDto[${status.index}].product_id" value="${basketList.product_id}">
							<input type="hidden" name = "basketDto[${status.index}].product_name" value="${basketList.product_name}">
							<input type="hidden" name = "basketDto[${status.index}].blobToBase64" value="${basketList.blobToBase64}">
							<input type="hidden" name = "basketDto[${status.index}].size_id" value="${basketList.size_id}">
							<input type="hidden" name = "basketDto[${status.index}].size_name" value="${basketList.size_name}">
							<input type="hidden" name = "basketDto[${status.index}].color_id" value="${basketList.color_id}">
							<input type="hidden" name = "basketDto[${status.index}].color" value="${basketList.color}">
							<input type="hidden" name = "basketDto[${status.index}].quantity" value="${basketList.quantity}">
							<input type="hidden" name = "basketDto[${status.index}].total_price" value="${basketList.total_price}">
						<!-- end hidden data -->	
		         		
		         
		     			<Button formaction="${pageContext.request.contextPath}/deleteBasket" value="${status.index}" name="deleteNum" formmethod="post">
		     				delete
		     			</Button>
		         		
						
					</c:forEach>
					
					<button style="float: right;">주문하기</button>
				</form:form>
		</div>

	</div>


</body>
</html>