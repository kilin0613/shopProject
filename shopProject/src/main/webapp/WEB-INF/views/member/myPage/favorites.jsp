<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../../common/top.jsp"></jsp:include>

	<div
		style="border: thin solid #000000; height: auto; min-height: 1000px; display: inline-block;">
		<div style="width: 1200px; height: 1000px;">
			<div
				style="width: 310px; height: 300px; border: thin solid #000000; margin: 40px; display: inline-block; text-align: center;">
				
				<div style="width: 310px; height: 200px; border: thin solid #000000; display: inline-block;" >
				이미지
				</div>
				상품명 : testProduct<br>
				가격    : testPrice
				<br><form  style="text-align: end; margin-top:32px;">
					<input type="submit" value="삭제"/>
				</form>
			</div>
			<div
				style="width: 310px; height: 300px; border: thin solid #000000; margin: 40px; display: inline-block; text-align: center;">
				
				<div style="width: 310px; height: 200px; border: thin solid #000000; display: inline-block;" >
				이미지
				</div>
				상품명 : testProduct<br>
				가격    : testPrice<br>
				<form  style="text-align: end; margin-top:32px;">
					<input type="submit" value="삭제"/>
				</form>
			</div>
			<div
				style="width: 310px; height: 300px; border: thin solid #000000; margin: 40px; display: inline-block; text-align: center;">
				
				<div style="width: 310px; height: 200px; border: thin solid #000000; display: inline-block;" >
				이미지
				</div>
				상품명 : testProduct<br>
				가격    : testPrice
				<br><form  style="text-align: end; margin-top:32px;">
					<input type="submit" value="삭제"/>
				</form>
			</div>

			
		</div>
	</div>

</body>
</html>