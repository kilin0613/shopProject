<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul {
	list-style: none;
	font-size: 15pt;
}
</style>
<script type="text/javascript">
	function checkValue() {
		var quantity = document.getElementById('quantity').value;
		var  size_option= document.getElementById('size_option').value;
		if(quantity<=0||!size_option){
			alert("수량과 사이즈를 확인해주세요");
			false;
		}
		
	};
	
	
	
	function btnPlus() {
		var count = document.getElementById('quantity').value;
		count++;
		document.getElementById('quantity').value=count;
		var total = ${productVo.price} * count;
		total = total.toLocaleString();
		document.getElementById('total_price').value = total;
		
	};
	function btnMinus() {
		var count = document.getElementById('quantity').value;
		if(count>0){
			count--;
			document.getElementById('quantity').value=count;
			var total = ${productVo.price} * count;
			total = total.toLocaleString();
			document.getElementById('total_price').value = total;
		
		}
	};
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@include file="../common/top.jsp"%>
	<%@include file="../common/side.jsp"%>

	<div style="width: 1100px; height: 1000px; margin-left: 15%;">
		<div style="margin-top: 30px; width: 1150px; height: 600px;">
			<div
				style="float: left; width: 600px; height: 600px; border: thin solid #000000; display: inline-block; text-align: center; font-size: 8pt;">

				<img src="data:image:png;base64,${productVo.blobToBase64}"
					style="max-width: 550px; max-height: 600px;" />

			</div>
			<div
				style="display: inline-block; width: 450px; height: 600px; border: thin solid #000000;">
				<h4 style="font-size: 18pt;">&nbsp;Product_Info(상품정보)</h4>
				<form method="post">
				<ul>
					<li><p>상품명 | ${productVo.name}</p></li>
					<li><p>
							가&nbsp;&nbsp;&nbsp;격 |
							<fmt:formatNumber value="${productVo.price}"
								pattern="###,###,###" />
							\
						</p></li>
					<li><p>
							S&nbsp;I&nbsp;Z&nbsp;E | <select id="size_option">
								<option value="">선택</option>
								<option value="M">M</option>
								<option value="S">S</option>
								<option value="L">L</option>
								<option value="XL">XL</option>
							</select>
						</p></li>
					<li><p>
							수&nbsp;&nbsp;&nbsp;량 |
							<button type="button" onclick="btnMinus();">-</button>
							&nbsp; <input type="text" readonly="readonly" value="0"
								id="quantity" style="width: 20px;" />&nbsp;
							<button type="button" onclick="btnPlus();">+</button>
						</p></li>
				</ul>
				<ul>
					<li><p>
							합계금액 | <input type="text" id="total_price" readonly="readonly"
								size="5" value="0" style="border: none; font-size: 12pt;">\
						</p></li>
					<li><p>
							<input type="submit" formaction="basket" value="장바구니">
							<input type="submit" formaction="favorites" value="즐겨찾기">
							<input type="submit" formaction="basket" value="바로구매">
						</p></li>
				</ul>
				<button type="button" onclick="checkValue()">테스트</button>
				</form>
			</div>
		</div>

	</div>

	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>