<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그린대학병원 | 상세보기</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js">
	
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<link rel="stylesheet" href="../resources/css/biometric/babydetail.css" />
<script type="text/javascript"
	src="../../../resources/js/biometric/babydetail.js"></script>

</head>
<body>
	<!-- 헤더 -->
	<div class="footer_box">
		<jsp:include page="../../../include/header.jsp"></jsp:include>
	</div>
	
	<!-- 이미지 넣기 -->
	<div class="detail_main">
	
	<div class="img_table">
			<img src="../../resources/image/
			biobaby/${babydetail.bimage}" id="detail_img" />
	</div>	
	
		<div class="detail_table">
			<table border="1" id="detail_table">
			<caption id = "dcap">${babydetail.bgender}아&nbsp;/&nbsp;${babydetail.bage}세</caption>
				<tr>
					<th class="detail_f">환자 이름</th>
					<td class="detail_s">${babydetail.bname}</td>
				</tr>
				<tr>
					<th class="detail_f">보호자 이름</th>
					<td class="detail_s">${babydetail.mname}</td>
				</tr>
				
				<tr>
					<th class="detail_f">보호자 번호</th>
					<td class="detail_s">${babydetail.mnumber}</td>
				</tr>
				<tr>
					<th class="detail_f">보호자2 이름</th>
					<td class="detail_s">${babydetail.fname}</td>
				</tr>
				<tr>
					<th class="detail_f">보호자2 번호</th>
					<td class="detail_s">${babydetail.fnumber}</td>
				</tr>
			</table>
		</div>
		<!-- 진료 내역 -->
		<!-- <table border="1" id="baby_Clinic"> -->
		<!-- <tr> -->
		<!-- <td>진료 내역:</td> -->
		<!-- </tr> -->
		<!-- </table> -->


		<!-- 실시간 온도 그래프 -->
		<div>
			<canvas id="mycanvas" width="800" height="300"></canvas>
		</div>


	</div>

	<!--푸터  -->
	<div class="foot_bb">
		<jsp:include page="../../../include/footer.jsp"></jsp:include>
	</div>
</body>
</html>