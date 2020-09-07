<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" style="margin-left: auto; margin-right: auto; height: auto;">
		<tr>
			<td>
				<table>
					<tr>
						<td align="center" valign="top">
					<tr>
						<td>
							<table border="0">
								<tr>
									<td width="80"><font size="4"><strong>배송 확인</strong></font></td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td height="3" bgcolor="#000000"></td>
									<td height="3" bgcolor="#CCCCCC"></td>
								</tr>
								<tr>
								<td width="700px"></td>
								</tr>
							</table>
							</table>
							<table style="width:auto; height:auto;">
								<c:forEach var="deliveryList" items="${deliveryList}">
									<tr>	
										<td rowspan="2">
											<img src="data:image:png;base64,${deliveryList.blobToBase64}"
											style="max-width: 100px; max-height: 100px;"/>			
										</td>
										<td>
											${deliveryList.product_name}
										
											${deliveryList.color}
										
											${deliveryList.size_name}
									
											${deliveryList.quantity}개
											<fmt:formatNumber value = "${deliveryList.total_price}" pattern="###,###,###"/>원
										</td>
										</tr>
										<tr>
										<td>
											배송지 ${deliveryList.address}
									
											배송상태 [${deliveryList.status}]

											${deliveryList.payment_info}
										</td>
									</tr>
								</c:forEach>
								<tr>
									<td valign="bottom">
									<form>
											<input type="submit" style="width: 150; height: 40; font-size: 14px; font-weight: bold;"
										 formaction="${pageContext.request.contextPath}/" formmethod="get" value="홈으로"/>
									</form>
									</td>
								</tr>
							</table>
							
						</td>
					
					<tr>
					<table id="mi_table">
								

							</table>
					</tr>

				</table>
</body>
</html>