<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- css 연결 -->
<link rel="stylesheet" href="/../../resources/css/biometric/biometric.css" />
<title>그린대학교병원 | 소아과병동</title>
</head>
<body>
	<!-- 헤더 -->
			<jsp:include page="../include/header.jsp"></jsp:include>
		<div>
		<h1>그린대학교병원 소아과병동(3F)</h1>
		
		<!--  301호 or 실내온도 div -->
		<div class="room">
		<label><a href="r301">301호</a></label><br>
		<label>실내온도: <input type="text" value="24.5℃" readonly ></label>
		</div>
		
		<!--  302호 or 실내온도 div -->
		<div>
		<label class="room"><a href="r302">302호</a></label><br>
		<label>실내온도: <input type="text" value="26.5℃" readonly ></label>
		</div>	
	
		<!--  303호 or 실내온도 div -->
		<div>
		<label class="room"><a href="r303">303호</a></label><br>
		<label>실내온도: <input type="text" value="25℃" readonly ></label>
		</div>
		
		
		</div>
		
</body>
</html>