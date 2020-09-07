<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
function checkInfo(){
	var identity_number = document.getElementById("identity_number");
	var password = document.getElementById("password");
	if (password.value == "" || password == null||password.value != ${loginMember.password}) {
		alert("비밀번호를 확인해주세요");
		return false;
	}
	if (identity_number.value == "" || identity_number == null ||identity_number.value != ${loginMember.identity_number}) {
		alert("주민등록번호를 확인해주세요");
		return false;
	}
	alert("탈퇴 되었습니다");
}
</script>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<table border="1" style="margin-left: auto; margin-right: auto;">
			<tr>
				<td>
					<table>
						<tr>
							<td align="center" valign="top">
						<tr>
							<td>
								<table border="0">
									<tr>
										<td width="80"><font size="4"><strong>탈퇴안내</strong></font></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td height="3" bgcolor="#000000"></td>
										<td height="3" bgcolor="#CCCCCC"></td>
									</tr>
									<tr>
										<td colspan="2">회원탈퇴 신청에 앞서 아래의 사항을 <font
											class="highlight">반드시 확인</font>하시기 바랍니다.
										</td>
									</tr>
								</table>



								<table>
									<tr>
										<td>
											<ol>
												<li>동의 시 개인의 모든 재산은 삭제됩니다.</li>
												<li>이메일 내용, 블로그, 카페, 개인홈페이지 등 기타 아이디와 연계된 모든 사적인 영역의
													정보와 게시물 삭제 <br>회원탈퇴 후, 해당 서비스를 더이상 이용할 수 없으며, 모든 사적인
													정보는 삭제됩니다.
												</li>
												<li>해당 웹사이트와 연계된 제휴 패밀리 사이트 등의 일괄 탈퇴 <br>회원가입시 가입에
													동의했던, 제휴사이트에서 모두 탈퇴됩니다.
												</li>
												<li>환불 수수료 부과, 소액 잔액의 미환급 <br>탈퇴 정책에 의해 환불에 따른 수수료
													지급 및 소액 잔액 미환급 등의 불이익이 있을 수 있습니다.
												</li>
												<li>일정기간 동안 재가입 불가 및 동일 아이디 사용 가능 여부 <br>회원탈퇴를
													신청하시면 해당아이디는 즉시 탈퇴 처리되며, 이후 6개월동안 재가입이 불가능합니다.
												</li>
												<li>회원탈퇴 이후에도 개인정보 보유하는 경우, 그 근거와 사유 및 기간에 관한 사항 <br>회원탈퇴를
													하더라도 특정한 사유가 있을 시 일정기간동안 개인정보를 보관할 수 있습니다.
												</li>
												<li>기타 해당 웹사이트의 정책, 약관 등에서 정하고 있는 정보 삭제</li>

											</ol>
										</td>
									</tr>
								</table>
							</td>
						</tr>

						<table>
							<tr>
								<td align="center" valign="top">
									<table>
										<tr>
											<td>
												<table>
													<tr>
														<td class="title"><font size="2">패스워드 인증</font></td>
													</tr>
													<tr>
														<td height="3" bgcolor="#DDDDDD"></td>
													</tr>
													<tr>
														<td>타인에 의한 회원탈퇴를 방지하기위해 추가 인증을 수행합니다.</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td align="center">
												<table border="0" style= "width:80%;">
													<tr>
														<td width="80"></td>
														<td></td>
													</tr>
													<tr>
														<td><strong>아이디</strong></td>
														<td><input type="text" id="uid" name="id"
															style="width: 100%;" disabled="disabled"
															value="${loginMember.id}"> <!--인푿에 아이디값 넣기 value="<%//=id%>"  --></td>
													</tr>
													<tr>
														<td><strong>패스워드</strong></td>
														<td><input type="password" id="password"
															style="width: 100%;"></input></td>
													</tr>
													<tr>
														<td><strong>주민등록번호</strong></td>
														<td><input type="password" id="identity_number"
															style="width: 100%;"></input></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<!--  
						<tr height="60">
							<td colspan="2" align="center" valign="middle"><input
								type="submit" name="submit" value="확인"
								style="width: 150; height: 40; font-size: 14px; font-weight: bold;" /></td>
						</tr>-->
						</table>
						<tr>

							<td>
								<table id="mi_table">

									<tr>
										<td>&nbsp;</td>
										<td colspan="2" align="center" valign="middle"><input
											type="submit" value="탈퇴하기" onclick="return checkInfo();"
											style="width: 150; height: 40; font-size: 14px; font-weight: bold;" />
										</td>
										<td>&nbsp;</td>
										<td colspan="2" align="center" valign="middle"><button
											type="submit" formaction="${pageContext.request.contextPath}/" formmethod="get"
											style="width: 150; height: 40; font-size: 14px; font-weight: bold;" >
											취소
											</button>
											
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