<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>ShopProject</title>

<style type="text/css">

	
	div { 
		box-sizing: border-box;	
	}

	#top_style{
		width:auto;
		height:20%; 
		border-bottom:thin solid gray;		
	}
	
	#body_style{
		padding:50px;
		width:1050px;
		min-height:800px;
		height:auto;
		border-left:thin solid gray;
		display: inline-block;
	}
	
	#side_style{
		/* background-color:rgba(220, 220, 220 ,0.5); */
		padding-left:3%;	
		width:150px;
		min-height:800px;
		height:auto; 
		float:left;
	}
	
	#footer_style{
		width:auto;
		text-align:center;
		height:20%; 
		border-top:thin solid gray;
	}
	
</style>
</head>
<body>

		<div id="top_style">
			<jsp:include page="common/top.jsp"/>
		</div>
		
		<div style=" width:1200px; min-height:60%; overflow: auto;">	
			<div id="side_style">
				<jsp:include page="common/side.jsp"/>
			</div>
			<div id="body_style">
					<jsp:include page="common/body.jsp"/>
			</div>
		</div>
		<div id="footer_style">
				<jsp:include page="common/footer.jsp"/>
		</div>
		
</body>
</html>
