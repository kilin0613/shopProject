<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#my_table {
	width: 400px;
	height: 50px;
	margin-left: auto;
	margin-right: auto;
}
</style>
<meta charset="UTF-8">
<title>구매완료</title>
</head>
<body>
<form>
	<table border="1" style="margin-left: auto; margin-right: auto;">
		<tr>
			<td>
				<table>
					<tr>
						<td align="center" valign="top">
							<table>
								<tr>
									<td width="80">
										<font size="4">
											<strong>구매완료</strong>
										</font>
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td height="3" bgcolor="#000000"></td>
									<td height="3" bgcolor="#CCCCCC"></td>
								</tr>
								<tr>
									<td></td>
									<td width="700px"><font size="6" color="blue">
											감사합니다 결제가 완료되었습니다</font></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table style= "height:240px;"></table>
						</td>
					</tr>
					<!-- <tr>
						<td>
							<table style="margin-left: auto; margin-right: auto; width :600px;" border="1">
								<tr>
									<td align="center">결제가격</td>
									<td align="center">데이터베이스에서 가저온 가격</td>

								</tr>
								<tr>
									<td align="center">결제수단</td>
									<td align="center">데이터에서 가져온 현금or카드</td>
								</tr>

							</table>
						</td>
					</tr> -->
					<tr>
						<td>
							<table id="my_table">
								<tr>
									<td>&nbsp;</td>
									<td colspan="2" align="center" valign="middle">
										<input type="submit"style="width: 150; height: 40; font-size: 14px; font-weight: bold;"
										 formaction="${pageContext.request.contextPath}/basket" formmethod="get" value="장바구니"/>
									</td>
									<td>&nbsp;</td>
									<td colspan="2" align="center" valign="middle">
										<input type="submit" style="width: 150; height: 40; font-size: 14px; font-weight: bold;"
										 formaction="${pageContext.request.contextPath}/" formmethod="get" value="홈으로"/>
									</td>
								</tr>

							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>