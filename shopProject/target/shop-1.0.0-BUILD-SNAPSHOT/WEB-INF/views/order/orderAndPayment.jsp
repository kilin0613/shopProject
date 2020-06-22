<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<jsp:include page ="../common/top.jsp"/>



<div style="border: thin solid #000000; width:1400px; height: auto; min-height: 1000px; display: inline-block;">
	
	<div style=" margin:30px;">
		<h4>Order / Payment (주문/결제)</h4>
	</div>
	<div style="margin-left:30px; border: thin solid #000000; width:800px; height: 300px;">
			<h5 style="margin-left:10px;">Product Info(상품정보)</h5>
			<div style="margin:10px;border: thin solid #000000; width:780px; height: 200px;">
				<div style=" border: thin solid #000000; width:200px;height: 200px; float: left;" >
					상품이미지
				</div>
				<div style="display: inline-block;  width:570px;height: 200px;">
					<p style = "margin-left: 10px;">상품이름 | 색상 | 사이즈</p>
					<p style = "margin-left: 10px;">수량 | </p>
					<p style = "margin-left: 10px;">금액 | </p>				
				</div>
			</div>
	</div>
	
	<div style="margin-left:30px; border: thin solid #000000; width:800px; height: 130px;">
		<h5 style="margin-left:10px;">Payment info(결제정보)</h5>
		총 주문금액 | 원
		<br>결제수단 | <input type="radio" name="payment" checked="checked">신용카드
				  <input type="radio" name="payment">무통장입금
		<br><button style="float: right;">주문하기</button>
	</div>
</div>


</body>
</html>