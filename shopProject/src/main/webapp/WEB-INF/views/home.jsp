<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>ShopProject</title>

<style type="text/css">

div {
	box-sizing: border-box;
}

</style>
</head>
<body>


	<jsp:include page="common/top.jsp" />
	<div style="width: 1200px; min-height: 60%; overflow: auto;">
		<jsp:include page="common/side.jsp" />
		<jsp:include page="common/body.jsp" />
		<jsp:include page="common/footer.jsp" />
	</div>

</body>
</html>
