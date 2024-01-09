<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JSTL을 사용하기 위한 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-beta4/html2canvas.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script type="text/javascript" src="/resources/js/biometric/test.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>온도</h1>
<%-- 	<!-- 컨트롤에 저장한 temple을 items 으로 표현 
		var="temple"에 저장 후 뿌리기? -->
	<c:forEach items="${temple}" var="temple" begin="0" end="0" >
	<!-- temple 인덱스 0부터 0까지 반복문 li에 출력-->
	<ul id="templelist">
	<li>${temple.temp}</li>
	</ul>
	</c:forEach> --%>
	
	<canvas id="line-chart" width="400" height="400"></canvas>
	

</body>
</html>