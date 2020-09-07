<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul {
	list-style: none;
	font-size: 15pt;
}

.product_top {
	display: inline-block;
	width: 910px;
	min-height: auto;
	margin-top: 30px;
	margin-left: 15%;
}

.body_top {
	width: 950px;
	height: auto;
	margin-left: 13%;
	border-left: thin solid #000000;
}
</style>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/basketAndOrderValueCheck.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/checkProductFavorites.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/changeProductFavorites.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@include file="../common/top.jsp"%>
	<%@include file="../common/side.jsp"%>



	<div class="body_top">
		<div class="product_top">
			<div style="width: 910px; height: 500px;">
				<div style="float: left; width: 500px; height: 400px; border: thin solid #000000;
							 display: inline-block; text-align: center; font-size: 8pt;">
					<img src="data:image:png;base64,${productDto.blobToBase64}"
						style="max-width: 450px; max-height: 400px;" />

				</div>
				<div style="display: inline-block; width: 400px; height: 400px; border: thin solid #000000;">
					<br>
					<h4 style="font-size: 18pt;">&nbsp;Product_Info(상품정보)</h4>
					
					<!-- command -->
					<form:form modelAttribute="basketDto" method="post">
						<ul>
							<li><p>상품명 | ${productDto.product_name}</p></li>
							<li><p>
									가&nbsp;&nbsp;&nbsp;격 |
									<input type="hidden" value="${productDto.price}" id="product_price">
									<fmt:formatNumber value="${productDto.price}" pattern="###,###,###" />\
							</p></li>
							<li><p>
									S&nbsp;I&nbsp;Z&nbsp;E | 
									<form:select path="size_id">
										<form:option value="">선택</form:option>
											<c:forEach var="sizeList" items="${sizeList}">
												<form:option value="${sizeList.size_id}">${sizeList.size_name}</form:option>
											</c:forEach>
									</form:select>
								</p>
							</li>
							<li><p>
									색&nbsp;&nbsp;&nbsp;상 |
									 <form:select path="color_id">
										<form:option value="">선택</form:option>
										<c:forEach var="colorList" items="${colorList}">
											<form:option value="${colorList.color_id}" label="${colorList.color}"/>							
										</c:forEach>
									</form:select>
									
								</p>
							</li>
							
							<li><p>
									수&nbsp;&nbsp;&nbsp;량 |
									<form:button type="button" id="btnMinus">-</form:button>&nbsp; 
									<form:input path = "quantity" readonly="true"
										id="quantity" style="width: 20px;"/>&nbsp;
									<button type="button" id="btnPlus">+</button>
							</p></li>
							
						</ul>
						<ul>
							<li><p>
									합계금액 |				 
									<input type="text" id="total_price" size="5" value="0" 
										style="border: none; font-size: 12pt;" disabled="disabled"/>
							</p></li>
							<li><p>
									<Button id="btnFavorites" onclick="return false">즐겨찾기 추가</Button>
									<%-- <button id="btnOrder" formaction="${pageContext.request.contextPath}/addBasket"
													formmethod="post" onclick="return false">장바구니</button> --%>
									<input type="submit" formaction="${pageContext.request.contextPath}/addBasket"
										value="장바구니" formmethod="post" id="btnBasket"/>
							
									<input type="submit"formaction="${pageContext.request.contextPath}/orderAndPayment"
										value="바로구매" formmethod="post" id="btnOrder" />
							</p></li>

						</ul>
						<input type="hidden" name = "product_id" id = "product_id" value="${productDto.product_id}"/>
						<input type="hidden" name = "blobToBase64" value="${productDto.blobToBase64}"/>
						<input type="hidden" name = "product_name" value="${productDto.product_name}"/>
						<input type="hidden" name = "total_price" value="${productDto.price}"/>
							
							
					</form:form>
					
				</div>
			</div>
 
			<!--게시판-->
		<!--	<h4>Board(후기게시판)</h4>
			<div style="width: 95%;">
				<c:if test="${loginMember==null}">
					<p>
						소감을 남기시려면 <a href="${pageContext.request.contextPath}/login">로그인</a>해주세요
					</p>
				</c:if>
				<c:if test="${loginMember!=null}">
					<section class="boardform" style="padding: 30px 0;">
						<form role="form" method="get">
							<input type="hidden" name="product_id" id=product_id
								value="${productVo.product_id}">

							<div class="custmer_name" style="margin: 10px 0;">
								<textarea name="b_content" id="b_content"
									style="font-size: 16px; font-family: '맑은 고딕', verdana; padding: 10px; width: 500px; height: 150px; resize: none;"></textarea>

							</div>
							<div class="input" style="margin: 10px 0;">

								<input type="submit"
									formaction="${pageContext.request.contextPath}/board"
									value="후기남기기" formmethod="get"
									style="font-size: 20px; padding: 5px 10px; margin: 10px 0; background: #fff; border: 1px solid #ccc;">

							</div>
						</form>
					</section>
				</c:if>


				<section class="boardlist" style="padding: 30px 0;">
					<ol style="padding: 0; margin: 0;">
						<c:forEach items="${BoardVo}" var="BoardVo">
							<input type="hidden" name="product_id"
								value="${BoardVo.product_id}">
							<input type="hidden" name="customer_name"
								value="${BoardVo.customer_id}">
							<input type="hidden" name="date" value="${BoardVo.b_date}">
							<li style="padding: 10px 0; border-bottom: 2px solid #eee;">
								<div class="customer">
									<span class="custmer_name"
										style="font-size: 24px; font-weight: bold;">${BoardVo.customer_id}</span>
									<span class="date"
										style="color: #999; display: inline-block; margin-left: 10px;">

										<fmt:formatDate value="${BoardVo.b_date}" pattern="yyyy-MM-dd" />
									</span>


								</div>
								<div class="b_comment" style="padding: 10px; margin: 20px 0;">${BoardVo.b_content}</div>
							</li>
						</c:forEach>
					</ol>

				</section>

			</div>  -->
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>